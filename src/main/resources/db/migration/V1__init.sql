CREATE TABLE users (
  id varchar (20) NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY UK_username (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users (username, first_name, last_name) VALUES ('kowalskij', 'Jan', 'Kowalski');