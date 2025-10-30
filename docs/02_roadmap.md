# Lean言語習得ロードマップ

## 概要

このロードマップは、[Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)を主教材として、数学徒向けにLean言語を体系的に学習するための計画です。各フェーズには明確なKGI（Key Goal Indicator）と具体的な演習問題を設定しています。

---

## 全体像：6つのフェーズ

```
フェーズ1: 環境構築と基本構文習得
    ↓
フェーズ2: 型システムと関数定義の理解
    ↓
フェーズ3: 論理と証明の基礎
    ↓
フェーズ4: 数学的概念の形式化
    ↓
フェーズ5: 実分析・線形代数への応用
    ↓
フェーズ6: 高度な定理証明と実践プロジェクト
```

---

## フェーズ1: 環境構築と基本構文習得

### 期間目安
**2-3週間**

### KGI（Key Goal Indicator）

1. ✅ Lean 4の開発環境が完全に構築されている
2. ✅ VS CodeでLeanファイルを作成・実行・型チェックができる
3. ✅ 基本的な型（`Nat`, `Int`, `String`, `Bool`）を理解している
4. ✅ 簡単な関数定義と評価ができる
5. ✅ `#check`, `#eval`, `#reduce`の違いを理解している

### 学習内容

- **セットアップ（完了済み）**
  - Elanのインストール
  - Lean 4のインストール
  - VS Code拡張機能の設定
  - プロジェクトの作成方法

- **基本構文**
  - 値の定義（`def`）
  - 型の指定方法
  - 関数定義の基本
  - コメントの書き方

- **対話的コマンド**
  - `#check`: 型を確認
  - `#eval`: 値を計算
  - `#reduce`: 項の簡約

### 参考資料

- Mathematics in Lean: Chapter 1 "Introduction"
- Mathematics in Lean: Chapter 2 "Overview"
- [Lean 4 Manual - Basic Syntax](https://leanprover.github.io/lean4/doc/quickstart.html)

### 演習問題

#### 基礎問題（必須）

1. **型確認の練習**
   ```lean
   -- 以下の各項の型を#checkで確認せよ
   #check 42
   #check "Hello"
   #check true
   #check Nat
   ```

2. **簡単な関数定義**
   ```lean
   -- 自然数を2倍にする関数doubleを定義せよ
   def double (n : Nat) : Nat := ???

   -- 動作確認
   #eval double 5
   ```

3. **文字列操作**
   ```lean
   -- 名前を受け取って挨拶文を返す関数greetを定義せよ
   def greet (name : String) : String := ???

   #eval greet "Lean"
   ```

#### 応用問題

4. **複数引数の関数**
   ```lean
   -- 3つの自然数の和を返す関数add_threeを定義せよ
   def add_three (a b c : Nat) : Nat := ???

   #eval add_three 1 2 3
   ```

5. **条件分岐**
   ```lean
   -- 自然数が偶数かどうかを判定する関数（型だけでも可）
   -- ヒント: Bool型を使用
   def is_even (n : Nat) : Bool := ???

   #eval is_even 4
   #eval is_even 5
   ```

### 進捗確認チェックリスト

- [ ] Leanプロジェクトが作成でき、ファイルを開いて型チェックが通る
- [ ] `#check`, `#eval`が正しく動作する
- [ ] 演習問題1-3がすべて解けた
- [ ] VS Codeのエラー表示を理解し、基本的なエラーを修正できる

---

## フェーズ2: 型システムと関数定義の理解

### 期間目安
**3-4週間**

### KGI（Key Goal Indicator）

1. ✅ 依存型（Dependent Types）の基本概念を理解している
2. ✅ `Type`, `Type u`の違いを説明できる
3. ✅ パターンマッチングを使って関数を定義できる
4. ✅ 再帰関数を正しく定義できる
5. ✅ `Option`, `List`などの基本的なデータ構造を操作できる
6. ✅ ローカル定義（`let`, `where`）を使いこなせる

### 学習内容

- **型システムの深化**
  - `Type`とその階層
  - 多相型（Polymorphic Types）
  - 依存関数型

- **関数定義の詳細**
  - パターンマッチング
  - 再帰関数（structural recursion）
  - 関数の合成

- **データ構造**
  - リスト（`List`）
  - オプション型（`Option`）
  - ペア（`Prod`）

- **ローカル定義**
  - `let ... in ...`
  - `where`節

### 参考資料

- Mathematics in Lean: Chapter 3 "Types and Functions"
- Mathematics in Lean: Chapter 4 "Definitions"
- [Functional Programming in Lean - Lists](https://leanprover.github.io/functional_programming_in_lean/)

### 演習問題

#### 基礎問題

1. **リストの操作**
   ```lean
   -- リストの長さを返す関数my_lengthを定義せよ
   def my_length {α : Type} (l : List α) : Nat := ???

   #eval my_length [1, 2, 3, 4, 5]
   #eval my_length ["a", "b"]
   ```

2. **再帰関数：階乗**
   ```lean
   -- 階乗を計算する関数factを定義せよ
   def fact (n : Nat) : Nat := ???

   #eval fact 5
   #eval fact 10
   ```

3. **リストの要素の和**
   ```lean
   -- 自然数のリストの要素の和を返す関数sum_listを定義せよ
   def sum_list (l : List Nat) : Nat := ???

   #eval sum_list [1, 2, 3, 4, 5]
   ```

#### 応用問題

4. **リストの結合**
   ```lean
   -- 2つのリストを結合する関数my_appendを定義せよ
   def my_append {α : Type} (l₁ l₂ : List α) : List α := ???

   #eval my_append [1, 2] [3, 4]
   ```

5. **リストの反転**
   ```lean
   -- リストを反転する関数my_reverseを定義せよ
   -- ヒント: 補助関数を使うと効率的
   def my_reverse {α : Type} (l : List α) : List α := ???

   #eval my_reverse [1, 2, 3, 4, 5]
   ```

6. **フィボナッチ数列**
   ```lean
   -- n番目のフィボナッチ数を返す関数fibを定義せよ
   def fib (n : Nat) : Nat := ???

   #eval fib 10
   ```

### 進捗確認チェックリスト

- [ ] 依存型の基本概念を理解した
- [ ] パターンマッチングで関数が定義できる
- [ ] 再帰関数が正しくコンパイルできる
- [ ] 演習問題1-3がすべて解けた
- [ ] `List`の基本操作（`map`, `filter`など）を理解した

---

## フェーズ3: 論理と証明の基礎

### 期間目安
**4-6週間**

### KGI（Key Goal Indicator）

1. ✅ 命題と型の対応（Curry-Howard対応）を理解している
2. ✅ `Prop`と`Type`の違いを説明できる
3. ✅ 基本的なタクティク（`rfl`, `simp`, `apply`, `rw`）を使える
4. ✅ 論理結合子（`∧`, `∨`, `→`, `↔`, `¬`）を扱える
5. ✅ 全称量化（`∀`）と存在量化（`∃`）を使える
6. ✅ 簡単な数学的命題を証明できる

### 学習内容

- **命題即型の原理**
  - Curry-Howard対応
  - 証明オブジェクトとしての項

- **基本的なタクティク**
  - `rfl`: 反射律による証明
  - `simp`: 簡約
  - `apply`: 関数適用
  - `rw`: 書き換え
  - `exact`: 直接証明項を与える
  - `sorry`: 未証明を仮定（デバッグ用）

- **論理結合子**
  - 含意（`→`）
  - 論理積（`∧`）
  - 論理和（`∨`）
  - 否定（`¬`）
  - 同値（`↔`）

- **量化子**
  - 全称量化（`∀`）
  - 存在量化（`∃`）

- **証明の構造**
  - `theorem`と`lemma`
  - `by`タクティクモード
  - 構造化証明

### 参考資料

- Mathematics in Lean: Chapter 4 "Propositions and Proofs"
- Mathematics in Lean: Chapter 5 "Tactics"
- [Theorem Proving in Lean 4 - Basic Logic](https://leanprover.github.io/theorem_proving_in_lean4/basic_logic.html)

### 演習問題

#### 基礎問題

1. **反射律の証明**
   ```lean
   -- 任意の自然数nについて n = n を証明せよ
   theorem refl_nat (n : Nat) : n = n := ???

   -- ヒント: rflタクティクを使用
   ```

2. **基本的な論理演算**
   ```lean
   -- 以下の命題を証明せよ
   theorem and_comm (P Q : Prop) : P ∧ Q → Q ∧ P := ???

   theorem or_comm (P Q : Prop) : P ∨ Q → Q ∨ P := ???
   ```

3. **含意の連鎖**
   ```lean
   -- P → Q, Q → R ならば P → R を証明せよ
   theorem imp_trans (P Q R : Prop) : (P → Q) → (Q → R) → (P → R) := ???
   ```

#### 応用問題

4. **自然数の加算**
   ```lean
   -- 0 + n = n を証明せよ
   theorem add_zero (n : Nat) : 0 + n = n := ???

   -- n + 0 = n を証明せよ
   theorem add_zero_right (n : Nat) : n + 0 = n := ???
   ```

5. **加算の可換性**
   ```lean
   -- 自然数の加法の可換性を証明せよ
   theorem add_comm (m n : Nat) : m + n = n + m := ???

   -- ヒント: 帰納法（induction）を使用する可能性がある
   ```

6. **加算の結合法則**
   ```lean
   -- 自然数の加法の結合法則を証明せよ
   theorem add_assoc (m n k : Nat) : m + n + k = m + (n + k) := ???
   ```

7. **全称量化と存在量化**
   ```lean
   -- 任意の自然数nについて、ある自然数mが存在して n + m = n となることを証明せよ
   theorem exists_add_zero (n : Nat) : ∃ m : Nat, n + m = n := ???

   -- 任意の実数xについて、x + 0 = x であることを証明せよ（実数が定義されている場合）
   ```

### 進捗確認チェックリスト

- [ ] Curry-Howard対応を理解した
- [ ] 基本的なタクティクが使える
- [ ] 論理結合子の証明ができる
- [ ] 演習問題1-3がすべて解けた
- [ ] `#check`で定理の型を確認できる

---

## フェーズ4: 数学的概念の形式化

### 期間目安
**6-8週間**

### KGI（Key Goal Indicator）

1. ✅ 集合（`Set`）を理解し、集合演算ができる
2. ✅ 関数の定義域・値域、全射・単射を扱える
3. ✅ 関係（`Relation`）と同値関係を定義できる
4. ✅ 自然数、整数、有理数、実数の基本性質を理解している
5. ✅ `mathlib`の基本的な使い方がわかる
6. ✅ 自分で数学的概念を形式化できる

### 学習内容

- **集合論**
  - 集合の定義と基本演算
  - 部分集合関係
  - 集合の内包記法

- **関数論**
  - 関数の形式化
  - 全射、単射、全単射
  - 関数の合成

- **数体系**
  - 自然数（`Nat`）
  - 整数（`Int`）
  - 有理数（`Rat`）
  - 実数（`Real`）
  - 複素数（`Complex`）

- **関係と順序**
  - 二項関係
  - 同値関係
  - 順序関係
  - 最大元・最小元

- **mathlibの活用**
  - ライブラリの検索方法
  - 定理のインポート
  - 命名規則の理解

### 参考資料

- Mathematics in Lean: Chapter 6 "Sets and Functions"
- Mathematics in Lean: Chapter 7 "Number Systems"
- [mathlib Documentation](https://leanprover-community.github.io/mathlib4_docs/)
- [mathlib 検索](https://leanprover-community.github.io/mathlib_docs/)

### 演習問題

#### 基礎問題

1. **集合の基本操作**
   ```lean
   import Mathlib.Data.Set.Basic

   -- 集合の和、積、差を定義し、基本的な性質を証明せよ
   -- 例: A ∪ B = B ∪ A の可換性
   ```

2. **関数の性質**
   ```lean
   import Mathlib.Data.Set.Function

   -- 関数f : ℕ → ℕ が単射であることを定義せよ
   def IsInjective (f : ℕ → ℕ) : Prop := ???

   -- 関数fが全射であることを定義せよ
   def IsSurjective (f : ℕ → ℕ) : Prop := ???
   ```

3. **自然数の性質**
   ```lean
   -- 自然数nが偶数であることを定義せよ
   def IsEven (n : ℕ) : Prop := ???

   -- 偶数の和は偶数であることを証明せよ
   theorem even_add (m n : ℕ) (hm : IsEven m) (hn : IsEven n) : IsEven (m + n) := ???
   ```

#### 応用問題

4. **整数の性質**
   ```lean
   -- 整数の絶対値を定義し、基本的な性質を証明せよ
   -- |a + b| ≤ |a| + |b| など
   ```

5. **有理数の順序**
   ```lean
   -- 有理数の大小関係を用いて、基本的な不等式を証明せよ
   -- 例: a < b → a + c < b + c
   ```

6. **同値関係**
   ```lean
   -- 整数上の合同関係（mod n）を定義し、同値関係であることを証明せよ
   def CongMod (n : ℕ) (a b : ℤ) : Prop := ???

   theorem CongMod_is_equiv (n : ℕ) : Equivalence (CongMod n) := ???
   ```

7. **独自の数学的概念の形式化**
   ```lean
   -- 自分の興味のある数学的概念（群、環、体、位相空間など）を形式化せよ
   -- 少なくとも定義と1つの基本的な定理を証明せよ
   ```

### 進捗確認チェックリスト

- [ ] `Set`の基本操作ができる
- [ ] 関数の性質（単射・全射）を扱える
- [ ] `mathlib`から定理を検索・使用できる
- [ ] 演習問題1-3がすべて解けた
- [ ] 自分で新しい数学的概念を定義できる

---

## フェーズ5: 実分析・線形代数への応用

### 期間目安
**8-10週間**

### KGI（Key Goal Indicator）

1. ✅ 実数の連続性を理解している
2. ✅ 極限、導関数、積分の基本を扱える
3. ✅ ベクトル空間と線形写像を形式化できる
4. ✅ 行列の演算とその性質を証明できる
5. ✅ 重要な定理（例：中間値の定理、平均値の定理）を証明できる
6. ✅ `mathlib`の高度な機能を使いこなせる

### 学習内容

- **実分析**
  - 実数の完備性
  - 数列の収束
  - 関数の連続性
  - 微分
  - 積分

- **線形代数**
  - ベクトル空間
  - 線形写像
  - 基底と次元
  - 行列と行列式

- **重要な定理**
  - 中間値の定理
  - 平均値の定理
  - ロールの定理
  - リーマン積分の定義

### 参考資料

- Mathematics in Lean: Chapter 8 "Real Analysis"
- Mathematics in Lean: Chapter 9 "Linear Algebra"
- [mathlib - Analysis](https://leanprover-community.github.io/mathlib4_docs/Analysis.html)
- [mathlib - Linear Algebra](https://leanprover-community.github.io/mathlib4_docs/LinearAlgebra.html)

### 演習問題

#### 基礎問題

1. **連続関数**
   ```lean
   import Mathlib.Topology.Basic

   -- 関数f : ℝ → ℝ がx = aで連続であることを定義せよ
   def ContinuousAt (f : ℝ → ℝ) (a : ℝ) : Prop := ???

   -- 定数関数が連続であることを証明せよ
   theorem const_continuous (c : ℝ) : Continuous (fun x => c) := ???
   ```

2. **数列の収束**
   ```lean
   -- 数列{a_n}が実数Lに収束することを定義し、基本的な性質を証明せよ
   -- 例: lim (a_n + b_n) = lim a_n + lim b_n
   ```

3. **線形写像**
   ```lean
   import Mathlib.LinearAlgebra.Basic

   -- ベクトル空間V, Wの間の線形写像を定義せよ
   -- 線形写像の和が線形写像であることを証明せよ
   ```

#### 応用問題

4. **導関数**
   ```lean
   -- 関数f : ℝ → ℝ の導関数を定義せよ
   -- 積の微分法則 (fg)' = f'g + fg' を証明せよ
   ```

5. **中間値の定理**
   ```lean
   -- 中間値の定理を形式化し、証明せよ
   theorem intermediate_value_theorem (f : ℝ → ℝ) (a b : ℝ) 
     (hab : a < b) (hcont : ContinuousOn f (Set.Icc a b)) 
     (hfa : f a < 0) (hfb : 0 < f b) : 
     ∃ x ∈ Set.Icc a b, f x = 0 := ???
   ```

6. **行列の性質**
   ```lean
   import Mathlib.LinearAlgebra.Matrix

   -- 正方行列のトレースを定義し、tr(AB) = tr(BA) を証明せよ
   ```

7. **実分析の重要定理**
   ```lean
   -- ロールの定理を形式化し、証明せよ
   -- または
   -- 平均値の定理を形式化し、証明せよ
   ```

### 進捗確認チェックリスト

- [ ] 実数の連続性を理解した
- [ ] 基本的な分析の定理を証明できる
- [ ] 線形代数の基本概念を形式化できる
- [ ] 演習問題1-3がすべて解けた
- [ ] `mathlib`の高度な機能を使える

---

## フェーズ6: 高度な定理証明と実践プロジェクト

### 期間目安
**継続的（10週間以上）**

### KGI（Key Goal Indicator）

1. ✅ 複雑な定理を段階的に証明できる
2. ✅ 自分の専門分野の数学を形式化できる
3. ✅ `mathlib`に貢献できるレベルの証明を書ける
4. ✅ 他の人の証明コードを読んで理解できる
5. ✅ 形式的検証プロジェクトを完成させられる
6. ✅ Leanコミュニティに積極的に参加している

### 学習内容

- **高度なタクティク**
  - カスタムタクティクの作成
  - `simp`の設定
  - `congr`、`ext`などの高度なタクティク

- **構造化された証明**
  - モジュール化
  - 名前空間の活用
  - 証明の整理と最適化

- **プロジェクト管理**
  - 大規模プロジェクトの構造
  - 依存関係の管理
  - テストとデバッグ

- **コミュニティ参加**
  - コードレビュー
  - バグレポート
  - ドキュメント作成

### 参考資料

- Mathematics in Lean: すべての高度な章
- [Lean Community Zulip](https://leanprover.zulipchat.com/)
- [mathlib Pull Requests](https://github.com/leanprover-community/mathlib4/pulls)
- [Lean 4 Manual - Tactics](https://leanprover.github.io/lean4/doc/tactics.html)

### 演習問題

#### 実践プロジェクト

1. **自分の専門分野の形式化**
   - 自分の研究分野や興味のある数学的概念を形式化
   - 少なくとも5つの重要な定理を証明
   - ドキュメントを整備

2. **`mathlib`への貢献**
   - `mathlib`の既存のコードを読み、未証明の定理を見つける
   - 小さな定理から証明を追加
   - Pull Requestを作成（任意）

3. **形式化プロジェクト**
   - 数学オリンピックの問題
   - 有名な未解決問題の部分結果
   - アルゴリズムの正当性証明

4. **証明の最適化**
   - 既存の証明を読み、理解する
   - より効率的な証明を提案
   - 可読性を向上させる

### 進捗確認チェックリスト

- [ ] 複雑な定理の証明ができる
- [ ] 自分のプロジェクトを完成させた
- [ ] 他の人のコードを理解できる
- [ ] Leanコミュニティと交流している
- [ ] 継続的に学習を続けている

---

## 総合的な学習指標

### 習熟度レベル

#### 入門レベル（フェーズ1-2完了）
- ✅ 基本的な構文が理解できる
- ✅ 簡単な関数が定義できる
- ✅ 基本的な型システムが理解できる

#### 初級レベル（フェーズ3完了）
- ✅ 簡単な証明が書ける
- ✅ 基本的なタクティクが使える
- ✅ 論理的な命題を扱える

#### 中級レベル（フェーズ4完了）
- ✅ 数学的概念を形式化できる
- ✅ `mathlib`を活用できる
- ✅ 中程度の複雑さの証明が書ける

#### 上級レベル（フェーズ5完了）
- ✅ 高度な数学の定理を証明できる
- ✅ 複雑な証明を構造化できる
- ✅ 分析や線形代数を扱える

#### 専門レベル（フェーズ6進行中）
- ✅ 自分の専門分野を形式化できる
- ✅ `mathlib`に貢献できる
- ✅ 独立して研究プロジェクトを進められる

---

## 学習リソース

### 公式ドキュメント
- [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)
- [Theorem Proving in Lean 4](https://leanprover.github.io/theorem_proving_in_lean4/)
- [Functional Programming in Lean](https://leanprover.github.io/functional_programming_in_lean/)
- [Lean 4 Manual](https://leanprover.github.io/lean4/doc/)

### コミュニティ
- [Lean Zulip Chat](https://leanprover.zulipchat.com/)
- [Lean Community](https://leanprover-community.github.io/)
- [mathlib](https://github.com/leanprover-community/mathlib4)

### 検索ツール
- [mathlib docs](https://leanprover-community.github.io/mathlib4_docs/)
- [mathlib search](https://leanprover-community.github.io/mathlib_docs/)

---

## 学習の進め方

### 推奨スケジュール

1. **週次目標設定**
   - 毎週、その週に達成するKGIを明確にする
   - 週末に進捗を振り返る

2. **演習問題への取り組み**
   - 基礎問題は必ず全て解く
   - 応用問題は理解度に応じて挑戦
   - わからない問題は、まず自分で調べ、それでも無理ならコミュニティに質問

3. **コードレビュー**
   - 自分のコードを定期的に見直す
   - `mathlib`のコードを読んで学習する
   - 他の人の証明を読んで理解する

4. **継続的な学習**
   - 毎日少しずつでもLeanに触れる
   - 新しい概念を学んだら、すぐに練習する
   - ドキュメントを積極的に読む

### 困ったときの対処法

1. **エラーメッセージを読む**
   - Leanのエラーメッセージは非常に詳細
   - エラーの意味を理解する

2. **検索を活用**
   - `mathlib`で類似の定理を探す
   - Zulipで過去の質問を検索

3. **コミュニティに質問**
   - Zulipチャットで質問
   - コードとエラーメッセージを共有
   - 何を試したかも伝える

---

## 評価とフィードバック

### 自己評価

各フェーズ終了時に、以下を確認してください：

- [ ] そのフェーズのKGIがすべて達成できたか
- [ ] 演習問題のどの程度を解けたか
- [ ] 次のフェーズに進む準備ができているか

### 継続的改善

- このロードマップは学習と共に更新していく
- 自分の理解度に応じて期間を調整する
- 興味のある分野があれば、そこに重点を置く

---

## まとめ

このロードマップに沿って学習を進めることで、Lean言語を体系的に習得できます。重要なのは：

1. **焦らず着実に**：各フェーズをしっかり理解してから次へ
2. **実践重視**：演習問題を積極的に解く
3. **コミュニティ活用**：困ったときは遠慮なく質問する
4. **継続的に学習**：毎日少しずつでも触れる

Happy proving! 🎉

---

**最終更新**: 2024年
**作成者**: Lean学習ロードマップ策定プロジェクト

