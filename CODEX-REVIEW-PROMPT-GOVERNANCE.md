# Prompt مراجعة Codex لحوكمة المشروع

انسخ النص التالي واعرضه على Codex لمراجعة إطار الحوكمة قبل بدء أي تطوير.

```text
أريد مراجعتك الفنية الصارمة لإطار حوكمة كامل قبل بدء أي تطوير في مشروع IIMS.

## السياق
- المشروع: IIMS - نظام إدارة المعهد العالي للتدريب.
- المرحلة الحالية: ما قبل التطوير. لم يبدأ أي كود.
- البنية المخططة: Laravel 11 + Filament 3 + Livewire 3 + PostgreSQL + Redis (تبدأ الأسبوع 1).
- الأدوار:
  - المبرمج المشارك: يجهز خطط الأسابيع مع Claude، ويسلمها لمالك المشروع، وينفذ بعد إذن مالك المشروع، ولا يخاطب Codex مباشرة.
  - مالك المشروع: يحدد الاتجاه، يراجع الخطط قبل عرضها عليك، الطرف الوحيد المخوّل بمخاطبتك، يأذن بالبدء والدمج.
  - Claude: مساعد تخطيط ومراجعة، لا يعتمد ولا يدمج.
  - أنت Codex: بوابة الاعتماد الفنية الصارمة. القبول الوحيد 100/100.

## المستودع
https://github.com/basemalharbi902-ctrl/alta — فرع main = develop = 1747519

## الملفات للمراجعة

راجعها كاملة، لا تكتفِ بالعناوين.

الجذر:
- README.md
- START-HERE-FOR-PROGRAMMER.md
- LICENSE.md
- SECURITY.md
- CHANGELOG.md
- .gitignore
- .env.example

الحوكمة:
- docs/00-governance/CODEX-100-PROTOCOL.md
- docs/00-governance/PROGRAMMER-WORKFLOW-AND-HANDOFF.md
- docs/00-governance/BOOTSTRAP.md
- docs/00-governance/BRANCH-PROTECTION-SETUP.md
- docs/00-governance/CODEX-ACCESS.md
- docs/00-governance/CODEX-SLA.md
- docs/00-governance/CONFLICT-RESOLUTION.md
- docs/00-governance/PENALTIES.md

المراحل:
- docs/01-phases/MASTER-PHASES-ROADMAP.md
- docs/01-phases/PHASE-1-DEFINITION-OF-DONE.md
- docs/01-phases/PHASE-2-DEFINITION-OF-DONE.md
- docs/01-phases/PHASE-3-DEFINITION-OF-DONE.md

القوالب:
- docs/templates/WEEK-PLAN-TEMPLATE.md
- docs/templates/DAILY-CODEX-REVIEW-TEMPLATE.md
- docs/templates/PR-HANDOFF-TEMPLATE.md
- docs/templates/CODEX-SIGNOFF-TEMPLATE.md
- docs/templates/CODEX-TRANSCRIPT-TEMPLATE.md
- docs/templates/CODEX-FEEDBACK-RESPONSE-TEMPLATE.md
- docs/templates/TEST-REPORT-TEMPLATE.md
- docs/templates/PHASE-CLOSURE-TEMPLATE.md
- docs/templates/CONFLICT-TEMPLATE.md
- docs/templates/INCIDENT-TEMPLATE.md

CI وسياسات:
- .github/workflows/branch-naming.yml
- .github/workflows/codex-gate.yml
- .github/workflows/required-files.yml
- .github/CODEOWNERS
- .github/pull_request_template.md

سكريبت:
- scripts/update-signoff.sh

ملف القرارات المعلقة:
- docs/pending-decisions.md

## محاور التقييم (المجموع 100)

| المحور | الوزن | المطلوب |
|---|---:|---|
| منع تجاوز Codex تقنياً | 25 | لا توجد طريقة للمبرمج لدمج PR أو لإصدار sign-off مزوّر بدون اكتشاف CI أو CODEOWNERS |
| سلامة الـ3 workflows | 20 | branch-naming, codex-gate, required-files تفشل بشكل صحيح في كل حالة خاطئة محتملة |
| اكتمال الأدوار وحدودها | 10 | مالك/مبرمج/Claude/Codex معرفون بحدود واضحة بلا تداخل |
| حماية ملفات الاعتماد | 10 | sign-off + transcript + SHA256 محمية بـCODEOWNERS وبفحص كل المعدلين |
| اكتمال القوالب | 10 | كل قالب يلزم بالحقول اللازمة وغير قابل لاجتيازه بقيم فارغة |
| Definition of Done | 10 | DoD لكل مرحلة قابل للتحقق وغير قابل للتلاعب الإداري |
| مسارات الاستثناء | 10 | hotfix, chore/governance, docs, release, develop→main معالجة في branch-naming + BRANCH-PROTECTION-SETUP |
| توثيق التشغيل | 5 | bootstrap + branch protection + SLA + conflict + penalties + access مكتمل وصالح للتنفيذ |

## القاعدة الصارمة
- 100/100 = اعتماد كامل. يسمح لي بتفعيل Branch Protection والانتقال لتجهيز خطة الأسبوع 1.
- أي درجة أقل = رفض. اذكر بالضبط الثغرات وكيفية إصلاحها.
- لا تعطِ مديحاً عاماً. أريد ملاحظات تنفيذية فقط.
- ركّز على ثغرات تسمح بتجاوز الحوكمة عملياً.

## الرد المطلوب
1. الحكم: APPROVED / REJECTED
2. الدرجة: N/100
3. الدرجات التفصيلية لكل محور
4. الثغرات المتبقية إن وجدت، بالملف والسطر، مع طريقة الإصلاح
```

## بعد رد Codex

إذا أعطى `100/100`:

1. احفظ نص رده كاملاً في `docs/signoffs/transcripts/governance-bootstrap-codex-transcript.md`.
2. استخدم قالب `docs/templates/CODEX-TRANSCRIPT-TEMPLATE.md`.
3. اجعل:
   - `Target-Branch: main`
   - `Target-Commit-SHA: <الـ40 حرفاً من git rev-parse main>`
   - `PR-Number: 0`
   - `Final-Score: 100/100`
   - `Decision: APPROVED`
4. أنشئ `docs/signoffs/governance-bootstrap-codex-signoff.md`.
5. احسب SHA256 للـtranscript وضعه في sign-off.
6. commit + push عبر branch مثل `chore/governance-codex-signoff`.
7. بعدها فعّل Branch Protection.

إذا أعطى أقل من `100/100`:

1. طبّق ملاحظاته.
2. افتح branch بصيغة `chore/governance-*`.
3. أعد العرض حتى `100/100`.
