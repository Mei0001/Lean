-- 演習問題5: 論理和（C03_Logic 3.5対応）

-- C03_Logicでは論理和（∨）を学びます
-- まず、型確認の練習をしましょう

-- TODO: 以下の命題の型を確認してください
-- #check (2 + 2 = 4 ∨ 2 + 2 = 5)
-- #check (∀ x : ℝ, x > 0 ∨ x ≤ 0)
-- #check (∃ x : ℝ, x = 0 ∨ x = 1)

-- 論理和の基本的な性質を証明しましょう
-- TODO: 以下の定理を証明してください
-- ヒント: leftタクティクで左側を、rightタクティクで右側を選択します
-- theorem or_left (P Q : Prop) : P → P ∨ Q := ???
-- theorem or_right (P Q : Prop) : Q → P ∨ Q := ???

-- 論理和の可換性
-- TODO: 以下の定理を証明してください
-- ヒント: casesタクティクで場合分けします
-- theorem or_comm (P Q : Prop) : P ∨ Q → Q ∨ P := ???

-- 論理和からの情報の取り出し（cases）
-- TODO: 以下の定理を証明してください
-- ヒント: cases hで P の場合と Q の場合に分けます
-- theorem or_imp_imp (P Q R : Prop) : (P ∨ Q → R) ↔ (P → R) ∧ (Q → R) := ???

-- 実数に関する論理和の例
-- TODO: 以下の定理を証明してください
-- theorem abs_nonneg (x : ℝ) : x ≥ 0 ∨ x ≤ 0 := ???
-- 注意: これは排中律に基づいています

-- より複雑な論理和
-- TODO: 以下の定理を証明してください
-- theorem trichotomy (x : ℝ) : x > 0 ∨ x = 0 ∨ x < 0 := ???

-- 存在量化と論理和の組み合わせ
-- TODO: 以下の定理を証明してください
-- theorem exists_or (P Q : ℕ → Prop) : (∃ n, P n ∨ Q n) ↔ (∃ n, P n) ∨ (∃ n, Q n) := ???

-- 論理和の分配法則
-- TODO: 以下の定理を証明してください
-- theorem or_distrib_and (P Q R : Prop) : P ∨ (Q ∧ R) ↔ (P ∨ Q) ∧ (P ∨ R) := ???

-- 補足: 排中律の使用例
-- TODO: 以下の定理を証明してください
-- theorem not_not_decidable (P : Prop) [Decidable P] : ¬¬P → P := ???

