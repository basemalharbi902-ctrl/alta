# وصول Codex ودليل الاعتماد

## قناة الاعتماد الرسمية

مالك المشروع وحده يعرض الخطط والتقارير وPull Requests على Codex.

المبرمج لا يخاطب Codex مباشرة، ولا يعتمد أي رد يحصل عليه خارج قناة مالك المشروع.

## هوية مالك المشروع في CI

يتحقق `codex-gate` من أن كل commits التي عدلت ملفات Sign-off وTranscript صادرة من مالك المشروع بهذا البريد:

`basem902@gmail.com`

إذا كان GitHub يستخدم بريد `noreply` أو تغير البريد الرسمي، يجب تعديل المتغير `owner_email` داخل `.github/workflows/codex-gate.yml` قبل تفعيل Branch Protection. لا يكفي أن يكون آخر commit من المالك؛ يجب ألا يظهر أي commit سابق من غير المالك على ملف الاعتماد أو transcript.

## حفظ الدليل

كل اعتماد Codex يجب أن يحفظ في ملفين:

1. ملف Sign-off:

   `docs/signoffs/phase-N-week-N-codex-signoff.md`

2. Transcript كامل وغير معدل:

   `docs/signoffs/transcripts/phase-N-week-N-codex-transcript.md`

## SHA256

بعد حفظ transcript، يحسب مالك المشروع SHA256 ويضعه في ملف Sign-off:

```bash
sha256sum docs/signoffs/transcripts/phase-N-week-N-codex-transcript.md
```

GitHub Action `codex-gate` يتحقق من:

- وجود ملف Sign-off.
- وجود transcript.
- تطابق SHA256.
- وجود `- النتيجة النهائية: 100/100`.
- وجود `- [x] Approved`.
- تطابق `Target-Branch` مع الفرع الحالي.
- وجود `Target-Commit-SHA` داخل تاريخ الفرع الحالي.
- أن Timestamp-UTC ضمن آخر 14 يوماً.
- أن ملفات Sign-off وTranscript ملتزمة من مالك المشروع.

## توقيع Codex

توقيع Codex اصطلاحياً يعني:

`Session-ID + SHA256 transcript`

لا تقبل أي صيغة أخرى مثل اسم شخصي أو توقيع يدوي. الحقل `Codex Reviewer` في ملفات الاعتماد يجب أن يحتوي Session-ID وSHA256 فقط.

## عدم قابلية التعديل

أي تعديل على transcript بعد الاعتماد يغير SHA256 ويفشل CI. عند الحاجة لتصحيح transcript، يجب إنشاء اعتماد جديد بالكامل.

## سكريبت مساعد

بعد فتح PR draft ومعرفة رقمه، يمكن لمالك المشروع تحديث PR number وTarget commit وSHA256 عبر:

```bash
./scripts/update-signoff.sh <phase> <week> <pr-number>
```

مثال:

```bash
./scripts/update-signoff.sh 1 1 12
```

على Windows يمكن تشغيله عبر Git Bash:

```bash
bash scripts/update-signoff.sh 1 1 12
```
