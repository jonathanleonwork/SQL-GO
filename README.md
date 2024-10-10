# Simple SQL Operation using GO

## Set up a database
In this step, you’ll create the database you’ll be working with. You’ll use the CLI for the DBMS itself to create the database and table, as well as to add data.

You’ll be creating a database with data about vintage jazz recordings on vinyl.

The code here uses the MySQL CLI, but most DBMSes have their own CLI with similar features.

Open a new command prompt.

At the command line, log into your DBMS, as in the following example for MySQL.
```
    mysql -u root -p
    Enter password:

    mysql>
```
At the mysql command prompt, create a database.

```
mysql> create database recordings;
```
Change to the database you just created so you can add tables.
```
mysql> use recordings;
Database changed
```
In your text editor, in the data-access folder, create a file called create-tables.sql to hold SQL script for adding tables.

Into the file, paste the following SQL code, then save the file.
```
DROP TABLE IF EXISTS album;
CREATE TABLE album (
  id         INT AUTO_INCREMENT NOT NULL,
  title      VARCHAR(128) NOT NULL,
  artist     VARCHAR(255) NOT NULL,
  price      DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO album
  (title, artist, price)
VALUES
  ('Blue Train', 'John Coltrane', 56.99),
  ('Giant Steps', 'John Coltrane', 63.99),
  ('Jeru', 'Gerry Mulligan', 17.99),
  ('Sarah Vaughan', 'Sarah Vaughan', 34.98);
```
```
mysql> source /path/to/create-tables.sql
```

At your DBMS command prompt, use a SELECT statement to verify you’ve successfully created the table with data.

```
mysql> select * from album;
+----+---------------+----------------+-------+
| id | title         | artist         | price |
+----+---------------+----------------+-------+
|  1 | Blue Train    | John Coltrane  | 56.99 |
|  2 | Giant Steps   | John Coltrane  | 63.99 |
|  3 | Jeru          | Gerry Mulligan | 17.99 |
|  4 | Sarah Vaughan | Sarah Vaughan  | 34.98 |
+----+---------------+----------------+-------+
4 rows in set (0.00 sec)

```
Next, you’ll write some Go code to connect so you can query.


## Run GO

Run this command.

```
go mod tidy

go run .
```