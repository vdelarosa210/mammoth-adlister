USE adlister_db;

CREATE TABLE users (
id INT NOT NULL,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE ads (
  id INT NOT NULL,
  user_id VARCHAR(255),
  title VARCHAR(255),
  description VARCHAR(255)
);