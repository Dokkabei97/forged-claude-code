---
name: legal-checklist
description: |
  Stage-specific legal checklists for startups covering incorporation, shareholder
  agreements, stock options, privacy compliance, and regulatory requirements.
  Generates actionable checklists with priority and professional review recommendations.
metadata:
  version: 1.0.0
  category: operations
  domain: legal-compliance
triggers:
  - "legal checklist"
  - "법인 설립"
  - "법률 체크"
  - "startup legal"
  - "compliance check"
---

# Legal Checklist - Startup Legal Requirements by Stage

## Overview

Provides stage-appropriate legal checklists for startups. Not legal advice — a structured guide to ensure nothing critical is missed, with clear markers for when to engage legal professionals.

> **Disclaimer**: This is a checklist tool, not legal advice. Always consult qualified legal professionals for your specific situation.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Company formation | Pre-incorporation checklist |
| First hire / co-founder agreement | Team legal checklist |
| Product launch | Privacy & terms checklist |
| Fundraising | Investment legal checklist |
| "legal checklist" keyword | Interactive stage selection |

---

## 2. Stage-Based Checklists

### Stage 0: Pre-Incorporation (아이디어 단계)

```markdown
## Pre-Incorporation Checklist

### Founder Agreement ⚠️ CRITICAL
- [ ] Co-founder roles and responsibilities defined
- [ ] Equity split agreed and documented
- [ ] Vesting schedule agreed (standard: 4-year, 1-year cliff)
- [ ] IP assignment clause included
- [ ] Decision-making process defined
- [ ] Exit/departure terms defined
→ **Professional Review: REQUIRED** (창업 변호사 상담 필수)

### IP Protection
- [ ] Invention assignment agreements signed by all founders
- [ ] Prior IP from employers/universities clarified
- [ ] Trade name / brand name availability checked
- [ ] Domain name secured
- [ ] Key social media handles reserved

### Initial Structure Decision
- [ ] Legal entity type decided (주식회사 / LLC / C-Corp)
  - Korea: 주식회사 (most common for VC funding)
  - US: Delaware C-Corp (standard for US VC)
  - Consider: Tax implications, investor preferences, market
- [ ] Jurisdiction decided
```

### Stage 1: Incorporation (설립 단계)

```markdown
## Incorporation Checklist

### Company Formation
- [ ] Articles of incorporation filed (정관 작성/등기)
- [ ] Business registration completed (사업자등록)
- [ ] Corporate bank account opened (법인 계좌 개설)
- [ ] Initial capital deposited (자본금 납입)
- [ ] Shareholder registry established (주주명부)
- [ ] Corporate seal created (if required) (법인 인감)

### Founder Documents
- [ ] Shareholder agreement (SHA) signed (주주간 계약서)
- [ ] Stock vesting agreements executed (스톡 베스팅 계약)
- [ ] IP assignment agreements signed (지식재산 양도 계약)
- [ ] Non-compete/NDA agreements (경업금지/비밀유지)
→ **Professional Review: REQUIRED**

### Tax & Accounting
- [ ] Tax ID / EIN obtained (사업자번호)
- [ ] Accounting system set up (회계 시스템)
- [ ] Tax filing calendar established (세금 신고 일정)
- [ ] 부가세 / 법인세 / 원천세 신고 일정 확인

### Insurance
- [ ] Directors & Officers (D&O) insurance (임원배상책임보험) — consider after seed
- [ ] General liability insurance — consider based on product type
```

### Stage 2: Product Launch (서비스 출시)

```markdown
## Product Launch Legal Checklist

### Privacy & Data Protection ⚠️ CRITICAL
- [ ] Privacy policy drafted and published (개인정보처리방침)
- [ ] Terms of service drafted and published (이용약관)
- [ ] Cookie consent mechanism implemented (EU users)
- [ ] GDPR compliance assessed (if serving EU users)
- [ ] 개인정보보호법 준수 확인 (한국 사용자)
- [ ] Data processing agreements with vendors (DPA)
- [ ] Data retention/deletion policy defined
- [ ] User data export capability (GDPR right to portability)
→ **Professional Review: RECOMMENDED** (개인정보보호 전문가)

### Product-Specific Compliance
- [ ] Industry-specific regulations identified
  - Fintech: 전자금융업 등록, 금융규제 확인
  - Healthcare: 의료법, 개인정보 특별법
  - EdTech: 교육 관련 규제
  - E-commerce: 전자상거래법, 통신판매업 신고
- [ ] Age verification requirements checked (if applicable)
- [ ] Accessibility requirements reviewed (if applicable)

### Intellectual Property
- [ ] Trademark application filed (상표 출원)
- [ ] Open source license compliance verified
- [ ] Content licensing agreements in place (if using third-party content)
```

### Stage 3: Fundraising (투자 유치)

```markdown
## Fundraising Legal Checklist

### Pre-Fundraising Preparation
- [ ] Cap table clean and up-to-date (지분구조표)
- [ ] All founder agreements executed and filed
- [ ] IP assignments completed
- [ ] No outstanding legal disputes
- [ ] Corporate minutes up-to-date (이사회/주총 의사록)
- [ ] Financial statements audited/reviewed (재무제표)

### Investment Documents
- [ ] Term sheet reviewed (텀시트 검토)
- [ ] Investment agreement drafted (투자계약서)
- [ ] Stock option pool established (스톡옵션 풀)
  - Standard: 10-15% of fully diluted shares
- [ ] Anti-dilution provisions understood
- [ ] Board seat/observer rights negotiated
- [ ] Information rights defined
- [ ] Pro-rata rights clarified
→ **Professional Review: REQUIRED** (스타트업 전문 변호사 필수)

### Due Diligence Readiness (데이터룸)
- [ ] Corporate documents organized
- [ ] Financial records accessible
- [ ] Customer contracts available
- [ ] Employee/contractor agreements filed
- [ ] IP documentation complete
- [ ] Regulatory compliance documentation
```

---

## 3. Quick Reference: Common Legal Mistakes

| Mistake | Consequence | Prevention |
|---------|-------------|------------|
| No founder agreement | Equity disputes, company death | Sign SHA before anything else |
| No vesting | Departing founder keeps all equity | 4-year vesting with 1-year cliff |
| No IP assignment | Company doesn't own its product | All contributors sign IP assignment |
| Missing privacy policy | Regulatory fines, user trust loss | Publish before launch |
| Handshake deals with vendors | No legal recourse | Written contracts always |
| Mixing personal/business finances | Tax & liability issues | Separate bank accounts |

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate stage-appropriate checklist document |
| **Read** | Review existing legal documents for completeness |
| **Glob** | Find existing legal documents in project |

---

## 5. Boundaries

**Will:**
- Generate comprehensive legal checklists by startup stage
- Flag items requiring professional legal review
- Provide Korean and US legal context where relevant
- Highlight common legal mistakes and prevention

**Will Not:**
- Provide legal advice (always recommend professional review)
- Draft legal documents (contracts, terms, policies)
- Guarantee regulatory compliance
- Replace consultation with qualified attorneys
