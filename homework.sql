CREATE TABLE `user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1

SELECT * FROM test.user_score;

INSERT INTO user_score (first_name, last_name, score) values ("Ahra", "Park", "100");
INSERT INTO user_score (first_name, last_name, score) values ("Ahra", "Lee", "80");
INSERT INTO user_score (first_name, last_name, score) values ("Hailey", "Yun", "100");
INSERT INTO user_score (first_name, last_name, score) values ("Ryan", "Yun", "90");
INSERT INTO user_score (first_name, last_name, score) values ("John", "Lee", "30");
INSERT INTO user_score (first_name, last_name, score) values ("John", "Park", "20");
INSERT INTO user_score (first_name, last_name, score) values ("John", "Yun", "10");

SELECT last_name, AVG(score), MIN(score), MAX(score) from user_score GROUP BY last_name;
SELECT last_name, AVG(score), MIN(score), MAX(score) from user_score GROUP BY 1 ORDER BY 2 DESC;
SELECT last_name from user_score;
SELECT DISTINCT (last_name) FROM user_score;
