-- Insert Authors
INSERT INTO author (name, birth_date, country_code) VALUES
('J.K. Rowling', '1965-07-31', 'GB'),
('George Orwell', '1903-06-25', 'GB'),
('J.R.R. Tolkien', '1892-01-03', 'ZA'),
('Isaac Asimov', '1920-01-02', 'US'),
('Agatha Christie', '1890-09-15', 'GB');

-- Insert Books
INSERT INTO book (title, year, isbn, genre) VALUES
('Harry Potter and the Philosophers Stone', 1997, '0747532699', 'Fantasy'),
('1984', 1949, '0451524934', 'Dystopian'),
('The Hobbit', 1937, '0345339681', 'Fantasy'),
('Foundation', 1951, '0553293354', 'Science Fiction'),
('Murder on the Orient Express', 1934, '0062693662', 'Mystery');

-- Insert Book-Author Relationships
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),  -- Harry Potter -> J.K. Rowling
(2, 2),  -- 1984 -> George Orwell
(3, 3),  -- The Hobbit -> J.R.R. Tolkien
(4, 4),  -- Foundation -> Isaac Asimov
(5, 5);  -- Murder on the Orient Express -> Agatha Christie

-- Insert Members
INSERT INTO member (name, email, phone, address) VALUES
('Alice Johnson', 'alice@example.com', '1234567890', '123 Maple St'),
('Bob Smith', NULL, '9876543210', '456 Oak St'), -- No email
('Charlie Davis', 'charlie.d@example.com', '5551234567', '789 Pine St');

-- Insert Borrow Transactions
INSERT INTO borrow_transaction (borrow_date, expected_return_date, actual_return_date, member_id, book_id) VALUES
('2024-02-01', '2024-02-15', '2024-02-14', 1, 1),  -- Alice borrowed Harry Potter, returned early
('2024-02-10', '2024-02-25', NULL, 2, 3),  -- Bob borrowed The Hobbit, not yet returned
('2024-02-12', '2024-02-26', '2024-02-28', 3, 5);  -- Charlie borrowed Murder on the Orient Express, returned late
