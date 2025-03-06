# Online Banking System - Database Report

## 1. Introduction
The **Online Banking System** is a database-driven application designed to manage user accounts, transactions, loans, and banking services efficiently. This report provides an in-depth look at the database structure, relationships, and functionalities that power the system.

## 2. Database Overview
- **Database Name:** `OnlineBanking`
- **Tables Created:** 11
- **Data Storage:** User information, account details, transactions, loans, payments, branches, card details, and account statuses.

## 3. Table Descriptions and Relationships
### **3.1 Users Table**
Stores the personal details of users.
- **Primary Key:** `user_id`
- **Relationships:** Connected to `Accounts`, `Loans`, and `Card_Info` via `user_id`.

### **3.2 Accounts Table**
Stores details of bank accounts held by users.
- **Primary Key:** `account_id`
- **Foreign Key:** `user_id` (References `Users`)
- **Relationships:** Linked to `Transactions`, `Transfers`

### **3.3 Transaction_Types Table**
Stores predefined transaction types such as `Deposit`, `Withdrawal`, etc.
- **Primary Key:** `type_id`
- **Relationships:** Linked to `Transactions` via `type_id`

### **3.4 Transactions Table**
Records all financial transactions made in the system.
- **Primary Key:** `transaction_id`
- **Foreign Keys:** `account_id` (References `Accounts`), `transaction_type` (References `Transaction_Types`)
- **Relationships:** Transactions are linked to `Accounts` and `Transaction_Types`

### **3.5 Branches Table**
Stores information about different bank branches.
- **Primary Key:** `branch_id`

### **3.6 Loans Table**
Stores loan details assigned to users.
- **Primary Key:** `loan_id`
- **Foreign Key:** `user_id` (References `Users`)
- **Relationships:** Linked to `Users` and `Payments`

### **3.7 Payments Table**
Records payment history for loans.
- **Primary Key:** `payment_id`
- **Foreign Key:** `loan_id` (References `Loans`)
- **Relationships:** Connected to `Loans`

### **3.8 Transfers Table**
Stores fund transfer details between accounts.
- **Primary Key:** `transfer_id`
- **Foreign Keys:** `source_account` and `destination_account` (References `Accounts`)
- **Relationships:** Transfers occur between accounts

### **3.9 Card_Info Table**
Stores users’ debit and credit card information.
- **Primary Key:** `card_id`
- **Foreign Key:** `user_id` (References `Users`)
- **Relationships:** Linked to `Users`

### **3.10 Account_Status Table**
Defines the different statuses of accounts (`Active`, `Closed`, `Suspended`, etc.).
- **Primary Key:** `status_id`

## 4. Functionalities & Business Logic

### **4.1 User Account Management**
- Users can register with personal details.
- Each user can own multiple accounts.

### **4.2 Account Operations**
- Account creation includes assigning a unique account number, balance, and type (`Savings`, `Checking`, etc.).
- Account status can be changed (`Active`, `Suspended`, etc.).

### **4.3 Transactions**
- Users can deposit, withdraw, and transfer money.
- Every transaction is logged with a type (`Deposit`, `Withdrawal`, etc.).

### **4.4 Loan and Payments**
- Users can apply for loans with an interest rate.
- Loan payments are recorded against loans.

### **4.5 Fund Transfers**
- Users can transfer funds between accounts.
- Transactions are created for each transfer.

### **4.6 Card Management**
- Users are assigned debit/credit cards with expiration dates.

## 5. Entity-Relationship Diagram (ERD)
The ERD visualizes how different entities (tables) are connected. It showcases primary keys, foreign keys, and relationships between tables.

## 6. Conclusion
This Online Banking System database ensures secure, scalable, and efficient financial transactions and management. It provides robust functionality for users, account holders, and bank administrators to operate within a structured and secure environment.
