# Lean 4 インストール・セットアップガイド

このドキュメントでは、Lean 4の開発環境を構築するための手順を説明します。

## 目次

1. [前提条件](#前提条件)
2. [Elanのインストール](#elanのインストール)
3. [Lean 4のインストール](#lean-4のインストール)
4. [Visual Studio Codeのセットアップ](#visual-studio-codeのセットアップ)
5. [プロジェクトの作成](#プロジェクトの作成)
6. [動作確認](#動作確認)
7. [トラブルシューティング](#トラブルシューティング)

---

## 前提条件

- macOS (このガイドはmacOSを想定しています)
- **Homebrew**がインストールされていること
- ターミナルアクセス
- インターネット接続

### Homebrewのインストール（未インストールの場合）

Homebrewがインストールされていない場合は、以下のコマンドでインストールできます：

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

インストール後、ターミナルを再起動するか、以下のコマンドで環境変数を読み込みます：

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

---

## Elanのインストール

**Elan**は、Leanのバージョン管理ツールです。複数のLeanバージョンを管理し、プロジェクトごとに異なるバージョンを使用できます。

### Homebrewを使用したインストール手順

1. ターミナルを開きます（`/Applications/Utilities/Terminal.app` または iTerm2など）

2. 以下のコマンドでElanをインストールします：

```bash
brew install elan-init
```

3. インストールが成功したことを確認します：

```bash
elan --version
```

このコマンドでバージョン情報が表示されれば、インストールは成功です。

**注意**: HomebrewでインストールされたElanは、自動的にパスが通るため、追加の環境変数設定は不要です。

### Elanの主なコマンド

```bash
# 利用可能なLeanバージョンを表示
elan toolchain list available

# 最新の安定版をインストール
elan toolchain install stable

# 現在のツールチェーンを確認
elan show

# デフォルトのツールチェーンを設定
elan default stable
```

---

## Lean 4のインストール

Elanがインストールされていれば、Lean 4は自動的に管理されます。

### インストール手順

1. ターミナルで以下のコマンドを実行して、最新の安定版Lean 4をインストールします：

```bash
elan toolchain install stable
elan default stable
```

2. Leanが正しくインストールされたことを確認します：

```bash
lean --version
```

3. **Lake**（Leanのビルドシステム）も同時にインストールされます。確認します：

```bash
lake --version
```

---

## Visual Studio Codeのセットアップ

### VS Codeのインストール

Homebrewを使用してVS Codeをインストールすることを推奨します：

```bash
brew install --cask visual-studio-code
```

または、公式サイトから直接インストールすることもできます：

1. [Visual Studio Code公式サイト](https://code.visualstudio.com/)からmacOS用インストーラーをダウンロード
2. ダウンロードした`.zip`ファイルを展開し、`Visual Studio Code.app`を`Applications`フォルダに移動
3. VS Codeを起動

### Lean 4拡張機能のインストール

1. VS Codeを起動
2. 左側のサイドバーから「拡張機能」アイコン（四角形が4つ並んだアイコン）をクリック
3. 検索バーに「**Lean 4**」と入力
4. 「**Lean 4**」（作成者：leanprover）拡張機能を選択して「インストール」をクリック

   - 拡張機能ID: `leanprover.lean4`

5. インストール後、VS Codeを再起動（推奨）

### VS Codeの設定確認

Lean 4拡張機能が正しく動作しているか確認します：

1. VS Codeを起動
2. 下部のステータスバーに「Lean 4」のアイコン（∀記号）が表示されることを確認
3. ターミナル（VS Code内）で以下を実行してパスが通っていることを確認：

```bash
which lean
which lake
```

---

## プロジェクトの作成

### 方法1: VS Codeからの作成（推奨）

1. VS Codeを起動
2. コマンドパレットを開く（`Cmd + Shift + P`）
3. 「**Lean: New Project**」と入力して選択
4. 「**Create Standalone Project**」を選択
5. プロジェクト名を入力（例：`MyFirstLeanProject`）
6. 保存場所を選択
7. プロジェクトが作成されたら、VS Codeでフォルダを開く

### 方法2: コマンドラインからの作成

```bash
# 新しいディレクトリを作成
mkdir MyFirstLeanProject
cd MyFirstLeanProject

# Lakeを使用してプロジェクトを初期化
lake new MyFirstLeanProject
```

### プロジェクト構造

プロジェクトが作成されると、以下のような構造になります：

```
MyFirstLeanProject/
├── MyFirstLeanProject.lean
├── MyFirstLeanProject/
│   └── Basic.lean
├── lakefile.lean
└── lean-toolchain
```

- `lean-toolchain`: 使用するLeanのバージョンを指定するファイル
- `lakefile.lean`: プロジェクトの設定ファイル
- `.lean`ファイル: Leanのソースコード

---

## 動作確認

### 基本的なLeanコードの実行

1. プロジェクト内の`MyFirstLeanProject.lean`を開きます

2. 以下のコードを入力または確認します：

```lean
def hello : String := "Hello, Lean!"

#eval hello
```

3. ファイルを保存します（`Cmd + S`）

4. VS Codeの下部にあるLeanの情報パネルに、以下のような出力が表示されることを確認します：

```
"Hello, Lean!"
```

### 証明の例

以下のコードを試してみてください：

```lean
#check Nat

def add_one (n : Nat) : Nat := n + 1

#eval add_one 5

theorem add_one_zero : add_one 0 = 1 := by rfl

#check add_one_zero
```

コードを保存すると、Leanが自動的に型チェックと証明検証を行います。

---

## トラブルシューティング

### 問題1: `elan: command not found`

**解決方法（Homebrew経由でインストールした場合）:**

Homebrewでインストールした場合は、通常パスは自動的に通ります。問題が発生する場合：

```bash
# Homebrewでインストールされているか確認
brew list elan-init

# パスを確認（/opt/homebrew/bin/elan が含まれているはず）
which elan

# まだ見つからない場合、Homebrewのパスが通っているか確認
echo $PATH | grep homebrew

# 必要に応じて、~/.zshrcに以下を追加
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### 問題2: VS CodeでLean 4拡張機能が動作しない

**解決方法:**
1. VS Codeを再起動
2. コマンドパレット（`Cmd + Shift + P`）で「**Lean: Restart Lean Server**」を実行
3. ターミナルで`lean --version`を実行し、パスが通っていることを確認

### 問題3: プロジェクトがビルドできない

**解決方法:**
```bash
# プロジェクトディレクトリで実行
lake clean
lake build
```

### 問題4: Leanのバージョンエラー

**解決方法:**
```bash
# プロジェクトのlean-toolchainファイルを確認
cat lean-toolchain

# 必要なバージョンをインストール
elan toolchain install <version>

# デフォルトを設定
elan default <version>
```

### 問題5: 依存関係のインストールエラー

**解決方法:**
```bash
# プロジェクトディレクトリで実行
lake update
lake build
```

---

## 次のステップ

セットアップが完了したら、以下のリソースで学習を進めましょう：

1. **[Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)** - 数学徒向けの包括的なチュートリアル
2. **[Functional Programming in Lean](https://leanprover.github.io/functional_programming_in_lean/)** - 関数型プログラミングの学習
3. **[Theorem Proving in Lean 4](https://leanprover.github.io/theorem_proving_in_lean4/)** - 定理証明の詳細なガイド
4. **[Lean 4 Manual](https://leanprover.github.io/lean4/doc/)** - 公式マニュアル

---

## 参考リンク

- [Lean 4公式サイト](https://leanprover.github.io/)
- [Lean Community](https://leanprover-community.github.io/)
- [Lean 4 GitHub](https://github.com/leanprover/lean4)
- [Elan公式ドキュメント](https://github.com/leanprover/elan)

---

## まとめ

このガイドに従うことで、Lean 4の開発環境が整います。問題が発生した場合は、上記のトラブルシューティングセクションを参照するか、[Lean Zulip Chat](https://leanprover.zulipchat.com/)でコミュニティに相談してください。

Happy proving! 🎉

