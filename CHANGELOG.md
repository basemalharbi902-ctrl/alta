# Changelog

كل تغيير مدمج يجب أن يضاف هنا بعد اعتماد Codex `100/100`.

## Unreleased

- إعداد وثائق الحوكمة وبوابات Codex قبل بدء التطوير.
- إضافة قالب Codex Transcript وربطه آلياً بالفرع والـcommit وSHA256.
- إضافة Bootstrap، قوالب الخلافات والحوادث، وتوسيع أسماء الفروع المقبولة.
- تشديد codex-gate بفحص مالك ملفات Sign-off وTranscript وتحديث CHANGELOG في كل PR.
- تشديد codex-gate لفحص كل معدلي ملفات Sign-off وTranscript، وإضافة سكريبت `scripts/update-signoff.sh`.
- السماح بمسارات الإصدار `release/*` و`develop -> main` في فحص أسماء الفروع.
- توحيد صياغة الأدوار: المبرمج يجهز الخطة مع Claude، ومالك المشروع يراجع ويعرض على Codex.
- تعديل مسار التخطيط: المبرمج يعد الخطة كاملة مع Claude، مالك المشروع يراجعها قبل Codex ويصدر إذناً صريحاً قبل بدء التطوير وقبل الدمج.
- إصلاح branch-naming.yml للسماح بـrelease PRs من develop إلى main.
