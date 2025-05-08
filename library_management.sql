-- library_management.sql

-- Create Authors Table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,    -- Primary Key
    name VARCHAR(255) NOT NULL,                   -- Name cannot be NULL
    dob DATE NOT NULL,                            -- Date of Birth cannot be NULL
    UNIQUE(name)                                  -- Ensure no duplicate author names
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,      -- Primary Key
    title VARCHAR(255) NOT NULL,                  -- Book title cannot be NULL
    author_id INT,                                -- Foreign Key to Authors
    published_year YEAR,                          -- Year of publication
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE, -- One-to-Many (1:M) relationship with Authors
    UNIQUE(title)                                 -- Ensure no duplicate titles
);

-- Create Patrons Table
CREATE TABLE Patrons (
    patron_id INT AUTO_INCREMENT PRIMARY KEY,    -- Primary Key
    name VARCHAR(255) NOT NULL,                   -- Name cannot be NULL
    email VARCHAR(255) NOT NULL,                  -- Email cannot be NULL
    UNIQUE(email)                                 -- Ensure no duplicate emails
);

-- Create Loans Table (Many-to-Many relationship between Books and Patrons)
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,      -- Primary Key
    book_id INT,                                  -- Foreign Key to Books
    patron_id INT,                                -- Foreign Key to Patrons
    loan_date DATE NOT NULL,                      -- Loan date cannot be NULL
    return_date DATE,                             -- Return date (nullable)
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE, -- Foreign Key to Books
    FOREIGN KEY (patron_id) REFERENCES Patrons(patron_id) ON DELETE CASCADE, -- Foreign Key to Patrons
    CHECK (loan_date <= IFNULL(return_date, CURRENT_DATE))  -- Loan date must be earlier than return date
);

-- Sample Data for Authors
INSERT INTO Authors (name, dob) VALUES
('George Orwell', '1903-06-25'),
('J.K. Rowling', '1965-07-31'),
('J.R.R. Tolkien', '1892-01-03');

-- Sample Data for Books
INSERT INTO Books (title, author_id, published_year) VALUES
('1984', 1, 1949),
('Harry Potter and the Philosopher\'s Stone', 2, 1997),
('The Hobbit', 3, 1937);

-- Sample Data for Patrons
INSERT INTO Patrons (name, email) VALUES
('Alice Johnson', 'alice.johnson@example.com'),
('Bob Smith', 'bob.smith@example.com');

-- Sample Data for Loans
INSERT INTO Loans (book_id, patron_id, loan_date, return_date) VALUES
(1, 1, '2025-05-01', '2025-05-15'),
(2, 2, '2025-05-03', '2025-05-17');

