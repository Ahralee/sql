SELECT * FROM test.user_score;


INSERT INTO user_score (first_name, last_name, score) values ("John", "Lee", "30");
INSERT INTO user_score (first_name, last_name, score) values ("John", "Park", "20");
INSERT INTO user_score (first_name, last_name, score) values ("John", "Yun", "10");

SELECT last_name, AVG(score), MIN(score), MAX(score) from user_score GROUP BY last_name;
SELECT last_name, AVG(score), MIN(score), MAX(score) from user_score GROUP BY 1 ORDER BY 2 DESC;
SELECT last_name from user_score;
SELECT DISTINCT (last_name) FROM user_score;
