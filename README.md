# TotalInvest Database Project

## Overview
This repository contains the database design and implementation for **TotalInvest**

## Features
- **Investor Management**: Track investor details such as name, contact information, and financial profile.
- **Financial Goals**: Define and monitor investor goals, associated timelines, and monetary targets.
- **Risk Tolerance**: Assess risk levels based on questionnaire answers to optimize portfolio allocation.
- **Portfolio Management**: Handle investor portfolios, including invested values, unrealized gains/losses, and market valuation.
- **Assets Management**: Manage financial instruments like stocks, bonds, and funds within portfolios.
- **Transactions**: Record historical transactions for stocks, bonds, and funds.
  

**ER Diagram**
Below is the **Entity-Relationship Diagram** representing the database structure provided as a model answer.
![image](https://github.com/user-attachments/assets/026df932-18c5-418e-bc38-c84f208bba84)

**Relations**
The database schema includes the following relations:
### **INVESTOR**
- **Attributes:** Phone, Email, Name, Gender, DoB, Annual Income, Company
- **Keys:** Email, Phone
- **Primary Key:** **Phone**
- **FDs:** 
  - Phone → Email, Name, Gender, DoB, Annual Income, Company
  - Email → Phone
- **Normal Form:** 3NF

---

### **FINANCIAL_GOAL**
- **Attributes:** Phone, Goal, Amount, Timeline
- **Keys:** (Phone, Goal)
- **Primary Key:** **(Phone, Goal)**
- **FDs:** 
  - Phone, Goal → Amount, Timeline
- **Normal Form:** 3NF

---

### **RISK_TOLERANCE**
- **Attributes:** Phone, RiskLevel, Q1answer, Q2answer, Q3answer, Q4answer, Q5answer
- **Keys:** (Phone, RiskLevel)
- **Primary Key:** **(Phone, RiskLevel)**
- **FDs:** 
  - Phone, RiskLevel → Q1answer, Q2answer, Q3answer, Q4answer, Q5answer
  - Q1answer, Q2answer, Q3answer, Q4answer, Q5answer → RiskLevel
- **Normal Form:** 3NF

---

### **PORTFOLIO**
- **Attributes:** PID, Phone, AnnualizedReturn, InceptionDate, MarketValue, Fee
- **Keys:** (PID, Phone)
- **Primary Key:** **(PID, Phone)**
- **FDs:** 
  - PID, Phone → AnnualizedReturn, InceptionDate, MarketValue, Fee
- **Normal Form:** 3NF

---

### **INVESTED_VALUE**
- **Attributes:** PID, Date, Phone, Amount
- **Keys:** (PID, Date, Phone)
- **Primary Key:** **(PID, Date, Phone)**
- **FDs:** 
  - PID, Date, Phone → Amount
- **Normal Form:** 3NF

---

### **UNREALIZED_GAIN_LOSS**
- **Attributes:** PID, Date, Phone, Amount
- **Keys:** (PID, Date, Phone)
- **Primary Key:** **(PID, Date, Phone)**
- **FDs:** 
  - PID, Date, Phone → Amount
- **Normal Form:** 3NF

---

### **ASSET**
- **Attributes:** ID, Name, Price
- **Keys:** **ID**
- **Primary Key:** **ID**
- **FDs:** 
  - ID → Name, Price
- **Normal Form:** 3NF

---

### **STOCK**
- **Attributes:** ID, PERatio, EPS, EBITDA
- **Keys:** **ID**
- **Primary Key:** **ID**
- **FDs:** 
  - ID → PERatio, EPS, EBITDA
- **Normal Form:** 3NF

---

### **STOCK_IN_PORTFOLIO**
- **Attributes:** ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone
- **Keys:** ID, (AssetID, PID, Phone)
- **Primary Key:** **ID**
- **FDs:** 
  - ID → AssetID, PID, Phone, StartDate, AllocationRatio, PostTradeCO
  - AssetID, PID, Phone → ID, StartDate, AllocationRatio, PostTradeCO
- **Normal Form:** 3NF

---

### **STOCK_TRANSACTION**
- **Attributes:** Date, ID, Type, Fee
- **Keys:** (ID, Date)
- **Primary Key:** **(ID, Date)**
- **FDs:** 
  - ID, Date → Type, Fee
- **Normal Form:** 3NF

---

### **BOND**
- **Attributes:** ID, InterestRate, MaturityDate
- **Keys:** **ID**
- **Primary Key:** **ID**
- **FDs:** 
  - ID → InterestRate, MaturityDate
- **Normal Form:** 3NF

---

### **BOND_IN_PORTFOLIO**
- **Attributes:** ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone
- **Keys:** ID, (AssetID, PID, Phone)
- **Primary Key:** **ID**
- **FDs:** 
  - ID → StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone
  - AssetID, PID, Phone → ID, StartDate, AllocationRatio, PostTradeCO
- **Normal Form:** 3NF

---

### **BOND_TRANSACTION**
- **Attributes:** Date, ID, Type, Fee
- **Keys:** (ID, Date)
- **Primary Key:** **(ID, Date)**
- **FDs:** 
  - ID, Date → Type, Fee
- **Normal Form:** 3NF

---

### **FUND**
- **Attributes:** ID, ExpenseRatio, DividendYield
- **Keys:** **ID**
- **Primary Key:** **ID**
- **FDs:** 
  - ID → ExpenseRatio, DividendYield
- **Normal Form:** 3NF

---

### **FUND_IN_PORTFOLIO**
- **Attributes:** ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone
- **Keys:** ID, (AssetID, PID, Phone)
- **Primary Key:** **ID**
- **FDs:** 
  - ID → StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone
  - AssetID, PID, Phone → ID, StartDate, AllocationRatio, PostTradeCO
- **Normal Form:** 3NF

---

### **FUND_TRANSACTION**
- **Attributes:** ID, Date, Type, Fee
- **Keys:** (ID, Date)
- **Primary Key:** **(ID, Date)**
- **FDs:** 
  - ID, Date → Type, Fee
- **Normal Form:** 3NF

Developed as part of my database systems project at **NTU**

