# Database Management System for Library Management

## Project Title
**Database Management System**

## Description
This project is a fully implemented database management system for **[library]**. It showcases a real-world application where users can manage and query data using MySQL. The system is designed to handle complex relationships and manage large datasets effectively.

In this project, I have created a relational database that consists of multiple tables with proper constraints such as Primary Keys (PK), Foreign Keys (FK), Unique Constraints, and Not Null constraints to ensure data integrity and proper relationship between entities.

### Use Case Example:
- **Library Management System** – This project includes tables for authors, books, patrons, and loans.
- **Clinic Booking System** – Contains tables for patients, doctors, appointments, and treatments.
- **Inventory Tracking System** – Keeps track of products, suppliers, and transactions.

## Features
- Well-structured relational database using MySQL.
- Includes all necessary **CREATE TABLE** statements with constraints.
- Supports one-to-many, many-to-many, and one-to-one relationships between entities.
- Designed to ensure data integrity and consistency through relational constraints.

## Database Schema
The database schema consists of the following main entities (tables):

1. **Authors** - Stores information about book authors.
2. **Books** - Stores information about books in the library, with a foreign key linking to the authors.
3. **Patrons** - Stores information about library members.
4. **Loans** - Tracks the books that patrons have borrowed.

### ERD (Entity-Relationship Diagram)
The ERD for the database can be found here:



![ERD](https://github.com/Sumbati10/DATABASE_CREATION/blob/main/ERD.png)

## How to Run/Setup the Project

### Requirements
- MySQL Server installed
- MySQL Workbench or any MySQL client for interacting with the database
- Access to the terminal/command line

### Setup Instructions
1. Clone this repository to your local machine.
2. Open MySQL Workbench or any MySQL client.
3. Run the SQL file to create the tables and relationships in the database.
4. You can start querying the database to insert, update, or delete records.

## Conclusion
This project demonstrates how to design and implement a full-featured relational database system using MySQL. The system is modular and can be extended to include more features such as searching, filtering, or advanced querying.

## License
MIT License
