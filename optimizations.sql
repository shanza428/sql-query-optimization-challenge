-- OPTIMIZATION 1: Handling Text Search
-- Problem: Full Table Scan when filtering by Region
-- Slow Query:
SELECT * FROM Sales WHERE region = 'North';

-- Optimization: Added Prefix Index
CREATE INDEX idx_region ON Sales(region(10));

-- OPTIMIZATION 2: Range-based Date Filtering
-- Problem: Functions like YEAR() prevent index usage (Sargability)
-- Slow Query:
SELECT * FROM Sales WHERE YEAR(order_date) = 2023;

-- Optimization: Rewritten to use index-friendly range
SELECT * FROM Sales WHERE order_date >= '2023-01-01' AND order_date <= '2023-12-31';

-- OPTIMIZATION 3: Covering Index
-- Problem: Calculating sums requires hitting the main table disk
-- Optimization: Create index that includes the data column
CREATE INDEX idx_region_amount ON Sales(region(10), amount);