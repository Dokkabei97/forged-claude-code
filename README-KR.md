# forged-claude-code ⚒️

**스타트업 창업과 경영을 위한 Claude Code 플러그인 모음집.**

[hardened-claude-code](https://github.com/Dokkabei97/hardened-claude-code)가 엔터프라이즈 대규모 시스템을 지키는 **방패**라면, **forged-claude-code**는 0에서 1을 만들어내는 **검**입니다.

---

## 이게 뭔가요?

[Claude Code](https://docs.anthropic.com/en/docs/claude-code)에서 사용할 수 있는 **에이전트, 스킬, 커맨드, 훅** 모음입니다. 법인 설립부터 투자 유치까지, MVP 개발부터 그로스까지, 스타트업 전 생명주기를 커버합니다.

```
4개 C-level 도메인에 걸친 53개 플러그인
├── 9개 Agent    — 자율적 분석/검토
├── 29개 Skill   — 지식/템플릿 기반
├── 14개 Command — 액션 중심 워크플로우
└── 1개 Hook     — 자동 안전장치
```

## 빠른 시작

```bash
# 저장소 클론
git clone https://github.com/Dokkabei97/forged-claude-code.git

# 프로젝트의 .claude 디렉토리에 플러그인 복사
cp -r forged-claude-code/agents/ your-project/.claude/agents/
cp -r forged-claude-code/skills/ your-project/.claude/skills/
cp -r forged-claude-code/commands/ your-project/.claude/commands/

# 또는 심볼릭 링크로 연결 (업데이트 편의)
ln -s $(pwd)/forged-claude-code/agents/ your-project/.claude/agents
```

## 플러그인 맵

### CTO — 기술 & 인프라 (14개)

| 플러그인 | 유형 | 단계 | 설명 |
|----------|------|------|------|
| `tech-stack-advisor` | Agent | 1 | 요구사항, 팀 역량, 예산 기반 최적 기술 스택 추천 |
| `security-audit` | Agent | 2 | OWASP Top 10 취약점 스캔 및 의존성 CVE 탐지 |
| `cost-optimizer` | Agent | 3 | 클라우드 인프라 비용 분석 및 right-sizing 추천 |
| `code-review-guide` | Agent | 3 | PR 코드 리뷰 (버그, 성능, 가독성, 테스트 커버리지) |
| `mvp-scaffold` | Skill | 1 | 프로젝트 스캐폴딩 (Next.js, FastAPI, Spring Boot) + 인증, DB, CI/CD |
| `deploy-pipeline` | Skill | 2 | GitHub Actions / GitLab CI 파이프라인 자동 생성 |
| `db-schema-designer` | Skill | 2 | 도메인 모델에서 ERD, 마이그레이션, 인덱스 전략 생성 |
| `test-generator` | Skill | 2 | 기존 코드 분석 후 단위/통합 테스트 자동 생성 |
| `ai-integration` | Skill | 2 | LLM API 통합 (OpenAI, Anthropic, Google) + 스트리밍, RAG |
| `infra-as-code` | Skill | 3 | AWS/GCP/Azure용 Terraform/Pulumi 템플릿 |
| `monitoring-setup` | Skill | 3 | APM, 로깅, 알림 설정 (Sentry, Datadog, CloudWatch) |
| `api-first-design` | Skill | 3 | OpenAPI/GraphQL 스키마 선설계 + 스텁 자동 생성 |
| `rapid-prototype` | Command | 2 | 기능 설명에서 동작하는 프로토타입(API+UI) 생성 |
| `tech-debt-tracker` | Command | 3 | TODO/FIXME, 복잡도, 오래된 의존성, 억제된 경고 스캔 |

### CPO — 제품 관리 (12개)

| 플러그인 | 유형 | 단계 | 설명 |
|----------|------|------|------|
| `ux-reviewer` | Agent | 2 | Nielsen 10 휴리스틱 평가 및 WCAG 접근성 검사 |
| `feedback-analyzer` | Agent | 3 | 사용자 피드백을 테마/감성/긴급도별 분류 및 인사이트 추출 |
| `prd-writer` | Skill | 1 | 가설, 지표, 스코프를 포함하는 경량 PRD 템플릿 |
| `scope-cutter` | Skill | 1 | MVP 스코핑 — 필수 기능과 nice-to-have 분리 |
| `user-interview-guide` | Skill | 2 | 탐색/검증/사용성 인터뷰 스크립트 및 분석 프레임워크 |
| `metrics-tracker` | Skill | 2 | 단계별 AARRR 해적 지표 및 North Star Metric 설정 |
| `experiment-designer` | Skill | 3 | A/B 테스트 설계 (표본 크기 계산, 결과 해석 포함) |
| `user-story-gen` | Command | 1 | INVEST 원칙 사용자 스토리 + 인수 기준 자동 생성 |
| `feature-prioritizer` | Command | 2 | RICE/ICE/MoSCoW 프레임워크 기반 우선순위 계산 |
| `roadmap-builder` | Command | 3 | Now-Next-Later 로드맵 + Mermaid Gantt 시각화 |
| `analytics-scaffold` | Command | 3 | GA4/Mixpanel/Amplitude용 타입 세이프 이벤트 트래킹 코드 |
| `release-noter` | Command | 3 | Git 기반 릴리즈 노트 (사용자/팀/투자자별 톤 조절) |

### COO — 운영 & 프로세스 (13개)

| 플러그인 | 유형 | 단계 | 설명 |
|----------|------|------|------|
| `legal-checklist` | Skill | 1 | 단계별 법률 체크리스트 (설립, 출시, 투자 유치) |
| `meeting-notes` | Skill | 1 | 스탠드업, 스프린트, 이사회, 1:1 회의록 템플릿 |
| `okr-builder` | Skill | 2 | 결과 중심 Key Results와 스코어링이 포함된 OKR 생성 |
| `sop-writer` | Skill | 2 | 체크리스트가 포함된 표준운영절차(SOP) 문서화 |
| `retrospective-guide` | Skill | 3 | 스프린트 회고 형식 (KPT, 4Ls, Sailboat) + 액션 추적 |
| `fundraising-prep` | Skill | 3 | 데이터룸, 피치덱 아웃라인, 투자자 FAQ 준비 |
| `budget-planner` | Skill | 3 | 부서별 예산 + 실적 차이 분석 + 자금 사용 계획 |
| `risk-register` | Skill | 3 | 영향도/확률 매트릭스 기반 리스크 평가 및 대응 계획 |
| `postmortem-writer` | Skill | 3 | 5 Whys와 액션 아이템이 포함된 blame-free 포스트모템 |
| `decision-log` | Command | 1 | ADR 스타일 의사결정 기록 (배경, 선택지, 근거) |
| `runway-calculator` | Command | 2 | 자금 소진 기간 계산 + 다중 시나리오 분석 |
| `privacy-policy-generator` | Command | 2 | GDPR/개인정보보호법 준수 개인정보처리방침 초안 |
| `unit-economics` | Command | 3 | LTV, CAC, LTV/CAC 비율, 페이백 기간 계산기 |

### CMO — 마케팅 & 성장 (13개)

| 플러그인 | 유형 | 단계 | 설명 |
|----------|------|------|------|
| `content-writer` | Agent | 2 | SEO 최적화된 블로그, 케이스 스터디, 화이트페이퍼 |
| `seo-optimizer` | Agent | 2 | 온페이지 SEO 감사, 키워드 전략, 콘텐츠 점수 |
| `funnel-analyzer` | Agent | 3 | AARRR 퍼널 진단 + 병목 구간 식별 |
| `brand-voice` | Skill | 1 | 브랜드 성격, 톤 가이드라인, 메시징 프레임워크 |
| `landing-page-gen` | Skill | 2 | 전환 최적화 랜딩 페이지 코드 (React + Tailwind) |
| `email-sequence` | Skill | 2 | 온보딩/너처링/윈백/업셀 이메일 드립 캠페인 설계 |
| `growth-experiment` | Skill | 3 | ICE 스코어 기반 그로스 실험 + 주간 실험 템플릿 |
| `community-builder` | Skill | 3 | Discord/Slack 커뮤니티 설계, 참여 메커니즘, 성장 플레이북 |
| `referral-program` | Skill | 3 | 레퍼럴 인센티브 설계, 바이럴 계수, 부정 방지 규칙 |
| `pitch-deck` | Skill | 3 | 투자자/파트너/영업용 피치덱 스토리라인 (슬라이드별) |
| `value-proposition` | Command | 1 | Value Proposition Canvas 및 Jobs-to-be-Done 분석 |
| `content-repurpose` | Command | 2 | 1개 콘텐츠 → 트위터 스레드, 링크드인, 뉴스레터, 숏폼 변환 |
| `social-post-gen` | Command | 2 | 플랫폼별 최적화 포스트 (Twitter/X, LinkedIn, Instagram, TikTok) |

### Hook

| 플러그인 | 이벤트 | 설명 |
|----------|--------|------|
| `secret-scanner` | PreToolUse | 하드코딩된 시크릿(API 키, 토큰, 비밀번호) 포함 커밋 차단 |

## 구현 단계

### Phase 1: Foundation (1~2주) — 11개 플러그인
> Day 1 생존 도구. 방향을 잡고, 개발을 시작하고, 법적으로 안전하게.

### Phase 2: Build & Launch (1~3개월) — 20개 플러그인
> MVP를 만들고, 출시하고, 첫 사용자를 확보하고, 프로세스를 세우기.

### Phase 3: Growth (3~6개월) — 22개 플러그인
> 인프라를 확장하고, 퍼널을 최적화하고, 투자를 유치하고, 운영을 체계화하기.

## 디렉토리 구조

```
forged-claude-code/
├── agents/              # 9개 자율 분석 에이전트
├── commands/            # 14개 액션 중심 슬래시 커맨드
├── skills/              # 29개 지식/템플릿 스킬
│   ├── cto/             #   8개 기술 & 인프라
│   ├── cpo/             #   5개 제품 관리
│   ├── coo/             #   9개 운영 & 프로세스
│   └── cmo/             #   7개 마케팅 & 성장
├── hooks/               # 1개 자동 안전장치
│   └── hooks.json
├── mcp/                 # MCP 서버 설정
├── output-styles/       # 출력 스타일 커스터마이징
├── scripts/             # 셋업 및 유틸리티 스크립트
├── README.md            # 영문 버전
└── README-KR.md         # 이 문서
```

## 비교: hardened vs forged

| | hardened-claude-code | forged-claude-code |
|---|---|---|
| **비유** | 방패 (Shield) | 검 (Sword) |
| **대상** | 엔터프라이즈 엔지니어링 팀 | 스타트업 창업자 & 운영자 |
| **초점** | 코드 품질, 아키텍처, 테스트 | 비즈니스 운영, 성장, 제품 |
| **플러그인 수** | 20개 (코드 중심) | 53개 (비즈니스 전 영역) |
| **도메인** | 엔지니어링 전용 | CTO + CPO + COO + CMO |
| **단계** | 대규모 시스템 유지보수 | 0에서 1 빌딩 |

## 기여하기

1. 저장소를 Fork합니다
2. 피처 브랜치를 생성합니다 (`git checkout -b feat/new-plugin`)
3. 기존 컨벤션을 따릅니다 (YAML frontmatter, 단계별 워크플로우, Boundaries 섹션)
4. Pull Request를 제출합니다

### 플러그인 컨벤션

- **Agent** (`agents/*.md`): `name`, `description`, `tools` frontmatter
- **Skill** (`skills/{role}/{name}/SKILL.md`): `name`, `description`, `metadata` frontmatter
- **Command** (`commands/*.md`): `name`, `description`, `category`, `complexity` frontmatter
- **Hook** (`hooks/hooks.json`): Claude Code 표준 훅 형식

## 라이선스

MIT
