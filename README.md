# LIBRARY-MANAGEMENT-SYSTEM
The library management system is designed to efficiently organise and manage library operations. It offers a comprehensive solution for maintaining library resources, managing staff, 
serving patrons, and tracking book transactions

Database Creation:
First,  create a database named "library" using the CREATE DATABASE statement. This is where all your library-related data will be stored.
Table Creation:
create several tables to store different types of information:

Branch:
Stores information about library branches like branch number, manager ID, address, and contact number.

Employee: 
Stores details of library employees such as employee ID, name, position, salary, and the branch they belong to.

Books:
Stores information about library books including ISBN, title, category, rental price, status, author, and publisher.

Customer: 
Stores information about library customers like customer ID, name, address, and registration date.

IssueStatus:
Tracks book issuance with details like issue ID, customer ID, issue date, and ISBN of the issued book.

ReturnStatus: 
Tracks book returns with details like return ID, customer name, book name, return date, and ISBN of the returned book.


Data Insertion:
Insert sample data into each table using INSERT INTO statements to populate the tables with initial records.

Data Retrieval Queries:
execute several SELECT queries to retrieve specific information from the tables:
Retrieve available books, employee details, customer details, etc.
List employees with salaries above a certain threshold.
Display customers who registered before a specific date and have not issued any books yet.
Show branch numbers along with the count of employees for branches having more than 5 employees.
