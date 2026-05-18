# إعدادات حماية الفروع

هذه الإعدادات تطبق يدوياً في GitHub قبل قبول أي PR.

## الفروع المحمية

- `main`
- `develop`

## الإعدادات الإلزامية

فعّل الآتي على كل فرع:

- Require a pull request before merging.
- Require approvals: 1 على الأقل من مالك المشروع.
- Require review from Code Owners.
- Dismiss stale pull request approvals when new commits are pushed.
- Require status checks to pass before merging.
- Require branches to be up to date before merging.
- Required status checks:
  - `branch-naming`
  - `required-files`
  - `codex-gate`
- Require signed commits إن أمكن.
- Restrict who can push to matching branches.
- Do not allow bypassing the above settings.
- Lock branch عند اكتمال الإصدار النهائي إن لزم.

## قاعدة لا تتجاوز

إذا سمح GitHub بالدمج بدون هذه الشروط، فهذا خطأ إعدادات. يوقف العمل فوراً حتى إصلاح Branch Protection وفتح Incident داخل `docs/incidents/`.

## أنواع الفروع المقبولة

- `feat/phase-N/week-N-short-name`: عمل أسابيع المشروع ويخضع لخطة، تقرير اختبار، Sign-off، Transcript.
- `hotfix/name`: إصلاح طارئ ويحتاج مراجعة مالك المشروع وCHANGELOG.
- `chore/governance-name`: تحديث حوكمة ويحتاج مراجعة مالك المشروع وCHANGELOG.
- `docs/name`: تحديث وثائق ويحتاج مراجعة مالك المشروع وCHANGELOG.

## Release PRs

- المسار الوحيد المسموح به للدمج إلى `main` بعد bootstrap هو: PR من `develop` إلى `main`.
- `branch-naming` يتجاوز فحص اسم المصدر فقط عندما يكون المصدر `develop` والهدف `main`.
- باقي الفحوصات (`codex-gate`, `required-files`, CHANGELOG, CODEOWNERS) تطبق كاملة.

## خطوات أول إعداد

1. أنشئ `main`.
2. أنشئ `develop` من `main`.
3. اجعل `develop` هو default branch أثناء التطوير.
4. فعّل الحماية على `main`.
5. فعّل الحماية على `develop`.
6. افتح PR تجريبي للتأكد أن checks الثلاثة مطلوبة وتفشل عند غياب sign-off.
