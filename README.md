# 📊 Hospital Management System - SQL Database & Analytics

## 🚑 About the Project

This project presents a **comprehensive Hospital Management System database** designed in **PostgreSQL**. It covers the essential entities and relationships required to manage hospital operations, including **Doctors, Patients, Appointments, Medications, Medical History, Staff, Malpractice Cases, and Billing**.  

Additionally, a rich set of **complex SQL queries** is included to perform **insightful analytics** on the dataset, suitable for practicing real-world data scenarios such as:  
- Revenue analysis  
- Doctor and patient management  
- Malpractice tracking  
- Medication and treatment history  
- Appointment tracking  

---

## 🗂️ Database Schema

### 📋 Tables Created:
1. **Doctors** - Doctor details, specialization, and active status  
2. **Patients** - Patient demographics, medical status, linked to doctors  
3. **Appointments** - Appointments between patients and doctors  
4. **HospitalStaff** - Non-doctor staff details  
5. **MalpracticeCases** - Malpractice incidents linked to doctors and patients  
6. **MedicalHistory** - Historical diagnoses and treatments  
7. **Medications** - Prescriptions and dosage  
8. **Billing** - Billing records with payment status  

---

## 📈 Key Features & Capabilities

- **Fully normalized relational schema** designed for healthcare data  
- **Rich relationships** (foreign keys) between patients, doctors, and other entities  
- **Support for complex queries** like aggregations, analytics, and financial computations  
- Built-in fields for **timestamps and active status tracking**  
- Handling **edge cases** like deceased patients, malpractice, and unpaid bills  

---

## 💻 SQL Queries for Analytics

Here are **16 complex SQL questions** included in this project to analyze the hospital's data:

| No. | Query Description |
|----|---------------------|
| 1  | Find patients admitted in February 2025 treated by active doctors |
| 2  | Total number of appointments per doctor with specialization |
| 3  | Average billing amount for deceased patients |
| 4  | Patients prescribed more than one medication |
| 5  | Patients whose doctor had at least one malpractice case |
| 6  | Top 3 doctors with highest total billing amounts for patients |
| 7  | Patients with the longest hospital stay |
| 8  | Doctors who treated the most deceased patients |
| 9  | Patients with the highest total billing amount |
| 10 | Month with the highest number of appointments |
| 11 | Patients prescribed the most medications |
| 12 | Doctors with highest average billing amount per patient |
| 13 | Patients with the most appointments |
| 14 | Patients admitted more than once |
| 15 | Doctors with the highest number of malpractice cases |
| 16 | Patients with the highest total unpaid bills |

---

## 📂 Repository Structure

```
📆 Hospital-Management-SQL
 ├️ 📜 schema.sql            -- Contains all CREATE TABLE statements
 ├️ 📜 queries.sql           -- Contains all analytical SQL queries (16 questions)
 └️ 📜 README.md             -- Project overview and documentation
```

---

## 🚀 How to Use This Project

1. **Clone the repository**  
```bash
git clone https://github.com/yourusername/hospital-management-sql.git
```

2. **Set up PostgreSQL or any SQL environment supporting the syntax**

3. **Run the schema file to create all tables**  
```sql
\i schema.sql
```

4. **(Optional)** Insert sample data to start practicing (You can add mock data as needed)

5. **Run and modify queries from `queries.sql`** to analyze the data and generate insights

---

## 🎯 Who Should Use This?

- **SQL Practitioners & Learners** who want a real-world healthcare project  
- **Data Analysts** focusing on healthcare or hospital operations  
- **Backend Developers** working on medical applications needing a sample database  
- **Students** doing SQL/Database coursework or practice  



