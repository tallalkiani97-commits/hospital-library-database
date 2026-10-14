CREATE TABLE Department (DepartmentId INT PRIMARY KEY, Name NVARCHAR(100) NOT NULL);
CREATE TABLE Patient (PatientId INT PRIMARY KEY, FullName NVARCHAR(160) NOT NULL, DepartmentId INT NULL REFERENCES Department(DepartmentId));
CREATE TABLE Doctor (DoctorId INT PRIMARY KEY, FullName NVARCHAR(160) NOT NULL, DepartmentId INT NOT NULL REFERENCES Department(DepartmentId));
CREATE TABLE Appointment (AppointmentId INT PRIMARY KEY, PatientId INT NOT NULL REFERENCES Patient(PatientId), DoctorId INT NOT NULL REFERENCES Doctor(DoctorId), StartsAt DATETIME2 NOT NULL);
CREATE TABLE LibraryMember (MemberId INT PRIMARY KEY, FullName NVARCHAR(160) NOT NULL);
CREATE TABLE Book (BookId INT PRIMARY KEY, Title NVARCHAR(200) NOT NULL, Author NVARCHAR(160) NOT NULL);
CREATE TABLE Loan (LoanId INT PRIMARY KEY, MemberId INT NOT NULL REFERENCES LibraryMember(MemberId), BookId INT NOT NULL REFERENCES Book(BookId), BorrowedAt DATE NOT NULL, ReturnedAt DATE NULL);

INSERT INTO Department VALUES (1,N'General Medicine'),(2,N'Computer Science');
INSERT INTO LibraryMember VALUES (1,N'Sample Member');
INSERT INTO Book VALUES (1,N'Database Systems',N'Portfolio Demo');
