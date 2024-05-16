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

1.Retrieve the book title, category, and rental price of all available books.

2.List the employee names and their respective salaries in descending order of salary.

3.Retrieve the book titles and the corresponding customers who have issued those books.

4.Display the total count of books in each category.

5.Retrieve the employee names and their positions for the employees whose salaries are above Rs. 50,000.

6.List the customer names who registered before 2022-01-01 and have not issued any books yet

7. the branch numbers and the total count of employees in each branch.
   
8.Display the names of customers who have issued books in the month of June 2023.

9.Retrieve book titles from the book table containing the word 'history'.

10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

11.Retrieve the names of employees who manage branches and their respective branch addresses.

12.Display the names of customers who have issued books with a rental price higher than Rs. 25.

Overall, the project aims to streamline library operations, enhance user experience, and promote efficient management of library resources




