# フェーズ2: 論理と証明の基礎

## 演習問題

このディレクトリには、フェーズ2の演習問題を配置します。

これらの問題は [Mathematics in Lean Chapter 3: Logic](https://leanprover-community.github.io/mathematics_in_lean/C03_Logic.html) の内容を基に作成されています。

詳細は [`../../docs/02_roadmap.md`](../../docs/02_roadmap.md#フェーズ2-型システムと関数定義の理解) を参照してください。

## 学習目標

このフェーズでは、以下の論理的な概念を習得します：

- **含意（Implication）** (`→`): 「ならば」を表す論理演算子
- **全称量化（Universal Quantifier）** (`∀`): 「すべての〜について」を表す
- **存在量化（Existential Quantifier）** (`∃`): 「ある〜が存在して」を表す
- **否定（Negation）** (`¬`): 「〜ではない」を表す
- **論理積（Conjunction）** (`∧`): 「かつ」を表す
- **同値（Iff）** (`↔`): 「必要十分条件」を表す
- **論理和（Disjunction）** (`∨`): 「または」を表す

## 問題一覧

### 基礎問題

1. **含意と全称量化** (`exercise1.lean`)
   - `→`（含意）の使い方
   - `∀`（全称量化子）の使い方
   - `intro`タクティクの基本

2. **存在量化** (`exercise2.lean`)
   - `∃`（存在量化子）の使い方
   - `use`タクティクの基本
   - 存在量化された命題の証明

3. **否定** (`exercise3.lean`)
   - `¬`（否定）の使い方
   - `by_contra`タクティクによる背理法
   - 二重否定の除去

4. **論理積と同値** (`exercise4.lean`)
   - `∧`（論理積）の使い方
   - `↔`（同値）の使い方
   - `.1`と`.2`による要素の取り出し

5. **論理和** (`exercise5.lean`)
   - `∨`（論理和）の使い方
   - `left`と`right`タクティク
   - `cases`タクティクによる場合分け

### 応用問題

6. **論理演算子の組み合わせ** (`exercise6.lean`)
   - 複数の論理演算子を組み合わせた命題
   - 複雑な証明の構造化

7. **数列の収束** (`exercise7.lean`)
   - C03_Logicの3.6節に対応
   - 数列の収束の定義
   - `ConvergesTo`を使った証明

各問題は個別の`.lean`ファイルとして作成されています。

## 推奨学習順序

1. exercise1.lean から順に取り組むことを推奨します
2. 各問題で紹介されるタクティクを理解してから次へ進む
3. 分からない場合は、Mathematics in Leanの該当セクションを参照

## 重要なタクティク

このフェーズで習得する主要なタクティク：

- `intro`: 仮定や全称量化された変数を導入
- `apply`: 定理や補題を適用
- `use`: 存在量化された命題に対して具体例を与える
- `by_contra`: 背理法（矛盾を示す）
- `cases`: 場合分け
- `left` / `right`: 論理和のどちらかを選択
- `.1` / `.2`: 論理積の要素を取り出す

## 参考資料

- [Mathematics in Lean - Chapter 3: Logic](https://leanprover-community.github.io/mathematics_in_lean/C03_Logic.html)
- [Theorem Proving in Lean 4 - Basic Logic](https://leanprover.github.io/theorem_proving_in_lean4/basic_logic.html)

