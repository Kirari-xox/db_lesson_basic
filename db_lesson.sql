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


