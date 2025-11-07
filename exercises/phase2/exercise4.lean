-- 演習問題4: 論理積と同値（C03_Logic 3.4対応）

-- C03_Logicでは論理積（∧）と同値（↔）を学びます
-- まず、型確認の練習をしましょう

-- TODO: 以下の命題の型を確認してください
-- #check (2 + 2 = 4 ∧ 3 + 3 = 6)
-- #check (2 + 2 = 4 ↔ 3 + 3 = 6)
-- #check ∀ x : ℝ, (x > 0 ∧ x < 1)

-- 論理積の基本的な性質を証明しましょう
-- TODO: 以下の定理を証明してください
-- ヒント: ∧を証明するには、両方の要素を証明する必要があります
-- theorem and_intro (P Q : Prop) : P → Q → P ∧ Q := ???

-- 論理積の可換性
-- TODO: 以下の定理を証明してください
-- ヒント: .1と.2を使って要素を取り出すか、casesタクティクを使います
-- theorem and_comm (P Q : Prop) : P ∧ Q → Q ∧ P := ???

-- 論理積からの要素の取り出し
-- TODO: 以下の定理を証明してください
-- ヒント: h.1で最初の要素、h.2で2番目の要素を取り出せます
-- theorem and_left (P Q : Prop) : P ∧ Q → P := ???
-- theorem and_right (P Q : Prop) : P ∧ Q → Q := ???

-- 同値の基本的な性質
-- TODO: 以下の定理を証明してください
-- ヒント: ↔は両方向の含意です
-- theorem iff_intro (P Q : Prop) : (P → Q) → (Q → P) → (P ↔ Q) := ???

-- 同値の可換性
-- TODO: 以下の定理を証明してください
-- theorem iff_comm (P Q : Prop) : (P ↔ Q) → (Q ↔ P) := ???

-- 同値の両方向を取り出す
-- TODO: 以下の定理を証明してください
-- ヒント: h.mpで左から右、h.mprで右から左の方向です
-- theorem iff_mp (P Q : Prop) : (P ↔ Q) → P → Q := ???
-- theorem iff_mpr (P Q : Prop) : (P ↔ Q) → Q → P := ???

-- 実数に関する論理積の例
-- TODO: 以下の定理を証明してください
-- theorem abs_positive (x : ℝ) : x ≠ 0 → |x| > 0 ∧ -|x| < 0 := ???

-- 同値を使った定理
-- TODO: 以下の定理を証明してください
-- theorem abs_zero_iff (x : ℝ) : |x| = 0 ↔ x = 0 := ???

-- 補足: 論理積の分配法則
-- TODO: 以下の定理を証明してください（発展的）
-- theorem and_distrib_or (P Q R : Prop) : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := ???

