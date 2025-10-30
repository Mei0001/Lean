-- 演習問題6: 論理演算子の組み合わせ（応用問題）

-- この問題では、これまでに学んだ論理演算子を組み合わせた
-- より複雑な命題を証明します

-- ド・モルガンの法則を証明しましょう
-- TODO: 以下の定理を証明してください
-- ヒント: 否定、論理積、論理和を組み合わせます
-- theorem de_morgan_not_and (P Q : Prop) : ¬(P ∧ Q) ↔ ¬P ∨ ¬Q := ???

-- TODO: 以下の定理も証明してください
-- theorem de_morgan_not_or (P Q : Prop) : ¬(P ∨ Q) ↔ ¬P ∧ ¬Q := ???

-- 含意と論理和の関係
-- TODO: 以下の定理を証明してください
-- theorem imp_or_iff (P Q R : Prop) : (P → Q ∨ R) ↔ (P → Q) ∨ (P → R) := ???
-- 注意: これは常に成り立つとは限りません。どのような場合に成り立つか考えてください

-- 全称量化と存在量化の組み合わせ
-- TODO: 以下の定理を証明してください
-- theorem forall_exists_imp (P : ℕ → ℕ → Prop) : 
--   (∀ n, ∃ m, P n m) → (∃ f : ℕ → ℕ, ∀ n, P n (f n)) := ???
-- 注意: これは選択公理（Axiom of Choice）の形です

-- 実数に関する複合的な命題
-- TODO: 以下の定理を証明してください
-- theorem abs_triangle (x y : ℝ) : |x + y| ≤ |x| + |y| := ???
-- ヒント: casesタクティクで x ≥ 0 と x < 0 の場合に分けます

-- 数列の上界に関する複合命題
-- TODO: 以下の定義を理解してください
-- def FnUb (f : ℝ → ℝ) (a : ℝ) : Prop := ∀ x, f x ≤ a
-- def FnLb (f : ℝ → ℝ) (a : ℝ) : Prop := ∀ x, a ≤ f x
-- def FnHasBounds (f : ℝ → ℝ) : Prop := ∃ a b, FnUb f b ∧ FnLb f a

-- TODO: 以下の定理を証明してください
-- theorem const_has_bounds (c : ℝ) : FnHasBounds (fun x => c) := ???

-- 含意の連鎖を使った複雑な証明
-- TODO: 以下の定理を証明してください
-- これは C03_Logic 3.1節の例を拡張したものです
-- theorem abs_mul_lt (x y ε : ℝ) : 
--   0 < ε → ε ≤ 1 → |x| < ε → |y| < ε → |x * y| < ε := ???
-- ヒント: abs_mul, mul_le_mul, abs_nonneg などの定理を使います

-- 同値を使った定義の性質
-- TODO: 以下の定理を証明してください
-- theorem abs_eq_iff (x y : ℝ) : |x| = |y| ↔ (x = y ∨ x = -y) := ???

