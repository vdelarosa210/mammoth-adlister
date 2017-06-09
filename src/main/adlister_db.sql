USE adlister_db;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(255),
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);