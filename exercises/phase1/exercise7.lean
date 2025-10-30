-- 演習問題7: 複数の型を扱う関数（C02_Basics対応）

-- C02_Basicsでは複数の基本型を扱う方法を学びます
-- 自然数、実数、文字列を組み合わせる関数を作成しましょう

-- 自然数を受け取って文字列に変換する関数nat_to_stringを定義せよ
-- ヒント: Nat型の値は`toString`で文字列に変換できる
-- TODO: 以下の定義を完成させてください
-- def nat_to_string (n : Nat) : String := ???

-- 動作確認
-- #eval nat_to_string 42
-- 期待される出力: "42"

-- 実数を受け取って、その値が正かどうかを判定する関数is_positiveを定義せよ
-- ヒント: 比較演算子 `<`, `>`, `≤`, `≥` を使用
-- 注意: 実数では `0 < x` のような比較が可能
-- def is_positive (x : ℝ) : Bool := ???

-- #eval is_positive 5.0
-- 期待される出力: true

-- #eval is_positive (-3.0)
-- 期待される出力: false

-- #eval is_positive 0.0
-- 期待される出力: false

