# Marp-Test

Marp でスライド作るテスト

# Marp
## 環境構築
### Node.js >= 18 のインストール
``` bash
# Node.js の公式リポジトリを追加 (推奨バージョン: 16.x または 18.x)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

# Node.js と npm をインストール
sudo apt install -y nodejs

# バージョン確認
node -v
npm -v
```

### Marp のインストール
``` bash
# グローバルインストール
sudo npm install -g @marp-team/marp-cli

# インストール確認
marp --version
```

## 使い方
### Markdown から PDF に変換
``` bash
marp EXAMPLE.md -o EXAMPLE.pdf
```

### スライドのプレビュー
``` bash
marp --server --watch DIRECTORY
```

