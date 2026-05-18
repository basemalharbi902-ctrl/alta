# Security Policy

## Reporting

Security issues must be reported privately to the project owner. Do not open public GitHub issues for vulnerabilities, credentials, personal data exposure, branch isolation failures, or PDPL-related findings.

Report through the project owner's private email, provided when needed, or through GitHub Security Advisories on the repository.

## Response Rules

- Critical findings stop new development immediately.
- High findings must be resolved before merge unless Codex explicitly documents an approved delay.
- No production deployment is allowed while Critical or High security findings remain open.
- Any secret committed to the repository requires immediate rotation and an incident note.

## Required Checks

Every PR that touches auth, permissions, policies, migrations, student data, financial data, integrations, or AI data handling must include:

- Codex Sign-off `100/100`.
- Relevant tests.
- Activity Log and PDPL impact notes.
- Rollback notes.
