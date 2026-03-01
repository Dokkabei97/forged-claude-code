#!/usr/bin/env bash
# forged-claude-code: Setup verification script
# Runs on SessionStart to verify plugin structure

set -euo pipefail

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/.." && pwd)}"

info=()
warnings=()

# Count plugins
agent_count=$(find "$PLUGIN_ROOT/agents" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
command_count=$(find "$PLUGIN_ROOT/commands" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
skill_count=$(find "$PLUGIN_ROOT/skills" -name "SKILL.md" 2>/dev/null | wc -l | tr -d ' ')
hook_count=0
if [ -f "$PLUGIN_ROOT/hooks/hooks.json" ]; then
	hook_count=1
fi

total=$((agent_count + command_count + skill_count + hook_count))

if [ "$total" -eq 0 ]; then
	warnings+=("No plugins found in $PLUGIN_ROOT")
else
	info+=("forged-claude-code: ${total} plugin(s) loaded — ${agent_count} agents, ${skill_count} skills, ${command_count} commands, ${hook_count} hooks")
fi

# Check skill directory structure
for role in cto cpo coo cmo; do
	if [ -d "$PLUGIN_ROOT/skills/$role" ]; then
		role_count=$(find "$PLUGIN_ROOT/skills/$role" -name "SKILL.md" | wc -l | tr -d ' ')
		info+=("  $role: ${role_count} skill(s)")
	fi
done

# Output warnings
for w in "${warnings[@]+"${warnings[@]}"}"; do
	[ -n "$w" ] && echo "[forged-claude-code] WARNING: $w"
done

# Output info
for i in "${info[@]+"${info[@]}"}"; do
	[ -n "$i" ] && echo "[forged-claude-code] $i"
done
