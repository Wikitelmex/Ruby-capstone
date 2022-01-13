CREATE TABLE genre (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(100)
);

CREATE TABLE author (
  id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE label (
  id INT PRIMARY KEY NOT NULL,
  title VARCHAR(200),
  color VARCHAR(20)
);

CREATE TABLE item (
  id INT PRIMARY KEY NOT NULL,
  genre_id INT,
  author_id INT,
  lable_id INT,
  publish_date DATE,
  archived BOOLEAN,
  CONSTRAINT genre_id
    FOREIGN KEY (genre_id)
      REFERENCES genre(id),
 CONSTRAINT author_id
    FOREIGN KEY (author_id)
      REFERENCES author(id),
  CONSTRAINT lable_id
    FOREIGN KEY (lable_id)
      REFERENCES label(id)
);


CREATE TABLE book (
  id INT,
  publisher VARCHAR(120),
  cover_state VARCHAR(120),
  PRIMARY KEY (id),
  CONSTRAINT id
    FOREIGN KEY (id)
      REFERENCES item(id)
);

