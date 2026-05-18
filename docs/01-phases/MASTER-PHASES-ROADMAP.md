# خريطة المراحل والأسابيع

المصدر: وثائق المراحل التفصيلية في:

`D:\alatah\رواد-العطاء\09-عقد-المبرمج-المشارك\phases-detailed`

## المرحلة 1 - الأساس والاختبارات والطلاب

المدة: الأسابيع 1 إلى 4.

المخرجات الرئيسية:

- Laravel 11 + PHP 8.3 + PostgreSQL + Redis.
- Filament 3 + Livewire 3 + Tailwind RTL.
- Auth متعدد الفروع.
- Spatie Permission وFilament Shield.
- Activity Log.
- بنك أسئلة يحتوي 14 نوع سؤال.
- محرك اختبارات.
- شهادات QR باستخدام Bacon QR وBrowsershot.
- PWA.
- Student State Machine بثمان حالات.
- نقل الطلاب بين الفروع.

الأسابيع:

| الأسبوع | التركيز | بوابة Codex |
|---:|---|---|
| 1 | التأسيس، Auth، الفروع، الصلاحيات | خطة قبل البدء وPR بعد التنفيذ |
| 2 | بنك الأسئلة 14 نوع | خطة قبل البدء وPR بعد التنفيذ |
| 3 | محرك الاختبارات، الشهادات، PWA | خطة قبل البدء وPR بعد التنفيذ |
| 4 | الطلاب، State Machine، النقل بين الفروع | اعتماد نهاية المرحلة 1 |

تحذير الأسبوع 3: هذا الأسبوع عالي الخطورة لأنه يجمع محرك الاختبارات والشهادات وPWA. يحق لـCodex عند مراجعة الخطة أن يطلب إعادة تقسيم الأسبوع أو نقل جزء منه للأسبوع 4 إذا ظهر خطر جودة أو تسليم.

لا تبدأ المرحلة 2 قبل اعتماد المرحلة 1 بدرجة `100/100`.

## المرحلة 2 - المالية والحجب وسير العمل والخطابات

المدة: الأسابيع 5 إلى 8.

المخرجات الرئيسية:

- Accounting Adapter.
- MockAccountingAdapter عند غياب API الحقيقي.
- Service Blocking Engine.
- مصفوفة حجب 8 في 10.
- Workflow Engine.
- 14 نوع طلب.
- Letters Generator.
- PDF عربي RTL باستخدام Browsershot.
- قوالب خطابات رسمية.
- أرشفة وتدقيق للخطابات.

الأسابيع:

| الأسبوع | التركيز | بوابة Codex |
|---:|---|---|
| 5 | التكامل مع البرنامج المحاسبي | اعتماد خطة وPR |
| 6 | Service Blocking Engine ولوحات المالية | اعتماد خطة وPR |
| 7 | Workflow Engine و14 نوع طلب | اعتماد خطة وPR |
| 8 | Letters Generator وPDF RTL | اعتماد نهاية المرحلة 2 |

لا تبدأ المرحلة 3 قبل اعتماد المرحلة 2 بدرجة `100/100`.

## المرحلة 3 - الأكاديمي والتكاملات والتسليم النهائي

المدة: الأسابيع 9 إلى 12.

المخرجات الرئيسية:

- Student Affairs.
- CRM وLeads.
- TVTC Adapter مع XML signing.
- HR Module.
- نظام البصمة ZKTeco/Suprema.
- WebAuthn.
- Unifonic WhatsApp/SMS.
- Resend Email.
- Claude AI Assistant.
- RAG باستخدام pgvector.
- نشر على VPS سعودي.
- PDPL Checklist.
- تسليم نهائي.

الأسابيع:

| الأسبوع | التركيز | بوابة Codex |
|---:|---|---|
| 9 | شؤون الطلاب، CRM، TVTC | اعتماد خطة وPR |
| 10 | HR ونظام البصمة | اعتماد خطة وPR |
| 11 | قنوات التواصل WA/SMS/Email | اعتماد خطة وPR |
| 12 | AI، النشر، التسليم النهائي | اعتماد نهائي للمشروع |

## مخرجات إجبارية في نهاية كل أسبوع

- `docs/phase-N/week-N-plan.md`
- `docs/phase-N/week-N-test-report.md`
- تقرير مراجعة يومية أو أكثر.
- PR مكتمل.
- نتيجة اختبارات.
- تحديث توثيق.
- ملف قرارات معلقة إن وجدت.
- Codex Sign-off بدرجة `100/100`.
- Transcript وSHA256 مطابقان.
- Seeders وFactories عند وجود بيانات مطلوبة للاختبار أو التشغيل.
- Rollback notes على مستوى PR وعلى مستوى المرحلة عند الحاجة.

## مخرجات إجبارية في نهاية المشروع

- الكود النهائي على `main`.
- Tag نهائي.
- Staging وProduction يعملان.
- Backup قاعدة البيانات.
- وثيقة تشغيل ونشر.
- وثيقة Rollback.
- PDPL Checklist.
- Codex Final Sign-off `100/100`.

## Definition of Done

- [Definition of Done - المرحلة 1](PHASE-1-DEFINITION-OF-DONE.md)
- [Definition of Done - المرحلة 2](PHASE-2-DEFINITION-OF-DONE.md)
- [Definition of Done - المرحلة 3](PHASE-3-DEFINITION-OF-DONE.md)
