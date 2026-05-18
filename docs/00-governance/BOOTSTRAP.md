# Bootstrap المستودع لأول مرة

## الغرض

هذه الخطوات تحل مشكلة البداية الأولى قبل وجود Branch Protection وCI على المستودع.

## خطوات الإعداد الأولى

1. مالك المشروع وحده يدفع initial commit يحتوي:
   - كل ملفات الحوكمة الحالية.
   - `.github/workflows/*`.
   - `.github/CODEOWNERS`.
   - `README.md`, `.gitignore`, `.env.example`, `SECURITY.md`, `LICENSE.md`.

2. ينشئ مالك المشروع فرعي:
   - `main`
   - `develop`

3. يضبط مالك المشروع `develop` كفرع default أثناء التطوير.

4. لا يفتح أي PR للمبرمج قبل وجود ملفات الأسبوع الأول:
   - `docs/phase-1/week-1-plan.md`
   - `docs/phase-1/week-1-test-report.md` عند اكتمال العمل
   - `docs/signoffs/phase-1-week-1-codex-signoff.md`
   - `docs/signoffs/transcripts/phase-1-week-1-codex-transcript.md`

5. تدمج ملفات الحوكمة الأولى بواسطة مالك المشروع فقط.

6. بعد دمج bootstrap، يفعّل مالك المشروع Branch Protection على `main` و`develop`.

7. بعد تفعيل Branch Protection، لا توجد استثناءات. كل PR يمر عبر:
   - `branch-naming`
   - `required-files`
   - `codex-gate`

8. قبل تفعيل Branch Protection، يتأكد مالك المشروع أن بريد commit المستخدم في Git هو:

   `basem902@gmail.com`

   أو يعدل `owner_email` في `.github/workflows/codex-gate.yml` إلى البريد الذي سيظهر في GitHub commits.

9. عند فتح PR أسبوعي، يستخدم مالك المشروع `scripts/update-signoff.sh` بعد معرفة رقم PR لتحديث transcript وSHA256 قبل طلب المراجعة النهائية.

## ممنوع

- ممنوع استخدام bootstrap كذريعة لأول أسبوع تطوير.
- ممنوع أن يدفع المبرمج ملفات sign-off أو transcript.
- ممنوع فتح PR للأسبوع 1 قبل اعتماد خطته من Codex.
