-- 演習問題7: 数列の収束（C03_Logic 3.6対応・発展的）

-- C03_Logic 3.6節では数列の収束について学びます
-- この問題は発展的な内容なので、基礎問題を完了してから取り組みましょう

-- まず、数列の収束の定義を確認します
-- TODO: 以下の定義を理解してください
-- def ConvergesTo (s : ℕ → ℝ) (a : ℝ) : Prop :=
--   ∀ ε > 0, ∃ N, ∀ n ≥ N, |s n - a| < ε

-- これは「数列 s が a に収束する」ことを意味します
-- 意味: 任意の正の実数 ε に対して、ある自然数 N が存在し、
--      すべての n ≥ N について |s n - a| < ε となる

-- 定数数列の収束
-- TODO: 以下の定理を証明してください
-- ヒント: intro, use, rw などのタクティクを使います
-- theorem convergesTo_const (a : ℝ) : ConvergesTo (fun x : ℕ => a) a := ???

-- より具体的な例
-- TODO: 以下の定理を証明してください
-- theorem convergesTo_zero : ConvergesTo (fun n : ℕ => 1 / (n + 1 : ℝ)) 0 := ???

-- 数列の和の収束（発展的）
-- TODO: 以下の定理の証明を完成させてください
-- これは C03_Logic 3.6節の convergesTo_add に対応します
-- theorem convergesTo_add {s t : ℕ → ℝ} {a b : ℝ}
--     (cs : ConvergesTo s a) (ct : ConvergesTo t b) :
--   ConvergesTo (fun n => s n + t n) (a + b) := by
--   intro ε εpos
--   -- 以下を完成させてください
--   -- ヒント: ε/2 を使い、max Ns Nt を使います
--   sorry

-- 数列の定数倍の収束（発展的）
-- TODO: 以下の定理を証明してください
-- theorem convergesTo_mul_const {s : ℕ → ℝ} {a : ℝ} (c : ℝ) 
--     (cs : ConvergesTo s a) :
--   ConvergesTo (fun n => c * s n) (c * a) := ???
-- ヒント: c = 0 の場合と c ≠ 0 の場合で場合分けします

-- 収束数列の有界性
-- TODO: 以下の定理を証明してください
-- theorem exists_abs_le_of_convergesTo {s : ℕ → ℝ} {a : ℝ} 
--     (cs : ConvergesTo s a) :
--   ∃ N b, ∀ n, N ≤ n → |s n| < b := ???

-- 補足: 極限の一意性（かなり発展的）
-- TODO: 以下の定理の証明を理解してください（証明は任意）
-- theorem convergesTo_unique {s : ℕ → ℝ} {a b : ℝ}
--     (sa : ConvergesTo s a) (sb : ConvergesTo s b) :
--   a = b := ???
-- ヒント: by_contra を使って背理法で証明します

