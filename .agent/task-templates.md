# AI Agent タスクテンプレート集

このディレクトリには、各Agentが実行するタスクの具体的なテンプレートを格納します。

---

## 📋 タスクテンプレート一覧

### 1. ExerciseCreatorタスク

#### テンプレート: Phase1基礎問題作成

```markdown
**タスクID**: EXERCISE-PHASE1-BASIC-{N}
**Agent**: ExerciseCreator-Phase1
**優先度**: High
**推定時間**: 30-45分

## タスク概要
Phase1の基礎問題{N}を作成する。

## 入力情報
- **参照ロードマップ**: docs/02_roadmap.md (フェーズ1セクション)
- **既存問題**: exercises/phase1/exercise1.lean, exercise2.lean
- **学習内容**: 基本構文、関数定義、型システム

## 要件
- [ ] 問題文が明確で理解しやすい
- [ ] TODOマーカー（`???`）を適切に配置
- [ ] 動作確認用の`#eval`例を含める
- [ ] 期待される出力をコメントで明記
- [ ] ファイル名は`exercise{N}.lean`形式

## 出力
- **ファイル**: exercises/phase1/exercise{N}.lean
- **形式**: Leanコード + コメント

## 実行コマンド例
「Phase1の基礎問題3を作成してください。型システムの理解を深める問題で、
複数の基本型（Nat, String, Bool）を扱う内容にしてください。」

## 完了条件
- [ ] ファイルが作成された
- [ ] コンパイルエラーがない（Validator Agentで確認）
- [ ] README.mdが更新された（手動）
```

---

#### テンプレート: Phase1応用問題作成

```markdown
**タスクID**: EXERCISE-PHASE1-ADVANCED-{N}
**Agent**: ExerciseCreator-Phase1
**優先度**: Medium
**推定時間**: 45-60分

## タスク概要
Phase1の応用問題{N}を作成する。

## 入力情報
- **参照ロードマップ**: docs/02_roadmap.md (フェーズ1応用問題)
- **基礎問題**: exercises/phase1/exercise*.lean（既存）

## 要件
- [ ] 基礎問題よりも難易度が高い
- [ ] 複数の概念を組み合わせる
- [ ] 複数の解法が可能（可能な場合）
- [ ] ファイル名は`exercise{N}_advanced.lean`形式

## 出力
- **ファイル**: exercises/phase1/exercise{N}_advanced.lean

## 完了条件
- [ ] ファイルが作成された
- [ ] 適切な難易度設定
- [ ] README.mdに追加された
```

---

### 2. SampleCodeCreatorタスク

#### テンプレート: 基本サンプル作成

```markdown
**タスクID**: SAMPLE-BASIC-{CATEGORY}-{N}
**Agent**: SampleCodeCreator
**優先度**: Medium
**推定時間**: 30-45分

## タスク概要
{category}カテゴリのサンプルコード{N}を作成する。

## カテゴリ
- `basic`: 基本構文
- `proofs`: 証明パターン
- `math`: 数学的形式化
- `advanced`: 高度な技法

## 要件
- [ ] 詳細なコメント（各行の説明）
- [ ] 段階的な説明（簡単→複雑）
- [ ] 実行可能でエラーなし
- [ ] 教育的価値が高い

## 出力
- **ファイル**: examples/{category}/{description}.lean
- **例**: examples/basic/pattern_matching.lean

## 完了条件
- [ ] ファイルが作成された
- [ ] コンパイルエラーなし
- [ ] examples/README.mdが更新された
```

---

### 3. SolutionWriterタスク

#### テンプレート: 解答作成

```markdown
**タスクID**: SOLUTION-PHASE{N}-EX{M}
**Agent**: SolutionWriter-Phase{N}
**優先度**: High（演習作成後）
**推定時間**: 45-60分

## タスク概要
Phase{N}の演習問題{M}の解答と解説を作成する。

## 入力情報
- **問題ファイル**: exercises/phase{N}/exercise{M}.lean
- **参照**: docs/02_roadmap.md

## 要件
- [ ] 完全に動作する解答コード
- [ ] 複数の解法を提示（可能な場合）
- [ ] 詳細な解説（なぜその方法か）
- [ ] よくある間違いへの言及
- [ ] 発展的内容へのリンク

## 出力
- **解答コード**: exercises/phase{N}/solutions/solution{M}.lean
- **解説**: exercises/phase{N}/solutions/explanations.mdに追加

## 完了条件
- [ ] 解答コードが動作する
- [ ] 解説が追加された
- [ ] solutions/README.mdが更新された
```

---

### 4. Validatorタスク

#### テンプレート: コード検証

```markdown
**タスクID**: VALIDATE-{FILENAME}
**Agent**: CodeValidator
**優先度**: Medium
**推定時間**: 15-30分

## タスク概要
{filename}.leanの検証を行う。

## 検証項目
- [ ] 構文エラーのチェック
- [ ] 型エラーのチェック
- [ ] コメントの適切性
- [ ] 命名規則の遵守
- [ ] スタイルの一貫性

## 出力
- **レポート**: validation/reports/{timestamp}_{filename}.md
- **エラー修正提案**: レポート内に記載

## 完了条件
- [ ] 検証が完了した
- [ ] レポートが生成された
- [ ] エラーがあれば修正提案を提示
```

---

## 🎯 タスク実行フロー

### フェーズ1完了までの推奨タスク順序

```
1. EXERCISE-PHASE1-BASIC-3  (基礎問題3)
2. EXERCISE-PHASE1-BASIC-4  (基礎問題4)
3. EXERCISE-PHASE1-BASIC-5  (基礎問題5)
4. VALIDATE (上記3問を一括検証)
5. EXERCISE-PHASE1-ADVANCED-1 (応用問題1)
6. EXERCISE-PHASE1-ADVANCED-2 (応用問題2)
7. SAMPLE-BASIC-PATTERN_MATCHING (サンプル作成)
8. VALIDATE (全Phase1問題)
9. SOLUTION-PHASE1-EX1 (解答1)
10. SOLUTION-PHASE1-EX2 (解答2)
...
```

---

## 📝 タスク割り当ての例

### 並列実行可能なタスク

以下のタスクは同時に実行可能：

```
並列グループ1:
- EXERCISE-PHASE1-BASIC-3
- EXERCISE-PHASE1-BASIC-4
- SAMPLE-BASIC-FUNCTIONS

並列グループ2:
- SOLUTION-PHASE1-EX1
- SOLUTION-PHASE1-EX2
- SOLUTION-PHASE1-EX3
```

### 順次実行が必要なタスク

```
1. EXERCISE-PHASE1-BASIC-3
   ↓
2. VALIDATE-EXERCISE3
   ↓
3. SOLUTION-PHASE1-EX3
```

---

## 🚀 実際のタスク実行コマンド例

### Agentへの指示テンプレート

```markdown
以下のタスクを実行してください：

**タスク**: EXERCISE-PHASE1-BASIC-3
**詳細**: 
- Phase1の基礎問題3を作成
- 複数の基本型（Nat, String, Bool）を扱う内容
- 3つの値を操作する関数を定義する問題
- exercises/phase1/exercise3.leanとして保存

**参考**: 
- docs/02_roadmap.mdのフェーズ1セクション
- exercises/phase1/exercise1.lean（スタイル参考）
```

---

## 📊 進捗追跡

### タスク完了チェックリスト

各タスク完了時に以下を確認：

- [ ] タスクが完了した
- [ ] 出力ファイルが作成された
- [ ] Validator Agentで検証済み
- [ ] 関連READMEが更新された
- [ ] 進捗が記録された

---

**最終更新**: 2024年

