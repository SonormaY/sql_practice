```
psql -d northwind
```
#### Structure
```
SELECT (DISTINCT) column1, column2...*
FROM table1
JOIN
WHERE ...... OR ... AND .... OR ...
ORDER BY ........ ASC | DESC;
```
#### WHERE
##### Numerical and text values
`=` - equal to
`!=` or `<>`  - not equal to
`<` - less than
`<=` - less than or equal to
`>` - greater than
`>=` - greater than or equal to

##### BETWEEN operator
```
SELECT * FROM table1
WHERE salary BETWEEN 500 AND 600;
```

##### Whether NULL or NOT NULL
Do not use `WHERE column1 = NULL` !!!!!
Result always will be 0 rows because ```WHERE``` requires true to work
Instead, use `IS NULL` or `IS NOT NULL`

##### IN operator
```
SELECT *
FROM table1
WHERE name IN ('John', 'Anthony', 'Jack');
```
Simple operator to return all rows where certain column is in our given list

#### ORDER BY
```
ORDER BY column1 ASC, column2 DESC;
```
This means that result will be ordered  by *column1* ascending, but if 2 records have identical *column1*, then the will be ordered by *column2* among themselves

#### Simple operators (AND, OR, NOT)

```
SELECT column1, column2, ...
FROM table1
WHERE condition1 AND condition2 AND NOT condition3 ...;
```

#### INSERT INTO
There is two ways to insert records:

```
INSERT INTO table1 (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

```
INSERT INTO table1
VALUES (value1, value2, value3, ...);
```
This means that with first way you can insert data only in  certain columns. And therefore all other columns will be NULL. And of course you can insert multiple rows at once. 
e,g `VALUES (value1, value2, value3, ...), (value4, value5, value6, ...);`

#### UPDATE

Basic syntax
```
UPDATE table_name 
SET column1 = value1, column2 = value2, ...   
WHERE condition;
```
Dont forget to specify WHERE!!!!!!!

#### DELETE

Basic syntax:
```
DELETE FROM table_name WHERE condition;
```
Also dont forget to specify WHERE!!!!!
#### Aggregate functions

Aggregate functions are often used with the `GROUP BY` clause of the `SELECT` statement. The `GROUP BY` clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.

The most commonly used SQL aggregate functions are:

- `MIN()` - returns the smallest value within the selected column
- `MAX()` - returns the largest value within the selected column
- `COUNT()` - returns the number of rows in a set
- `SUM()` - returns the total sum of a numerical column
- `AVG()` - returns the average value of a numerical column

#### LIKE

The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.
```
SELECT * FROM Customers  
WHERE CustomerName LIKE 'a%';
```

##### Wildcard Characters

|Symbol|Description|
|---|---|
|%|Represents zero or more characters|
|_|Represents a single character|
|[]|Represents any single character within the brackets *|
|^|Represents any character not in the brackets *|
|-|Represents any single character within the specified range *|
|{}|Represents any escaped character **|
###### `%` Wildcard
```
SELECT * FROM Customers  
WHERE CustomerName LIKE '%es';
```
Return all customers that ends with the pattern 'es':

###### `_` Wildcard
It can be any character or number, but each `_` represents one, and only one, character.
```
SELECT * FROM Customers  
WHERE City LIKE '_ondon';
```
Return all customers with a `City` starting with any character, followed by "ondon":

###### `[]` Wildcard
The `[]` wildcard returns a result if _any_ of the characters inside gets a match.
```
SELECT * FROM Customers  
WHERE CustomerName LIKE '[bsp]%';
```
Return all customers starting with either "b", "s", or "p":

###### `-` Wildcard
The `-` wildcard allows you to specify a range of characters inside the `[]` wildcard.
```
SELECT * FROM Customers  
WHERE CustomerName LIKE '[a-f]%';
```
Return all customers starting with "a", "b", "c", "d", "e" or "f":

#### IN & BETWEEN
The `IN` operator allows you to specify multiple values in a `WHERE` clause.
```
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

Also you can absolutely put SELECT statement inside brackets after `IN`

The `BETWEEN` operator selects values within a given range. The values can be numbers, text, or dates. The `BETWEEN` operator is inclusive: begin and end values are included.
```
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

#### Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the `AS` keyword.

```
SELECT column_name (AS) alias_name   
FROM table_name (AS) alias_name;
```

#### Normal Forms
##### 1NF
1. Using row order to convey information is not permitted
2. Mixing data types within the same column is not permitted
3. Having a table without a primary key is not permitted
4. Repeating groups are not permitted
##### 2NF
- Each non-key attribute must depend on the entire primary key
##### 3NF
- Every non-key attribute in a table should depend on the key, the whole key, and nothing but the key
##### 4NF
- Multivalued dependencies in a table must be multivalued dependencies on the key