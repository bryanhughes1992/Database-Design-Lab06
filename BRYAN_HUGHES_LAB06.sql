-- QUESTION #1: Insert a row into your `demo` table.
SELECT * FROM demo d; 
	
INSERT INTO demo (id, `characters`, dates, decimalNumbers, whole_numbers, date_and_time)
VALUES (100, 'Bryan', '1992-07-06', 69.69, 420, '2020-10-16 10:45:40');

-- QUESTION #2: 
-- Insert another row into your `demo` table, this time without specifying the column names.
INSERT INTO demo
VALUES (101, 'Simon', '1993-08-03', 3.14, 42, '2020-10-16 11:22:20');

-- QUESTION #3:
-- Insert another row, this time specify only three of the column names, 
-- and only insert data for those columns.
INSERT INTO demo (`characters`, whole_numbers, date_and_time)
VALUES ('Bernie', 200, '2020-10-16 11:29:34');

-- QUESTION #4:
-- Insert another row, with data for each column. 
-- Use arithmetic operations to populate any columns with numerical data types.
INSERT INTO demo
VALUES (101+2, 'Sotoy', '1988-12-06', 3.14 + 2.20, 42 + 42, '2020-10-16 11:46:33');

-- QUESTION #5:
-- Insert another row, with data for each column. 
-- Use the NOW function to populate the `date` and `date_and_time` columns.
INSERT INTO demo 
VALUES (104, 'Eleanor', NOW(), 2.23, 44, NOW());

-- QUESTION #6:
-- Insert another row, with data for each column. 
-- To populate the `whole_numbers` column, use the NOW function, 
-- along with DATEDIFF, to enter the number of days between now and Valentine's Day.
INSERT INTO demo 
VALUES (105, 'Barbara', NOW(), 4.20, DATEDIFF('2021-02-14', NOW()), NOW());

-- QUESTION #7:
-- Insert another row, with data for each column. 
-- Use NOW and the DATE_SUB function to populate the `date` column 
-- with the date 20 months before today. Use NOW and the DATE_ADD 
-- function to populate the `date_and_time` column with the date 500 hours from today.
INSERT INTO demo 
VALUES (106, 'Thao', DATE_SUB(NOW(), INTERVAL 20 MONTH), 0.00, 0, NOW());

-- QUESTION #8:
-- Write a select statement that only returns the month names from your `dates` 
-- and `date_and_time` columns.
SELECT 
	EXTRACT(MONTH FROM d.dates), 
	EXTRACT(MONTH FROM d.date_and_time)
FROM demo d;

-- QUESTION #9:
-- Write a select statement that only returns values from your decimalNumbers 
-- column as the data type DECIMAL, with zero decimal places.
SELECT CAST(d.decimalNumbers AS DECIMAL)
FROM demo d;

-- QUESTION #10:
-- Write a select statement with a WHERE condition that uses the EXTRACT function.
SELECT EXTRACT(DAY FROM d.dates)
FROM demo d 
WHERE d.dates > 2;





