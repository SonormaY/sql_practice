CREATE DATABASE "library-management-system";

CREATE TABLE author (
  author_id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  birth_date DATE,
  country_code CHAR(2)
);

CREATE TABLE book (
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  year INT NOT NULL CHECK(year >= 0 AND year <= EXTRACT(YEAR FROM CURRENT_DATE)),
  isbn VARCHAR(13) NOT NULL UNIQUE CHECK(LENGTH(isbn) IN (10, 13)),
  genre VARCHAR(20)
);

CREATE TABLE book_author (
  book_id INT,
  author_id INT,
  PRIMARY KEY (book_id, author_id),
  CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES book(book_id),
  CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(author_id)
);

CREATE TABLE member (
  member_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  email VARCHAR(30),
  phone VARCHAR(12) NOT NULL,
  address VARCHAR(50)
);

CREATE TABLE borrow_transaction (
  borrow_transaction_id SERIAL PRIMARY KEY,
  borrow_date DATE NOT NULL,
  expected_return_date DATE NOT NULL,
  actual_return_date DATE,
  member_id INT,
  book_id INT,
  CONSTRAINT fk_member FOREIGN KEY(member_id) REFERENCES member(member_id),
  CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES book(book_id)
);
