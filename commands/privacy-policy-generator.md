---
name: privacy-policy-generator
description: "Generates privacy policy and terms of service drafts compliant with GDPR and Korean privacy laws"
category: operations
complexity: intermediate
mcp-servers: []
personas: []
---

# /privacy-policy-generator - Privacy & Terms Generator

## Triggers
- When preparing for product launch and need legal documents
- When adding new data collection features
- When expanding to new markets (EU, Korea, US)

## Usage
```
/privacy-policy-generator [product name]
/privacy-policy-generator --type privacy       # Privacy policy only
/privacy-policy-generator --type terms         # Terms of service only
/privacy-policy-generator --type both          # Both documents
/privacy-policy-generator --locale kr          # Korean law focus
/privacy-policy-generator --locale eu          # GDPR focus
/privacy-policy-generator --locale us          # US/CCPA focus
```

## Behavioral Flow

### Phase 1: Data Collection Audit
Gather information about data practices:

```
1. What personal data do you collect?
   - Account: email, name, password
   - Payment: card info, billing address
   - Usage: analytics, logs, cookies
   - Third-party: social login data

2. How is data used?
   - Service delivery
   - Analytics and improvement
   - Marketing communications
   - Third-party sharing

3. Where is data stored?
   - Cloud provider and region
   - Third-party services (Stripe, analytics, etc.)

4. What is the retention period?
   - Active account data
   - Deleted account data
   - Log data
```

### Phase 2: Generate Documents

**Privacy Policy Structure:**
```markdown
# Privacy Policy — [Product Name]

**Effective Date**: [Date]
**Last Updated**: [Date]

## 1. Information We Collect
### Information You Provide
[Account info, payment info, content you create]

### Information Collected Automatically
[Device info, usage data, cookies, analytics]

### Information from Third Parties
[Social login, payment processors]

## 2. How We Use Your Information
[Service delivery, improvement, communication, legal compliance]

## 3. How We Share Your Information
[Service providers, legal requirements, business transfers]
[We do NOT sell personal information]

## 4. Data Retention
[How long we keep data and why]

## 5. Your Rights
### For Korean Users (개인정보보호법)
- 개인정보 열람, 정정, 삭제, 처리정지 요구권
- 개인정보 처리에 대한 동의 철회권

### For EU Users (GDPR)
- Right to access, rectification, erasure
- Right to data portability
- Right to object to processing
- Right to withdraw consent

## 6. Data Security
[Encryption, access controls, security measures]

## 7. Children's Privacy
[Age restrictions, parental consent if applicable]

## 8. International Data Transfers
[Cross-border data transfer mechanisms]

## 9. Cookies
[Types of cookies used, how to manage them]

## 10. Changes to This Policy
[How users will be notified of changes]

## 11. Contact Us
[Data protection officer or contact info]
```

**Terms of Service Structure:**
```markdown
# Terms of Service — [Product Name]

**Effective Date**: [Date]

## 1. Agreement to Terms
## 2. Description of Service
## 3. User Accounts
## 4. Acceptable Use
## 5. Intellectual Property
## 6. Payment Terms (if applicable)
## 7. Termination
## 8. Disclaimers
## 9. Limitation of Liability
## 10. Governing Law
## 11. Dispute Resolution
## 12. Changes to Terms
## 13. Contact Information
```

### Phase 3: Locale-Specific Additions

**Korean (개인정보처리방침):**
- 개인정보 처리 목적
- 개인정보 처리 및 보유 기간
- 개인정보 제3자 제공
- 개인정보 처리 위탁
- 개인정보 파기 절차 및 방법
- 개인정보 보호책임자

**EU (GDPR):**
- Lawful basis for processing
- Data Protection Officer details
- Supervisory authority contact
- Cross-border transfer safeguards

### Phase 4: Output
```markdown
> ⚠️ IMPORTANT: This is an AI-generated draft. Have it reviewed by a
> qualified legal professional before publishing. Laws vary by
> jurisdiction and AI cannot guarantee legal compliance.

[Generated documents]

## Checklist Before Publishing
- [ ] Legal professional has reviewed
- [ ] All [PLACEHOLDERS] are filled in
- [ ] Contact information is accurate
- [ ] Cookie consent mechanism is implemented
- [ ] Documents are accessible from website footer
- [ ] User acceptance flow is implemented (signup)
```

## Tool Coordination
- **Write**: Generate legal documents
- **Read**: Reference product documentation for data practices
- **Glob**: Find existing legal docs to update

## Boundaries

**Will:**
- Generate privacy policy and ToS drafts
- Cover GDPR, Korean privacy law, and US/CCPA basics
- Include locale-specific required sections
- Provide review checklist

**Will Not:**
- Provide legal advice (always recommend professional review)
- Guarantee legal compliance
- Replace qualified legal counsel
- Generate binding contracts (drafts only)
- Handle industry-specific regulations (HIPAA, PCI-DSS)
