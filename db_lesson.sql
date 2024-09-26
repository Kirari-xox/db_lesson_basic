Q1

mysql>USE db_lesson;

mysql> CREATE TABLE departments (
    -> department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20),
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );

mysql> ALTER TABLE departments MODIFY name VARCHAR(20) NOT NULL;


Q2

mysql> DESC people;

mysql>ALTER TABLE people ADD department_id INT unsigned AFTER email;


Q3
mysql> INSERT INTO departments (name)
    -> VALUES
    -> ('営業'),
    -> ('開発'),
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');

mysql> INSERT INTO people (name,department_id)
    -> VALUES
    -> ('佐藤',1),
    -> ('高橋',1),
    -> ('伊藤',1),
    -> ('渡辺',2),
    -> ('山本',2),
    -> ('中村',2),
    -> ('小林',2),
    -> ('加藤',3),
    -> ('吉田',4),
    -> ('山田',5);

mysql> INSERT INTO reports (person_id, content)
    -> VALUES
    -> (7, '9/20はsection1まで完了しました。'),
    -> (8, '9/21は資料作成をしました。'),
    -> (9, '9/22はsection6まで進みました。'),
    -> (10, '9/23は○○のデータを送りました。'),
    -> (11, '9/24はsection9の途中です。'),
    -> (12, '9/25はメールの確認をしました。'),
    -> (13, '9/26はsection11に入りました。'),
    -> (14, '9/27はsection13まで終わっています。'),
    -> (15, '9/28は早退いたします。'),
    -> (16, '10/1は○○のデータを削除しました。');


Q4
mysql>SELECT * FROM people WHERE department_id != 'NULL';


Q5
- 性別分け、年齢順にするためレコードの更新
  person_idが7,8,10,11,13,14をgender = '1'
  person_idが9,12,15,16をgender = '2'で更新
mysql> UPDATE people SET gender = '1' WHERE person_id = 7;

- それぞれのperson_idへ適当に年齢入れる
mysql> UPDATE people SET age = '21' WHERE person_id = 7;

mysql> SELECT name, age, gender FROM people WHERE gender = 1 ORDER BY age DESC;


Q6
SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

`people`のテーブルの中から`name`, `email`, `age`のカラムで絞って、
レコードの表示を指定する。
また、`department_id` = 1で部署が営業の人物であり、
ORDER BYで`created_at`で作成時間の昇順に並ぶように条件をつけている。


Q7
mysql> SELECT name FROM people WHERE age >=20 AND age < 30 AND gender = 2 OR age >= 40 AND age < 50 AND gender = 1;






