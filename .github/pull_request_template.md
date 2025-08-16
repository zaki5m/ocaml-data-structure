<!--
You are GitHub Copilot. Review ONLY the changes in this PR.
Use the rubric below; cite concrete files/lines; propose minimal diffs.

## Review rubric (Japanese + English)

1) 正確性 (Correctness)
- 基本操作は仕様どおりか
- 不変条件は維持されているか（例: サイズ>=0、順序関係、木のバランス等）
- エッジケース（空、単一要素、重複、境界、オーバーフロー）を扱っているか

2) 効率性 (Efficiency)
- 時間計算量/空間計算量は期待値と一致するか
- 不要なコピー・再計算・アロケーションを減らしているか
- 再帰は末尾再帰化できるか、イミュータブル/ミュータブルの選択は妥当か

3) OCaml ベストプラクティス
- 関数型パラダイム（不変データ優先、Option/Resultで失敗を表現）
- 必要十分な型注釈（公開 API、パターン網羅性の担保）
- パターンマッチは警告なしで網羅的か（_ 乱用しない）
- 可能な限り純粋関数、例外は最小限

4) テストカバレッジ
- 基本操作のユニットテスト
- 境界/異常系のテスト
- プロパティベーステスト（QCheck等）が有効なら提案
- 失敗時メッセージは原因特定に十分か

5) ドキュメンテーション
- 関数の説明、前提条件/事後条件、計算量
- 使用例（doctest/expect tests可）

## Data-structure specific
- Stack: push/pop/top/is_empty、空popの扱い
- Queue: enqueue/dequeue/front/is_empty、二重リスト/差分リスト等の実装妥当性
- Tree: 挿入・削除・検索、順序関係、不変条件（平衡木なら回転の正しさ）
- Sorting: 安定性、比較器の扱い、汎用型対応

## Style
- 命名: 関数/型 snake_case、モジュール PascalCase、定数 UPPER_CASE
- インデント: 2 spaces（ocamlformat/dune 準拠）
- コメント: 公開APIに docstring、複雑部は意図を説明
-->

### 変更概要
- （例）`Stack`/`Queue`/`BST` を実装、基本操作と境界条件を追加

### チェックリスト（作者記入）
- [ ] 不変条件を README か mli に明記
- [ ] 計算量を docstring に記載
- [ ] 警告なし（`-warn-error` 有効）
- [ ] ユニット/プロパティテストを追加

### 補足
- 入出力・再現手順など
