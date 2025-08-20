
/*
- Types of SQL commands:
    DQL - Data Query Language(Select)
    DCL - Data Control Language(Grant and Revoke)
    DDL - Data Definition Language(Create, Alter(Rename, Drop), Drop, Truncate, Comments)
    DML - Data Manipulation Language(Insert, Update, Delete, Call, ExplainCall, lock)
    TCL - Transactioanl Control Language(Begin Transaction, Commit, Savepoint, RollBack, Set Transaction, Set Constraints)
*/
---------------------------------------------------------------------------
--DCL: Controls permissions to data objects
    - Grant/Revoke: 
        - Grant/REVOKE SELECT, INSERT, DELETE, UPDATE ON TABLE schema_name.table_name TO GROUP group_name;
        - GRANT/REVOKE ALL ON schema_name.table_name TO 'user@localhost';
        - GRANT/REVOKE EXECUTE ON FUNCTION function_name TO 'user@localhost';
____________________________________________________________________________
--DDL: Actions on overall table or column level
    -- Create:
        - CREATE TABLE table_name (col_name1 datatype encode_format, col_name2 VARCHAR ENCODE zstd);
        - CREATE TABLE IF NOT EXISTS table_name (col_name1 datatype NOT NULL, col_name2 VARCHAR);
    
    -- ALTER(DROP and RENAME):
        - ALTER TABLE schema_name.table_name ADD column column_name datatype;
        - ALTER TABLE schema_name.table_name DROP COLUMN column_name;
        - ALTER TABLE schema_name.table_name RENAME TO table_name1;

    -- DROP:
        - Drops the table and all its data.
        - Rollback is not possible after drop in transaction.
        - DROP TABLE table_name;
        - DROP TABLE IF EXISTS table_name;

    -- TRUNCATE:
        - Truncate deletes all records from the table but keeps the structure of the table.
        - Truncate also sets auto_increment value to 1.
        - Rollback is not possible after truncate in transaction
        - TRUNCATE TABLE schema_name.table_name;

    -- COMMENTS:
        - COMMENTS ON COLUMN schema_name.table.column_name IS 'Timestamp that indicates when the ETL load process run.';
---------------------------------------------------------------------------
--DML: Performs actions on the table records, SP
    -- Insert:
        - INSERT INTO TABLE table_name (col_name, col_name1) VALUES (val, dat), (val1, dat1);
    -- Update:
        - UPDATE table_name SET col_name=value WHERE condition;
    -- DELETE:
        - Delete records based on a condition. 
        - Suppose we haev table with 10 rows. We deleted 2 records. Then when you add new records to table it start 11 not 9th rows
        - Rollback is possible with delete in transactions
        - DELETE FROM TABLE table_name WHERE condition;
    -- CALL:s
        - CALL schema_name.stored_procedure_name(par1, par2);
    -- EXPLAIN:
        - EXPLAIN(SELECT * FROM table_name;)
    -- LOCK:(Check Geekforgeeks for more info)
        - Like 'BEGIN TRANSACTION' and 'COMMIT' we use for a transaction.
        Lock used with  select query for data consistencey and avoid failure or keep status awaiting query.

____________________________________________________________________________
--TCL: Transaction level actions
    -- BEGIN TRANSACTION
    -- COMMIT
    -- ROLLBACK
    -- SET TRANSACTION
        - SET timezone = 'America/Newyork';
    -- SET CONSTRAINTS

---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
---------------------------------------------------------------------------

____________________________________________________________________________
