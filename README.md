
# 📚 Advanced Library Management System – Final Report

**Author:** Aarya Gupta  
**Institution:** KIET Group of Institutions  
**Program:** B.Tech – Computer Science (AI/ML)  
**GitHub:** [https://github.com/your-username](https://github.com/your-username)

---

## 🗂️ Project Overview

This project enhances a relational SQL-based Library Management System with:
- Well-defined schema
- Proper data population
- Many-to-many relationships
- Reusable views
- Triggers for automation
- Reports using advanced SQL queries

---

## ✅ Task Breakdown

### 1. Define Schema: Books, Authors, Members, Loans

**Tables Defined:**
- `Authors(AuthorID, Name)`
- `Categories(CategoryID, Name)`
- `Books(BookID, Title, AuthorID, CategoryID)`
- `Members(MemberID, Name, Email)`
- `Loans(LoanID, BookID, MemberID, LoanDate, ReturnDate)`
- `Staff(StaffID, Name, Role)`

**Key Features:**
- Primary/Foreign Keys
- `ON DELETE SET NULL` / `CASCADE`
- NOT NULL, DEFAULT values

---

### 2. Insert Test Data

- Inserted 25–50 entries per table
- Ensured foreign key consistency
- Used sample book names, authors, dates
- NULL and default values tested

---

### 3. Handle Many-to-Many Relationships

**Bridge Table Example:**
```sql
CREATE TABLE BookAuthors (
  BookID INT,
  AuthorID INT,
  PRIMARY KEY (BookID, AuthorID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
```

---

### 4. Create Views for Borrowed and Overdue Books

- ✅ `BorrowedBooks_View` – Active borrowed books
- ✅ `OverdueBooks_View` – Not returned in 30+ days
- ✅ `BooksNeverBorrowed_View`
- ✅ `Loan_History_Per_Member`
- ✅ `MostBorrowedBooks_View`

---

### 5. Write Triggers for Due-Date Notifications

**Trigger Example:**
```sql
CREATE TRIGGER DueDate_Notifier
AFTER INSERT ON Loans
FOR EACH ROW
BEGIN
  IF NEW.ReturnDate IS NULL AND NEW.LoanDate < CURDATE() - INTERVAL 30 DAY THEN
    INSERT INTO Notifications(MemberID, Message)
    VALUES (NEW.MemberID, '⚠️ Your loan is overdue!');
  END IF;
END;
```

---

### 6. Write Reports using Aggregation and JOINs

- **Most Borrowed Books**
- **Member-wise Loan Count**
- **Category-wise Book Count**
- **Loans in Last 30 Days**
- **Books Never Borrowed**

**Techniques:**
- `COUNT()`, `AVG()`, `GROUP BY`, `JOIN`, subqueries, `DATE` filtering

---

## 📂 Dataset & Files

| File Name               | Description                    |
|------------------------|--------------------------------|
| `Library-DB-Schema-1.sql` | Schema Creation               |
| `Library-DB-2.sql`        | Initial Inserts               |
| `Library-DB-3.sql`        | Member/Loan Inserts           |
| `Library-DB-4.sql`        | Data Updates/Deletes          |
| `README.md`               | Documentation                 |
| `ER_Diagram.png`          | Schema Visualization          |

---

## 🧾 Conclusion

This project demonstrates a fully functional SQL backend for a Library Management System with:
- Clean, relational schema
- Data consistency
- Reusable queries and logic via Views
- Automation with Triggers
- Analytical reports for administration

Ideal for educational or live integration into any learning platform or library app.

---
