-- 基本的なLeanコードの例

-- 値の定義
def hello : String := "Hello, Lean!"

-- 評価
#eval hello

-- 関数定義の例
def add_one (n : Nat) : Nat := n + 1

#eval add_one 5

-- 複数引数の関数
def add (a b : Nat) : Nat := a + b

#eval add 3 4

