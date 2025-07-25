--1st part

-- create category table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

-- create author table
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

-- create book table
CREATE TABLE Book (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- create member table
CREATE TABLE Member (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);

-- create loan table
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- create staff table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Role VARCHAR(50)
);






--2nd part



-- Bulk Insert

INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (1, 'Diya Gupta');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (2, 'Vivaan Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (3, 'Aditya Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (4, 'Meera Joshi');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (5, 'Pari Malhotra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (6, 'Ira Mehta');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (7, 'Pari Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (8, 'Atharv Reddy');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (9, 'Aarav Gupta');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (10, 'Vivaan Joshi');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (11, 'Aadhya Joshi');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (12, 'Arjun Kapoor');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (13, 'Ishaan Gupta');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (14, 'Pari Sharma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (15, 'Krishna Ghosh');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (16, 'Vihaan Chopra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (17, 'Aditya Patel');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (18, 'Aditya Mishra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (19, 'Aarav Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (20, 'Ishaan Verma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (21, 'Aadhya Sharma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (22, 'Krishna Sharma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (23, 'Aditya Joshi');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (24, 'Arjun Das');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (25, 'Arjun Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (26, 'Myra Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (27, 'Aadhya Malhotra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (28, 'Reyansh Yadav');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (29, 'Arjun Joshi');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (30, 'Avni Verma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (31, 'Pari Khan');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (32, 'Saanvi Chopra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (33, 'Saanvi Yadav');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (34, 'Krishna Mishra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (35, 'Atharv Malhotra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (36, 'Diya Sharma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (37, 'Anaya Sharma');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (38, 'Ira Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (39, 'Arjun Reddy');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (40, 'Siya Patel');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (41, 'Saanvi Rao');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (42, 'Atharv Chopra');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (43, 'Diya Yadav');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (44, 'Aditya Singh');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (45, 'Krishna Bhat');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (46, 'Meera Das');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (47, 'Avni Shah');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (48, 'Sai Ghosh');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (49, 'Sai Khan');
INSERT INTO `library`.`author` (`AuthorID`, `Name`) VALUES (50, 'Anaya Gupta');

INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (1, 'Category 1');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (2, 'Category 2');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (3, 'Category 3');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (4, 'Category 4');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (5, 'Category 5');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (6, 'Category 6');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (7, 'Category 7');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (8, 'Category 8');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (9, 'Category 9');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (10, 'Category 10');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (11, 'Category 11');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (12, 'Category 12');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (13, 'Category 13');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (14, 'Category 14');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (15, 'Category 15');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (16, 'Category 16');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (17, 'Category 17');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (18, 'Category 18');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (19, 'Category 19');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (20, 'Category 20');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (21, 'Category 21');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (22, 'Category 22');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (23, 'Category 23');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (24, 'Category 24');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (25, 'Category 25');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (26, 'Category 26');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (27, 'Category 27');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (28, 'Category 28');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (29, 'Category 29');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (30, 'Category 30');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (31, 'Category 31');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (32, 'Category 32');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (33, 'Category 33');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (34, 'Category 34');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (35, 'Category 35');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (36, 'Category 36');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (37, 'Category 37');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (38, 'Category 38');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (39, 'Category 39');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (40, 'Category 40');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (41, 'Category 41');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (42, 'Category 42');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (43, 'Category 43');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (44, 'Category 44');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (45, 'Category 45');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (46, 'Category 46');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (47, 'Category 47');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (48, 'Category 48');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (49, 'Category 49');
INSERT INTO `library`.`category` (`CategoryID`, `Name`) VALUES (50, 'Category 50');

INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (1, 'Book Title 1', 45, 13);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (2, 'Book Title 2', 46, 46);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (3, 'Book Title 3', 48, 30);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (4, 'Book Title 4', 50, 21);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (5, 'Book Title 5', 7, 18);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (6, 'Book Title 6', 35, 24);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (7, 'Book Title 7', 39, 5);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (8, 'Book Title 8', 22, 47);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (9, 'Book Title 9', 10, 20);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (10, 'Book Title 10', 7, 28);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (11, 'Book Title 11', 38, 30);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (12, 'Book Title 12', 39, 32);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (13, 'Book Title 13', 12, 13);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (14, 'Book Title 14', 19, 37);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (15, 'Book Title 15', 38, 9);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (16, 'Book Title 16', 42, 15);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (17, 'Book Title 17', 29, 24);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (18, 'Book Title 18', 4, 45);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (19, 'Book Title 19', 13, 26);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (20, 'Book Title 20', 33, 32);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (21, 'Book Title 21', 35, 48);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (22, 'Book Title 22', 5, 47);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (23, 'Book Title 23', 2, 8);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (24, 'Book Title 24', 39, 42);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (25, 'Book Title 25', 1, 7);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (26, 'Book Title 26', 49, 26);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (27, 'Book Title 27', 48, 4);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (28, 'Book Title 28', 21, 21);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (29, 'Book Title 29', 35, 23);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (30, 'Book Title 30', 50, 3);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (31, 'Book Title 31', 5, 24);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (32, 'Book Title 32', 35, 38);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (33, 'Book Title 33', 22, 26);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (34, 'Book Title 34', 33, 28);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (35, 'Book Title 35', 30, 46);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (36, 'Book Title 36', 14, 36);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (37, 'Book Title 37', 26, 34);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (38, 'Book Title 38', 50, 24);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (39, 'Book Title 39', 38, 14);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (40, 'Book Title 40', 24, 31);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (41, 'Book Title 41', 47, 18);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (42, 'Book Title 42', 38, 18);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (43, 'Book Title 43', 20, 21);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (44, 'Book Title 44', 22, 26);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (45, 'Book Title 45', 25, 12);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (46, 'Book Title 46', 16, 42);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (47, 'Book Title 47', 9, 47);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (48, 'Book Title 48', 28, 14);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (49, 'Book Title 49', 37, 17);
INSERT INTO `library`.`book` (`BookID`, `Title`, `AuthorID`, `CategoryID`) VALUES (50, 'Book Title 50', 49, 47);

INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (1, 'Aarav Joshi', 'aarav.joshi94@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (2, 'Ira Rao', 'ira.rao23@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (3, 'Aarav Verma', 'aarav.verma30@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (4, 'Aditya Malhotra', 'aditya.malhotra25@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (5, 'Aarav Mehta', 'aarav.mehta88@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (6, 'Krishna Kapoor', 'krishna.kapoor72@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (7, 'Reyansh Bhat', 'reyansh.bhat74@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (8, 'Vivaan Singh', 'vivaan.singh73@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (9, 'Saanvi Reddy', 'saanvi.reddy46@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (10, 'Anaya Patel', 'anaya.patel91@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (11, 'Pari Shah', 'pari.shah95@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (12, 'Aditya Joshi', 'aditya.joshi22@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (13, 'Ira Mishra', 'ira.mishra24@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (14, 'Meera Verma', 'meera.verma73@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (15, 'Aarav Bhat', 'aarav.bhat53@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (16, 'Anaya Khan', 'anaya.khan54@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (17, 'Ishaan Gupta', 'ishaan.gupta68@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (18, 'Siya Malhotra', 'siya.malhotra15@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (19, 'Vivaan Singh', 'vivaan.singh90@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (20, 'Diya Mehta', 'diya.mehta2@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (21, 'Aditya Verma', 'aditya.verma98@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (22, 'Sai Sharma', 'sai.sharma12@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (23, 'Avni Singh', 'avni.singh17@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (24, 'Ira Shah', 'ira.shah66@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (25, 'Diya Das', 'diya.das15@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (26, 'Avni Das', 'avni.das31@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (27, 'Atharv Joshi', 'atharv.joshi35@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (28, 'Vihaan Patel', 'vihaan.patel87@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (29, 'Vihaan Rao', 'vihaan.rao87@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (30, 'Atharv Yadav', 'atharv.yadav94@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (31, 'Arjun Verma', 'arjun.verma45@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (32, 'Arjun Das', 'arjun.das24@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (33, 'Pari Nair', 'pari.nair24@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (34, 'Krishna Reddy', 'krishna.reddy53@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (35, 'Ishaan Shah', 'ishaan.shah84@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (36, 'Aadhya Reddy', 'aadhya.reddy78@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (37, 'Sai Verma', 'sai.verma10@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (38, 'Aditya Gupta', 'aditya.gupta19@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (39, 'Reyansh Bhat', 'reyansh.bhat5@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (40, 'Aditya Kapoor', 'aditya.kapoor39@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (41, 'Pari Das', 'pari.das48@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (42, 'Vivaan Chopra', 'vivaan.chopra94@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (43, 'Siya Gupta', 'siya.gupta86@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (44, 'Diya Yadav', 'diya.yadav40@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (45, 'Meera Nair', 'meera.nair71@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (46, 'Arjun Shah', 'arjun.shah19@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (47, 'Ira Verma', 'ira.verma39@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (48, 'Avni Sharma', 'avni.sharma66@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (49, 'Atharv Singh', 'atharv.singh78@library.com');
INSERT INTO `library`.`member` (`MemberID`, `Name`, `Email`) VALUES (50, 'Diya Das', 'diya.das28@library.com');

INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (1, 'Meera Das', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (2, 'Sai Verma', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (3, 'Myra Shah', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (4, 'Vihaan Singh', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (5, 'Arjun Das', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (6, 'Siya Chopra', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (7, 'Atharv Reddy', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (8, 'Ishaan Kapoor', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (9, 'Ishaan Reddy', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (10, 'Avni Rao', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (11, 'Ira Joshi', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (12, 'Anaya Bhat', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (13, 'Ishaan Bhat', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (14, 'Pari Kapoor', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (15, 'Vihaan Gupta', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (16, 'Vivaan Singh', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (17, 'Saanvi Sharma', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (18, 'Vihaan Verma', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (19, 'Siya Reddy', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (20, 'Arjun Ghosh', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (21, 'Avni Singh', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (22, 'Krishna Sharma', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (23, 'Ishaan Mishra', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (24, 'Aadhya Khan', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (25, 'Aarav Malhotra', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (26, 'Aarav Das', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (27, 'Arjun Sharma', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (28, 'Avni Ghosh', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (29, 'Aadhya Nair', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (30, 'Aditya Reddy', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (31, 'Pari Nair', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (32, 'Vihaan Nair', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (33, 'Diya Mehta', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (34, 'Pari Rao', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (35, 'Reyansh Das', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (36, 'Myra Reddy', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (37, 'Aarav Sharma', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (38, 'Sai Mishra', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (39, 'Vihaan Shah', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (40, 'Aarav Singh', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (41, 'Vihaan Yadav', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (42, 'Aarav Yadav', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (43, 'Anaya Nair', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (44, 'Aditya Kapoor', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (45, 'Ira Khan', 'Assistant');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (46, 'Krishna Verma', 'Librarian');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (47, 'Ira Reddy', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (48, 'Saanvi Das', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (49, 'Aditya Yadav', 'Clerk');
INSERT INTO `library`.`staff` (`StaffID`, `Name`, `Role`) VALUES (50, 'Diya Mishra', 'Librarian');

INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (1, 35, 22, '2025-06-06', '2025-06-22');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (2, 45, 40, '2025-06-12', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (3, 31, 43, '2025-06-16', '2025-06-22');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (4, 43, 43, '2025-06-06', '2025-06-16');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (5, 30, 48, '2025-06-21', '2025-07-12');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (6, 35, 8, '2025-06-12', '2025-06-19');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (7, 25, 46, '2025-06-16', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (8, 13, 47, '2025-06-18', '2025-07-01');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (9, 39, 23, '2025-06-02', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (10, 39, 42, '2025-06-02', '2025-06-19');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (11, 24, 4, '2025-06-27', '2025-07-02');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (12, 3, 5, '2025-06-08', '2025-06-22');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (13, 48, 2, '2025-06-04', '2025-06-14');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (14, 12, 28, '2025-06-09', '2025-06-28');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (15, 28, 8, '2025-06-13', '2025-06-29');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (16, 4, 23, '2025-06-08', '2025-06-24');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (17, 28, 10, '2025-06-16', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (18, 16, 42, '2025-06-13', '2025-06-26');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (19, 15, 24, '2025-06-28', '2025-07-16');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (20, 11, 22, '2025-06-19', '2025-06-27');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (21, 23, 49, '2025-06-02', '2025-06-08');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (22, 47, 47, '2025-06-07', '2025-06-14');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (23, 28, 22, '2025-06-05', '2025-06-26');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (24, 15, 35, '2025-06-28', '2025-07-20');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (25, 20, 38, '2025-06-09', '2025-07-07');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (26, 8, 29, '2025-06-10', '2025-07-08');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (27, 34, 6, '2025-06-21', '2025-07-13');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (28, 16, 45, '2025-06-02', '2025-06-10');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (29, 7, 23, '2025-06-08', '2025-06-15');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (30, 15, 17, '2025-06-29', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (31, 46, 31, '2025-06-09', '2025-06-20');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (32, 49, 49, '2025-06-23', '2025-07-20');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (33, 5, 33, '2025-07-01', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (34, 41, 6, '2025-06-11', '2025-07-07');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (35, 3, 42, '2025-06-20', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (36, 48, 16, '2025-06-16', '2025-06-28');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (37, 29, 34, '2025-06-01', '2025-06-18');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (38, 40, 49, '2025-06-10', '2025-06-20');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (39, 29, 24, '2025-06-04', '2025-06-10');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (40, 33, 37, '2025-06-06', '2025-06-23');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (41, 10, 50, '2025-07-01', '2025-07-23');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (42, 39, 43, '2025-06-29', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (43, 4, 29, '2025-06-18', '2025-06-23');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (44, 21, 5, '2025-06-15', '2025-07-09');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (45, 46, 37, '2025-06-14', '2025-07-14');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (46, 10, 33, '2025-06-28', '2025-07-23');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (47, 5, 2, '2025-06-14', '2025-07-06');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (48, 20, 50, '2025-06-28', '2025-07-17');
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (49, 30, 35, '2025-06-11', NULL);
INSERT INTO `library`.`loan` (`LoanID`, `BookID`, `MemberID`, `LoanDate`, `ReturnDate`) VALUES (50, 21, 3, '2025-06-01', NULL);




--4th part




 -- Create a view that shows all book titles with their corresponding author names.

create view authors_with_title as
select Title, Name as Author_Name from author right join book 
on author.AuthorID=book.AuthorID;

select * from authors_with_title;

-- 2. Create a view that lists each member and the total number of books they've borrowed.
create view member_Loans as 
select m.Name as Member_name,count(l.LoanID) from
member m join loan l on m.MemberID=l.MemberID 
group by m.Name;

select * from member_Loans;

-- 3. Create a view showing current active loans (ReturnDate IS NULL).
create view active_loans as
select LoanID,ReturnDate from loan 
where ReturnDate is null;

select * from active_loans;

-- 4. Create a view listing each book's title, category name, and number of times it was loaned.
create view book_detail as
select b.Title as Book_Title, c.Name as Category_type, count(l.LoanID) as LoanID from 
book b join category c on b.CategoryID=c.CategoryID
join loan l on b.BookID=l.BookID
group by b.Title, c.Name;

-- 6. Create a view that joins book, author, and category to simplify reporting.
create view Report as
select a.AuthorID, a.Name as authorName , b.BookID, b.Title ,c.CategoryID ,c.Name as
cateogoryName from book b join author a on
b.AuthorID=a.AuthorID
join category c on b.CategoryID=c.CategoryID;

-- 7. Create a view that only includes staff members with the role "Assistant".
create view staff_assistant as
select s.Name,s.StaffID from staff s
where s.Role="Assistant";

-- 8. Create a view that returns members who borrowed books in June 2025.
create view JuneBorrow as
select l.LoanID, l.MemberID from loan l
where month(l.LoanDate)= 6 and year(l.LoanDate)=2025;

-- 9. Create a view that hides member emails but shows borrowed titles (for privacy).
create view memberBorrow as
select m.MemberID,m.Name, b.Title, l.LoanID from member m join 
loan l on l.MemberID=m.MemberID
join book b on b.BookID = l.BookID; 

-- 10. Create a view that aggregates the number of books issued per category.
create view countBookperCategory as
select c.CategoryID, c.Name, count(l.LoanID) as Count from loan l join book b 
on l.BookID=b.BookID join
category c on b.CategoryID= c.CategoryID 
group by c.Name, c.CategoryID;

-- 11. Create a view that lists books that have never been borrowed.
create view notBorrowYet as
select b.BookID, b.Title,b.AuthorID,b.CategoryID from book b left join loan l on
b.BookID=l.BookID
where l.BookID is null;

-- 12.Create a view that uses WITH CHECK OPTION to restrict updates to a specific category.
create view checkOption_20 as
select b.* from book b where 
b.CategoryID =20
with check option;

-- 13.Create a view that shows each author and the average number of loans per book they've written.
create view avgNumBook as
select  a.AuthorID, a.Name,Count(l.LoanID) * 1.0 / count(distinct b.BookID) as avgLoans
 from loan l join book b on
l.BookID= b.BookID join author a 
on b.AuthorID=a.AuthorID
group by a.AuthorID, a.Name;


-- 14. Create a view combining loans and members with full loan history for each user.
create view MemberLoans as
select l.*, m.Name,m.Email from loan l join member m on
l.MemberID= m.MemberID;

-- 15. Create a view to return only books that are currently issued (ReturnDate IS NULL) and include member name and title.
create view currentlyIssue as
select  l.LoanID, l.LoanDate, l.MemberID, m.Name as MemberName, b.Title  from loan l join book b on
l.BookId=b.BookID join member m on l.MemberID=m.MemberID
where l.ReturnDate is null;












-- 6th 


-- 1. Find the total number of books written by each author.
select author.Name, count(book.BookID) from author left join 
book on author.AuthorID=book.AuthorID 
group by author.Name;

-- 2. Display the number of books available in each category.
select Name, count(CategoryID) from category 
group by Name;

-- 3. Show the number of times each book has been issued.
select loan.BookID,count(LoanDate) as Total,Title from loan right join book on
loan.BookID=book.BookID group by loan.BookID, book.Title;

-- 4. Count how many books each member has borrowed.
select  member.MemberID, count(BookID) from loan right join member on
loan.MemberID= member.MemberID 
group by member.MemberID 
order by member.MemberID asc;

-- 5. List the number of members who have borrowed books per category.
SELECT category.Name AS Category_Name, COUNT(DISTINCT loan.MemberID) AS Total_Members
FROM loan
JOIN book ON loan.BookID = book.BookID
JOIN category ON book.CategoryID = category.CategoryID
GROUP BY category.Name
ORDER BY Total_Members DESC;

-- 6. Find the average number of loans per member.
SELECT AVG(loan_count) AS avg_loans_per_member
FROM (
    SELECT COUNT(*) AS loan_count
    FROM loan
    GROUP BY MemberID
) AS member_loans;

-- Show the staff roles and count how many staff members are in each role.
select Role, count(StaffID) from staff group by Role order by Role;

-- 8. Display the number of distinct titles per author.
SELECT author.Name,book.Title, COUNT(DISTINCT book.Title) AS Total_Title
FROM author 
JOIN book ON author.AuthorID = book.AuthorID 
GROUP BY author.Name, book.Title;