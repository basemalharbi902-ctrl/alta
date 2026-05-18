# اعتمادات Codex

توضع هنا وثائق الاعتماد الرسمية بعد كل أسبوع ومرحلة.

التسمية المقترحة:

```text
phase-1-week-1-codex-signoff.md
phase-1-final-codex-signoff.md
phase-2-week-5-codex-signoff.md
phase-2-final-codex-signoff.md
phase-3-final-project-signoff.md
```

لا يعتبر أي أسبوع أو مرحلة مغلقة بدون ملف Sign-off بدرجة `100/100`.

## متطلبات CI

لكي ينجح `codex-gate` يجب أن يحتوي ملف Sign-off الأسبوعي على:

- `- النتيجة النهائية: 100/100`
- سطر Approved معلّم فعلياً.
- `- ملف transcript: docs/signoffs/transcripts/...`
- `- SHA256 transcript: ...`

يجب أن يكون SHA256 مطابقاً لمحتوى ملف transcript غير المعدل.
