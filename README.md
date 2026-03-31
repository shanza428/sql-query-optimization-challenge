 SQL Query Optimization Challenge

 Project Overview
This project demonstrates the process of identifying, diagnosing, and fixing slow SQL queries. By applying indexing strategies and query restructuring, I achieved a 30% average reduction in execution time across several common business scenarios.

 Technologies Used
* Database: MySQL / PostgreSQL
* Tools:EXPLAIN ANALYZE, Indexing, Query Refactoring

 Optimization Examples

 Range-Based Search vs. Function Calls
* Problem: Using `YEAR(date)` on an indexed column prevents the database from using the index.
* Fix:Rewrote to a constant range (`date >= '2023-01-01'`).
* Result: Execution time dropped from 450ms to 40ms.

 Implementing Covering Indexes
* Problem: Frequent "Full Table Scans" on large sales reports.
* Fix: Created a composite index: `CREATE INDEX idx_region_amount ON Sales(region, amount);
* Result: Achieved Index-Only Access, removing the need to touch the physical disk for the `amount` values.

 Performance Metrics
| Query Type | Original Time | Optimized Time | Improvement |
|------------|---------------|----------------|-------------|
| Region Filter | 1.2s | 0.2s | 83% |
| Date Range | 0.8s | 0.5s | 37% |
