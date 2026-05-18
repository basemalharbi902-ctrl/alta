# طلب مراجعة Claude الثالثة قبل الرفع

انسخ هذا النص إلى Claude بعد إرفاق مجلد `D:\alatah\project_alata`.

---

راجعت سابقاً ملفات الحوكمة وأعطيت درجة 88/100 مع سبع تعديلات متبقية.

تم تطبيق الآتي:

1. إنشاء `docs/templates/CODEX-TRANSCRIPT-TEMPLATE.md`.
2. تعديل `codex-gate.yml` ليفحص:
   - `Session-ID`
   - `Codex-Version`
   - `Reviewer-Channel: owner-only`
   - `Timestamp-UTC` ضمن آخر 14 يوماً
   - `Target-Branch` مطابق للفرع
   - `Target-Commit-SHA` موجود داخل تاريخ الفرع
   - `PR-Number` مطابق للـPR
   - `Final-Score: 100/100`
   - `Decision: APPROVED`
   - `--- CODEX-END ---`
   - SHA256 مطابق
   - committer لملفي sign-off وtranscript هو مالك المشروع
3. إضافة فحص تحديث `CHANGELOG.md` في كل PR.
4. إنشاء `docs/00-governance/BOOTSTRAP.md`.
5. إنشاء قوالب الخلافات والحوادث:
   - `docs/templates/CONFLICT-TEMPLATE.md`
   - `docs/templates/INCIDENT-TEMPLATE.md`
6. تعديل توقيع Codex إلى `Session-ID + Transcript-SHA256`.
7. توسيع `branch-naming.yml` لقبول:
   - `feat/phase-N/week-N-*`
   - `hotfix/*`
   - `chore/governance-*`
   - `docs/*`
8. جعل فحوص plan/signoff خاصة بفروع `feat/...` فقط، مع إبقاء `CHANGELOG.md` مطلوباً للجميع.
9. إضافة `/docs/01-phases/` إلى `CODEOWNERS`.
10. حذف تكرار حقل نتيجة Codex من بداية قالب خطة الأسبوع.
11. إضافة قناة إبلاغ أمنية في `SECURITY.md`.

المطلوب:

- راجع فقط هل عولجت ملاحظاتك السبعة الأخيرة.
- أعطني الحكم النهائي: جاهز للرفع / يحتاج تعديل قبل الرفع.
- أعطني درجة من 100.
- إن كانت أقل من 100، اذكر فقط الثغرات المتبقية القابلة للتنفيذ.

لا تفتح مراجعة عامة جديدة إلا إذا وجدت ثغرة تمنع الرفع فعلاً.

---

