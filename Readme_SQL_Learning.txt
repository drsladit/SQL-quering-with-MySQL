Topics covered:
- SQL Command Typess
    - DDL and DML, DCL
    - DQL: SELECT(Filtering, Sorting, Gropu by and Aggregating,  Formatting)
    - DQL: JOINS and SET Operations(JOINs, self-join, Cross-join, and UNION)
    - DQL: Applying JOINS in data Engineering
    - General and CTEs (Select into, Insert into)
    - Window Functions
    - Data Validation(Datatype Validation, Null check, Duplicate check, Error check, Insert into error table)
    - Sub queries(Scalar subqueries, Correlated sub queries, Nested subqueries(WHERE select, Exists))
    - Transactional and concurrency(TCL)
    - Admin queries
- Data objects
    - Schema, Table, Views, Functions, Stored procedures
    - Indexes, Triggers, Contraints
    - Sequence, synonmys
- Performance tuning
    - Query optimization
    - Explain/Execution plans
    - Index analysis
    - Avoiiding full table scans
    - Normalization and denormalization
- Data Modeling and Normalization
    - 1NF, 2NF, 3NF, BCNF
    - ER Modeling
    - Star and snowflake schema(Data Warehousing)
- Working with JSON, XML, Arrays(JSON_VALUE, JSON_EXTRACT, Handling semi-structed data in PostgresSQL/MYSQL)
- Backup, restore and Maintenance 


Resource to learn each topic and practice
Phase 1: Fundamentals of SQL
    Topics:
        - What is data, database, SQL, RDMS, NoSQL database
        - Keys(Super key, Candidate key, Primary key)
        - Types SQL commands
        - CRUD operations (CREATE, INSERT, UPDATE, DELETE)
        - SELECT Query, Filtering (WHERE, AND, OR, IN, LIKE)
        - Sorting, limiting results
    Resources: 
        - SQLBolt – Interactive tutorials
        - W3Schools SQL – Beginner-friendly explanations and playground
    Project:
        - Create a simple Library DB (Books, Authors, Members) using SQLite or MySQL
        - Practice CRUD on your tables 

Phase 2: Intermediate SQL
    Topics: 
        - Aggregate functions, GROUP BY, HAVING
        - Joins (INNER, LEFT, RIGHT, FULL)
        - Subqueries, EXISTS, IN
    Resources:
        - LeetCode SQL Track – SQL challenges
        - Mode SQL Tutorial – Visual SQL tutorials with a real DB
    Project:
        - Build a Sales Dashboard backend: Products, Orders, Customers
        - Write queries for top-selling products, customer retention, etc.

Phase 3: Advanced SQL & Optimization
    Topics:
        - CTEs, Window Functions
        - Indexing, Explain Plan
        - Views, Stored Procedures
        - Transactions, Locks, Isolation levels
    Resources:
        - Kaggle SQL Course – CTEs, window functions, performance
        - Use The Index, Luke – Query performance tuning
    Project:
        - Analyze a large dataset (Kaggle public datasets or dummy e-commerce data)
        - Optimize slow queries with indexing and EXPLAIN

Phase 4: RDBMS Concepts & Administration
Topics:
Normalization (1NF–BCNF)

Data modeling

Backup & restore, user permissions

Triggers, constraints

Resources:
DB Fiddle – Practice SQL online

Database Design on Khan Academy – Visual data modeling

Project:
Design a normalized Inventory Management System

Implement triggers (e.g., low-stock alerts), constraints, and access control

Phase 5: Real-World Practice
Resources:
StrataScratch – Real business SQL questions

8 Week SQL Challenge – Project-based challenges (highly recommended)