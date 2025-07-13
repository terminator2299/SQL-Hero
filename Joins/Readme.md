# 🔗 SQL Join Practice

This folder contains SQL practice queries focused on mastering **JOIN** operations.

## 🗂️ Sample Tables

Three main tables are used for practice:

---

### 1. `employees`

| emp_id | name    | dept_id | salary |
|--------|---------|---------|--------|
| 1      | Alice   | 10      | 60000  |
| 2      | Bob     | 20      | 55000  |
| 3      | Charlie | NULL    | 50000  |
| 4      | David   | 10      | 70000  |

- Contains employee records
- `dept_id` links to the `departments` table

---

### 2. `departments`

| dept_id | dept_name     |
|---------|---------------|
| 10      | Engineering   |
| 20      | Marketing     |
| 30      | HR            |

- Lists all departments
- Linked by `dept_id`

---

### 3. `projects`

| proj_id | emp_id | proj_name       |
|---------|--------|-----------------|
| 101     | 1      | AI System       |
| 102     | 2      | Marketing Site  |
| 103     | 1      | ML Optimizer    |
| 104     | 4      | ERP Tool        |

- Shows which employee is working on which project

---

## ✅ What's Inside

Inside this folder, you’ll find:
- Practice queries for **INNER JOIN**, **LEFT JOIN**, **RIGHT JOIN**, **FULL OUTER JOIN**
- Use of **aggregations**, **subqueries**, and **self joins**
- Realistic interview-style problems using the above tables

---

## 📚 Purpose

This section helps build a strong understanding of how data from multiple tables can be combined and analyzed. Perfect for beginners, interview prep, or brushing up JOIN logic!

---

> ✨ Tip: Use a local SQL database (like SQLite or PostgreSQL) to load these tables and test the queries yourself.

