# OCaml Data Structures and Algorithms

OCamlでデータ構造とアルゴリズムを学習するためのリポジトリです。

## 📁 プロジェクト構成

```
.
├── lib/                    # ライブラリソースコード
│   ├── data_structures/    # データ構造の実装
│   └── algorithms/         # アルゴリズムの実装
├── test/                   # テストファイル
├── examples/               # 使用例とサンプルコード
├── bin/                    # 実行可能ファイル
└── README.md
```

## 🚀 セットアップ

### 前提条件

- OCaml (>= 4.14)
- Dune (>= 3.0)
- OPAM (推奨)

### インストール

```bash
# リポジトリのクローン
git clone <repository-url>
cd DataStructure

# 依存関係のインストール
opam install . --deps-only

# ビルド
dune build
```

## 🏃‍♂️ 実行方法

### デモの実行

```bash
dune exec demo
```

### テストの実行

```bash
dune runtest
```

### 例題の実行

```bash
# スタックを使った括弧の対応チェック
dune exec stack_example
```

## 📚 実装済みのデータ構造

### Stack (スタック)
- `empty`: 空のスタックを作成
- `push`: 要素をプッシュ
- `pop`: 要素をポップ
- `peek`: トップ要素を参照
- `is_empty`: 空かどうかの判定
- `size`: サイズの取得

## 🔍 実装済みのアルゴリズム

### Sorting (ソート)
- `bubble_sort`: バブルソート
- `quick_sort`: クイックソート

## 🎯 学習目標

このリポジトリを通じて以下を学習します：

1. **基本的なデータ構造**
   - [ ] Stack (完了)
   - [ ] Queue
   - [ ] Linked List
   - [ ] Binary Tree
   - [ ] Hash Table

2. **ソートアルゴリズム**
   - [x] Bubble Sort (完了)
   - [x] Quick Sort (完了)
   - [ ] Merge Sort
   - [ ] Heap Sort
   - [ ] Insertion Sort

3. **探索アルゴリズム**
   - [ ] Linear Search
   - [ ] Binary Search
   - [ ] Depth-First Search (DFS)
   - [ ] Breadth-First Search (BFS)

4. **グラフアルゴリズム**
   - [ ] Dijkstra's Algorithm
   - [ ] Kruskal's Algorithm
   - [ ] Topological Sort

## 🔧 開発

### 新しいデータ構造の追加

1. `lib/data_structures/` に `.ml` と `.mli` ファイルを作成
2. `lib/data_structures/data_structures.ml` にモジュールを追加
3. `test/` にテストを追加
4. `examples/` に使用例を追加

### 新しいアルゴリズムの追加

1. `lib/algorithms/` に `.ml` と `.mli` ファイルを作成
2. `lib/algorithms/algorithms.ml` にモジュールを追加
3. `test/` にテストを追加

## 📖 参考資料

- [Introduction to Algorithms (CLRS)](https://mitpress.mit.edu/books/introduction-algorithms-third-edition)
- [OCaml Documentation](https://ocaml.org/docs)
- [Real World OCaml](https://dev.realworldocaml.org/)

## 🤝 貢献

バグ報告、機能要求、プルリクエストを歓迎します！

## 📄 ライセンス

このプロジェクトはMITライセンスの下で公開されています。
