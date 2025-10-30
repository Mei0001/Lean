-- 演習問題3: 否定（C03_Logic 3.3対応）

-- C03_Logicでは否定（¬）を学びます
-- まず、型確認の練習をしましょう

-- TODO: 以下の命題の型を確認してください
-- #check ¬ (2 + 2 = 5)
-- #check ¬ (∀ x : ℝ, x = 0)
-- #check (∀ x : ℝ, ¬ (x * x < 0))

-- 否定の基本的な性質を証明しましょう
-- TODO: 以下の定理を証明してください
-- ヒント: ¬P は P → False の略記です
-- theorem not_true_eq_false : ¬True ↔ False := ???

-- 二重否定の除去
-- TODO: 以下の定理を証明してください
-- ヒント: 直感的な論理では ¬¬P → P が成り立ちます（ただし、構成的論理では必ずしも）
-- theorem not_not_elim (P : Prop) : ¬¬P → P := ???

-- 背理法（by_contra）を使った証明
-- TODO: 以下の定理を証明してください
-- ヒント: by_contraタクティクを使うと、¬Pを仮定して矛盾を導けます
-- theorem not_zero_abs (x : ℝ) : x ≠ 0 → |x| > 0 := ???

-- 全称量化と否定
-- TODO: 以下の定理を証明してください
-- ヒント: ¬(∀ x, P x) と ∃ x, ¬P x は同値です
-- theorem not_forall_exists_not (P : ℕ → Prop) : ¬(∀ n, P n) → ∃ n, ¬P n := ???

-- 存在量化と否定
-- TODO: 以下の定理を証明してください
-- ヒント: ¬(∃ x, P x) と ∀ x, ¬P x は同値です
-- theorem not_exists_forall_not (P : ℕ → Prop) : ¬(∃ n, P n) → ∀ n, ¬P n := ???

-- 不等式に関する否定
-- TODO: 以下の定理を証明してください
-- theorem not_lt_ge (x y : ℝ) : ¬(x < y) → x ≥ y := ???

-- 補足: 排中律（Excluded Middle）
-- 以下のコメントを理解してください
-- #check em (P : Prop) : P ∨ ¬P
-- これは「任意の命題Pについて、Pであるか、またはPではないかのどちらかである」という排中律です
-- 注意: 構成的論理では、これは公理として扱われる場合があります

