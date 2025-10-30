# Lean言語学習プロジェクト

このリポジトリは、Lean言語を体系的に学習するための個人学習プロジェクトです。

## 📚 学習ロードマップ

[Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)を主教材として、6つのフェーズで学習を進めます。

### 学習フェーズ

1. **フェーズ1**: 環境構築と基本構文習得
2. **フェーズ2**: 型システムと関数定義の理解
3. **フェーズ3**: 論理と証明の基礎
4. **フェーズ4**: 数学的概念の形式化
5. **フェーズ5**: 実分析・線形代数への応用
6. **フェーズ6**: 高度な定理証明と実践プロジェクト

詳細は [`docs/02_roadmap.md`](docs/02_roadmap.md) を参照してください。

## 🗂️ プロジェクト構造

```
Lean/
├── README.md              # このファイル
├── .gitignore             # Git除外設定
├── docs/                   # ドキュメント
│   ├── 01_setup.md        # セットアップガイド
│   └── 02_roadmap.md      # 学習ロードマップ
├── exercises/              # 演習問題
│   ├── phase1/            # フェーズ1の演習
│   ├── phase2/            # フェーズ2の演習
│   ├── phase3/            # フェーズ3の演習
│   ├── phase4/            # フェーズ4の演習
│   ├── phase5/            # フェーズ5の演習
│   └── phase6/            # フェーズ6の演習
├── examples/               # 参考例とサンプルコード
└── projects/               # 実践プロジェクト（フェーズ6）
```

## 🚀 セットアップ

詳細なセットアップ手順は [`docs/01_setup.md`](docs/01_setup.md) を参照してください。

### クイックスタート

1. **Lean 4のインストール**（Elanを使用）
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh
   elan toolchain install stable
   elan default stable
   ```

2. **VS Code拡張機能のインストール**
   - VS Codeで「Lean 4」拡張機能をインストール

3. **プロジェクトの作成**
   - VS Codeコマンドパレットから「Lean: New Project」

## 📖 学習リソース

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

## 🎯 学習目標

各フェーズで以下を達成します：

- ✅ 明確なKGI（Key Goal Indicator）の設定
- ✅ 基礎・応用の演習問題への取り組み
- ✅ 進捗確認チェックリストの達成
- ✅ 次のフェーズへの準備

## 📝 使用方法

1. ロードマップを確認して現在のフェーズを把握
2. 該当フェーズの演習問題に取り組む
3. 進捗をチェックリストで確認
4. 必要に応じて`examples/`のサンプルコードを参照

## 🤝 コントリビューション

このプロジェクトは個人学習用ですが、改善提案やフィードバックは歓迎します。

## 📄 ライセンス

このプロジェクトは学習目的で使用しています。

---

**Happy proving!** 🎉

