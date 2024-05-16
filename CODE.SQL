# creation of database
create database library;

use library;

# creation of table Branch
create table Branch(
	Branch_no int primary key,
    Manager_id int,
    Branch_address varchar(100),
    Contact_no varchar(50)
    );

# adding values to table branch
INSERT INTO Branch (Branch_no, Manager_id, Branch_address, Contact_no)
VALUES
    (1, 101, '45 Ayyanthole, Thrissur, Kerala', '918765432109'),
    (2, 102, '48 Down Hill, Malappuram, Kerala ', '919765492179'),
    (3, 103, '65 Stadium Bypass Road,Palakkad,Kerala ', '918856432167'),
    (4, 104, '66 Convent Junction, Ernakulam, Kerala', '918665832877'),
    (5, 105, '123 Red Cross Road, Kozhikode, Kerala', '917845602156'),
    (6, 106, '124 Railway Station Rd, Kottayam, Kerala', '919876543287'),
    (7, 107, '88 Red Cross Road, Kozhikode, Kerala', '919657832198'),
    (8, 108, '78 Palayam, Thiruvananthapuram, Kerala ', '919856423893'),
    (9, 109, '123 Asramam Link Road, Kollam, Kerala', '919545682134'),
    (10,110, '57 Boat Jetty Rd, Alappuzha, Kerala ', '91987456321');

# displays table branch
select * from Branch;

# creation of table employee
create table Employee(
	Emp_id int primary key,
    Emp_name varchar(50),
    Position varchar(20),
    Salary int,
    Branch_no int,
    foreign key(Branch_no) references Branch(Branch_no) on delete cascade);
    
# adding values to table employee
INSERT INTO Employee (Emp_id, Emp_name, Position, Salary, Branch_no)
VALUES
    (1001, 'Rohan Kumar', 'Manager', 75000, 1),
    (1002, 'Varun Krishna', 'Assistant Manager', 55000, 1),
    (1003, 'Priya Ashok', 'Clerk', 42000, 1),
    (1004, 'Muhsina Shafeer', 'Manager', 68000, 2),
    (1005, 'Rajesh Unni', 'Cleaning', 32000, 6),
    (1006, 'Sneha Aravinth', 'Librarian', 45000, 1),
    (1007, 'Amal Jhone', 'Assistant Manager', 60000, 7),
    (1008, 'Adam Asif', 'Clerk', 38000, 1),
    (1009, 'Neha Joseph', 'Clerk', 41000, 9),
    (1010, 'Deepak Lal', 'Clerk', 40000, 1);

    
# displays table employee
select * from Employee;

# creation of table Books    
create table Books(
	ISBN int primary key,
	Book_title varchar(50),
	Category varchar(25),
	Rental_price int,
	Status varchar(20),
	Author varchar(25),
	Publisher varchar(25));
    
# adding values to table Books    
INSERT INTO Books (ISBN, Book_title, Category, Rental_price, Status, Author, Publisher)
VALUES
    (97836987, 'Aadu Jeevitham', 'Autobiography', 28, 'Available', 'Benyameen', 'ABC Publishers'),
    (97812345, 'The God of Small Things', 'Fiction', 25, 'Available', 'Arundhati Roy', 'Random House'),
    (97898765, 'Chemmeen', 'Fiction', 20, 'Available', 'Thakazhi S Pillai', 'Current Books'),
    (97824680, 'The Hangman\'s Daughter', 'Fiction', 15, 'Available', 'K.R. Meera', 'Penguin Books India'),
    (97811111, 'The Ivory Throne', 'History', 35, 'Available', 'Manu S. Pillai', 'HarperCollins India'),
    (97866666, 'The Legends of Khasak', 'Fiction', 25, 'Available', 'O. V. Vijayan', 'DC Books'),
    (97813579, 'Randamoozham', 'Fiction', 30, 'Available', 'M.T. Vasudevan Nair', 'D.C. Books'),
	(97877777, 'The Guide', 'Fiction', 25, 'Available', 'R. K. Narayan', 'Penguin Books India'),
    (97888888, 'The Elephant, The Tiger, and the Cell Phone', 'Non-Fiction', 30, 'Available', 'Shashi Tharoor', 'Penguin Viking'),
    (97888898, 'One Hundred Years of Solitude', 'Fiction', 35, 'Available', 'Gabriel Garcia Marquez', 'Harper & Row');
    
# displays table Books
select * from Books; 
   
# creation of table Customer
create table Customer(
	Customer_id int primary key,
    Customer_name varchar(50),
    Customer_address varchar(100),
    Reg_date date);
    
# adding values to table Customer
INSERT INTO Customer (Customer_id, Customer_name, Customer_address, Reg_date)
VALUES
    (1, 'Theertha veenu', 'sm street', '2023-03-11'),
    (2, 'Renuka.p', 'Ottappalam', '2019-04-30'),
    (3, 'Shabna.k', 'Vytyla jn', '2020-04-13'),
    (4, 'Dain', 'IG Road', '2021-03-10'),
    (5, 'Amal hafiz', 'Bypass Perinthalmanna', '2023-03-12'),
    (6, 'Fida Rahman', 'Airport Road', '2020-04-16'),
    (7, 'Janna', 'Gandi bhavan', '2018-04-19'),
    (8, 'Hannah', 'nss road', '2022-03-7'),
    (9, 'Amritha', 'university road ', '2021-04-07'),
    (10, 'Jismy', 'town jn', '2021-04-22');
# displays table Customer
select * from Customer;    
    
# creation of table IssueStatus    
create table IssueStatus(
	Issue_id int primary key,
	Issued_cust int,
    foreign key(Issued_cust) references Customer(Customer_id) on delete cascade,
    Issue_date date,
    Isbn_book int,
    foreign key(Isbn_book) references Books(ISBN) on delete cascade);
    
# adding values to table IssueStatus
INSERT INTO IssueStatus (Issue_id, Issued_cust, Issue_date, Isbn_book)
VALUES
    (1, 1, '2023-03-11', 97836987),
    (2, 2, '2020-2-12', 97812345),
    (3, 3, '2020-04-13', 97898765),
    (4, 4, '2021-04-14', 97824680),
    (5, 5, '2023-06-15', 97811111),
    (6, 6, '2021-12-16', 97866666),
    (7, 7, '2020-11-17', 97813579),
    (8, 8, '2023-05-18',97877777 ),
    (9, 9, '2021-11-19', 97888888),
    (10, 10,'2021-12-20',97888888 );

# displays table IssueStatus    
select * from IssueStatus; 
   
# creation of table ReturnStatus     
create table ReturnStatus(
	Return_Id int primary key,
    Return_cust varchar(50),
    Return_book_name varchar(50),
    Return_date date,
    Isbn_book2 int,
    foreign key(Isbn_book2) references Books(ISBN) on delete cascade);

# Adding values to table ReturnStatus
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
    (1, 'Theertha veenu', 'Aadu Jeevitham', '2024-05-05',97888888) ,
    (2, 'Renuka.p', 'The God of Small Things', '2024-04-10', 97836987),
    (3, 'Shabna.k', 'Chemmeen', '2024-02-22', 97836987),
    (4, 'Dain', 'The Hangman\'s Daughter', '2024-01-15',97813579 ),
    (5, 'Amal hafiz', 'The Ivory Throne', '2024-03-15',97824680 ),
    (6, 'Fida Rahman', 'The Legends of Khasak', '2024-01-16',97877777),
    (7, 'Janna', 'Randamoozham', '2024-01-19', 97888888),
    (8, 'Hannah', 'The Guide', '2024-01-10', 97877777),
    (9, 'Amritha', 'The Elephant, The Tiger, and the Cell Phone', '2024-04-09', 97813579),
    (10, 'Jismy', 'One Hundred Years of Solitude', '2024-03-23', 97836987);

# displays table ReturnStatus
select * from ReturnStatus;


-- 1. Retrieve the book title, category, and rental price of all available books
SELECT
  Book_title,
  Category,
  Rental_Price
FROM
  Books
WHERE
  Status = 'Available';

-- 2. List the employee names and their respective salaries in descending order of salary
SELECT
  Emp_name,
  Salary
FROM
  Employee
ORDER BY
  Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books
SELECT
  b.Book_title,
  c.Customer_name
FROM
  IssueStatus i
  JOIN Books b ON i.Isbn_book = b.ISBN
  JOIN Customer c ON i.Issued_cust = c.Customer_Id;

-- 4. Display the total count of books in each category
SELECT
  Category,
  COUNT(*) AS Total_Count
FROM
  Books
GROUP BY
  Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000
SELECT
  Emp_name,
  Position
FROM
  Employee
WHERE
  Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet
SELECT
  Customer_name
FROM
  Customer
WHERE
  Reg_date < '2022-01-01'
  AND Customer_Id NOT IN (
    SELECT
      Issued_cust
    FROM
      IssueStatus
  );

-- 7. Display the branch numbers and the total count of employees in each branch
SELECT
  Branch_no,
  COUNT(*) AS Total_Employees
FROM
  Employee
GROUP BY
  Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023
SELECT
  c.Customer_name
FROM
  IssueStatus i
  JOIN Customer c ON i.Issued_cust = c.Customer_Id
WHERE
  MONTH (Issue_date) = 6
  AND YEAR (Issue_date) = 2023;

-- 9. Retrieve book_title from book table containing history
SELECT
  Book_title
FROM
  Books
WHERE
  Category = 'History';

-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT
  Branch_no,
  COUNT(*) AS Total_Employees
FROM
  Employee
GROUP BY
  Branch_no
HAVING
  COUNT(*) > 5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses
SELECT
  e.Emp_name,
  b.Branch_address
FROM
  Employee e
  JOIN Branch b ON e.Branch_no = b.Branch_no
WHERE
  e.Position = 'Manager';

-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25
SELECT
  c.Customer_name
FROM
  IssueStatus i
  JOIN Customer c ON i.Issued_cust = c.Customer_Id
  JOIN Books b ON i.Isbn_book = b.ISBN
WHERE
  b.Rental_Price > 25;
drop database LIBRARY;  

