# مشروع العطاء - نظام إدارة المعهد IIMS

هذا المجلد هو نقطة العمل الرسمية للمشروع. أي خطة أو كود أو تسليم من المبرمج المشارك يجب أن يمر عبر بروتوكول Codex 100/100 قبل البدء، أثناء التنفيذ، وقبل الدمج.

## القاعدة الحاكمة

لا يبدأ المبرمج أي أسبوع أو مرحلة، ولا يفتح Pull Request للدمج، ولا يتم الدمج إلى `develop` أو `main` إلا بعد اعتماد Codex بدرجة `100/100`.

أي نتيجة أقل من `100/100` تعني رفض التسليم وإعادة العمل على الملاحظات حتى الاعتماد الكامل.

## الوثائق التشغيلية

- [بروتوكول Codex 100/100](docs/00-governance/CODEX-100-PROTOCOL.md)
- [طريقة عمل المبرمج والاستلام](docs/00-governance/PROGRAMMER-WORKFLOW-AND-HANDOFF.md)
- [خريطة المراحل والأسابيع](docs/01-phases/MASTER-PHASES-ROADMAP.md)
- [قالب خطة الأسبوع](docs/templates/WEEK-PLAN-TEMPLATE.md)
- [قالب المراجعة اليومية](docs/templates/DAILY-CODEX-REVIEW-TEMPLATE.md)
- [قالب تسليم Pull Request](docs/templates/PR-HANDOFF-TEMPLATE.md)
- [قالب اعتماد Codex](docs/templates/CODEX-SIGNOFF-TEMPLATE.md)
- [قالب تقرير الاختبارات](docs/templates/TEST-REPORT-TEMPLATE.md)
- [قالب الرد على ملاحظات Codex](docs/templates/CODEX-FEEDBACK-RESPONSE-TEMPLATE.md)
- [قالب Transcript](docs/templates/CODEX-TRANSCRIPT-TEMPLATE.md)
- [قالب الخلافات](docs/templates/CONFLICT-TEMPLATE.md)
- [قالب الحوادث](docs/templates/INCIDENT-TEMPLATE.md)
- [قرارات العميل المعلقة](docs/pending-decisions.md)
- [إعدادات حماية الفروع](docs/00-governance/BRANCH-PROTECTION-SETUP.md)
- [وصول Codex وحفظ transcripts](docs/00-governance/CODEX-ACCESS.md)
- [Bootstrap المستودع لأول مرة](docs/00-governance/BOOTSTRAP.md)

## سكريبتات مساعدة

- `scripts/update-signoff.sh`: يحدث رقم PR وTarget commit وSHA256 في ملفات Codex transcript/sign-off.

## مصادر المراحل الأصلية

المراحل التفصيلية موجودة في:

`D:\alatah\رواد-العطاء\09-عقد-المبرمج-المشارك\phases-detailed`

الملفات المرجعية:

- `Phase-1-Foundation-and-Exams.html`
- `Phase-2-Finance-and-Workflow.html`
- `Phase-3-Academic-and-Integrations.html`

## مسار العمل المختصر

1. يجهز مالك المشروع خطة الأسبوع مع Claude.
2. توضع الخطة في `docs/phase-N/week-N-plan.md`.
3. مالك المشروع وحده يعرض الخطة على Codex للمراجعة الصارمة.
4. إن لم تحصل الخطة على `100/100` تعدل وتعاد.
5. بعد الاعتماد فقط يستلم المبرمج الخطة ويبدأ التطوير على branch مستقل.
6. المبرمج يسلم تقريراً يومياً لمالك المشروع، ومالك المشروع وحده يعرضه على Codex.
7. نهاية الأسبوع يفتح المبرمج PR مع الاختبارات والتوثيق.
8. مالك المشروع وحده يطلب مراجعة Codex النهائية، ولا يتم الدمج إلا بعد اعتماد `100/100`.

## إعداد المستودع لأول مرة

1. إنشاء فرعي `main` و`develop`.
2. ضبط `develop` كفرع افتراضي للتطوير اليومي.
3. تفعيل Branch Protection على `main` و`develop` حسب [إعدادات حماية الفروع](docs/00-governance/BRANCH-PROTECTION-SETUP.md).
4. تفعيل GitHub Actions المطلوبة: `branch-naming`, `required-files`, `codex-gate`.
5. منع أي push مباشر إلى `main` أو `develop`.
6. عدم قبول أول PR إلا بعد وجود ملفات Sign-off وTranscript المطلوبة.

راجع [Bootstrap المستودع لأول مرة](docs/00-governance/BOOTSTRAP.md) قبل أول رفع.
