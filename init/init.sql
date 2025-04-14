-- ここに作成するテーブルを記述する
-- テスト用のテーブル
CREATE TABLE IF NOT EXISTS test_table (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
-- テスト用のデータを挿入する
INSERT INTO test_table (id, name) VALUES
(1, 'テスト')