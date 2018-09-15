ALTER TABLE users ADD COLUMN email varchar(100) NOT NULL;
INSERT INTO users (username, first_name, last_name, email) VALUES ('kowal', 'Jan', 'Kowalski', 'kowal@gmail.com');
INSERT INTO users (username, first_name, last_name, email) VALUES ('dupa', 'Dupek', 'Dupalski', 'dupa@gmail.com');
INSERT INTO users (username, first_name, last_name, email) VALUES ('koks', '', 'Kowalski', 'kowal@gmail.com');
INSERT INTO users (username, first_name, last_name, email) VALUES ('blondyna', 'Beata', 'Sola', 'blondynka@gmail.com');
INSERT INTO users (username, first_name, last_name, email) VALUES ('kaczor', 'Donald', 'Tusk', 'kaczor@gmail.com');