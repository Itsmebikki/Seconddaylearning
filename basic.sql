--selecting Queries
SELECT * FROM Authors
-- SQLite
CREATE table Authors(
Id integer primary key,
Name nvarchar(200),
Gender nvarchar(1),
Address varchar(400),
Email varchar(100),
Dob varchar(50)
BookId integer,
FOREIGN KEY(BookId) references Books(Id)
);

--Delete Table
drop table Authors
drop table Authordetails

--creation of table
CREATE TABLE AuthorDetails (
    Id integer PRIMARY KEY,
    Education nvarchar(200),
    Publications nvarchar(400),
    Organization varchar(100),
    AuthorId interger,
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id),
);

--inserting values 
INSERT INTO AuthorDetails
VALUES (NULL, 'Masters in Computer Science', 'None', 'AppSoft', 1);

INSERT INTO AuthorDetails
VALUES (NULL, 'MIT', 'NLP/ML', 'AppSoft', 2);

--selecting specific values from table
SELECT a.Name, a.Email, ad.Organization 
FROM  Authors a
INNER JOIN AuthorDetails ad ON a.Id = ad.AuthorId;

-- Day 4
create table Books 
(
    Id integer PRIMARY KEY, 
    Title text not null, 
    Edition text not null,
    Price real null, 
    ISBN text null, 
    Published text not null
);

drop table Authors;
drop table Books;

CREATE TABLE Authors(
    Id integer PRIMARY KEY,
    Name nvarchar(350),
    Gender char(1),
    Address nvarchar(200),
    Email nvarchar(200),
    Dob varchar(100),
    BookId integer,
    FOREIGN KEY(BookId) REFERENCES Books(Id)
);

--insert into books
INSERT INTO Books(Id,Title, Price, Edition, Published) 
VALUES(1,'Data Structures','$300','First', '2008'),
(2,'Algorithms','$550','Second', '2013'),
(3,'Database Systems','$200','Third', '2016'),
(4,'Computer Networks','$300','Fourth', '2020');

-- insert into authors with foreign key reference to book id
INSERT INTO Authors (Id, Name, Gender, Address, Email, Dob)
VALUES (1,'Bishnu Rawal','M', 'Nepal', 'rawal.bishnu@gmail.com', '1990/12/12','1'),
(2,'Sarah Johnson','F', 'USA', 'sjohnson@gmail.com', '1985/07/2','1');


    