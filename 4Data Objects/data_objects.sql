-- DATA OBJECTS in RDBMS.

-- SCHEMA: Logical grouping of databases
-- TABLE: Stores structred data in rows and columns
-- VIEWS:
    - Virtual table that store SQL query.
    - Types:
        --Regular view: It doesnt store any data and upon calling view get latest data from actual data.
        --Materialised views: It stores data that is available at the time of creation. 
            --It doesn't automatically refresh when underlying tables in query updates
-- STORED PROCEDURES:
    - Predefined SQL script(group of SQL statements)  that execute specific task.
-- FUNCTIONS
    - Same as SP in addition retuns value
-- INDEXES: Speed up data retrieval by creating search keys
-- TRIGGERS: Automated actions that run when a specific event occurs in DB
-- CONSTRAINTS(PK, FK, Unique): Rules enforced on tables
-- SEQUENCES: Auto-generate unique values.
-- SYNONYMS: Alias for data objects for simplifying access

