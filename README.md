# Questions Answers

## Question 1: [What is PostgreSQL?]

**A:**
[PostgreSQL a Open Source Relational Database Management System. It Support SQL Query to communicate with PostgreSQL. There Data Store Table format. PostgreSQL is Modern Database. PostgreSQL is most Popular Database in the world.]

## Question 2: [What is the purpose of a database schema in PostgreSQL?]

**A**
[The purpose of a database schema is PostgreSQL is to organize database into logical group, making to easier to manage, secure and easy to access data.]

## Question 3: [Explain the primary key and foreign key concepts in PostgreSQL.]

**A**
[We know every database table have unique key attribute. Each main unique key attribute we call primary key. Using primary key we easy to access any raw data each table. Foreign key is always a other table primary key. That means foreign key added table as outside table main primary key reference. Using foreign key we relation between other table and access data.]

## Question 4: [What is the difference between the VARCHAR and CHAR data types?]

**A**
[VARCHAR and CHAR there both are data types. CHAR using when that fixed and constraint like if there CHAR(5) that means you must provide 5 character not must not less. In the other side when we using the VARCHAR then when don't have any restrictions but not much. Like VARCHAR(50) we don't add character more than 50 but when we give less that 50 lie 20, 37 there no problem and that not grab most memory.]

## Question 5: [Explain the purpose of the WHERE clause in a SELECT statement.]

**A**
[WHERE clause use when find the data base condition check if condition match then do the work. On the other hand SELECT using for retrieve data means we decide how many data we get. Is we get all data or particular data that decide SELECT statement.]

## Question 6: [What are the LIMIT and OFFSET clauses used for?]

**A**
[When we SELECT Data form we can limit data get that case we can use LIMIT Clause and If we skip data then we use OFFSET.]

## Question 7: [How can you perform data modification using UPDATE statements?]

**A**
[First We Write UPDATE then target which table row we update then Using SET Method to give data what we update and last Where we update that target using WHERE clause.]

## Question 8: [What is the significance of the JOIN operation, and how does it work in PostgreSQL?]

**A**
[JOIN is the powerful statement to connection between two or more table. When we need to perform and work more than one table then we use join method. JOIN Work is when we use foreign key that means that reason when perform JOIN statement. There are many type of JOIN Like INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN etc. Each type JOIN have different work.]

## Question 9: [Explain the GROUP BY clause and its role in aggregation operations.]

**A**
[First Aggregation using the run in build function in SQL aggregation return only one value ok. GROUP BY means group table any Attribute what we want and that not repeat means not duplication so that reason we perform aggregation operation each field.]

## Question 10: [How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?]

**A**
[Aggregate function work like return only one value and what aggregate we use that as the name of the aggregate. Like count(work to counting base on parameter), sum(using form calculate sum base on parameter), avg(parameter using give the average value) so this like it work];

# Question 11: [What is the purpose of an index in PostgreSQL, and how does it optimize query performance?]

**A**
[Index very important to our database that using for increase the performance to get data. Implicitly primary key as default Index system added. We can manual add Index system to create index.]

# Question 12: [Explain the concept of a PostgreSQL view and how it differs from a table.]

**A**
[VIEW as like programming language Variable. View vary data or quey of bunch of data. Like when we create view that means we store some data that like shadow table not real table. When we multiple time need to work same like data table that reason we make multiple query to get this particular data but if we create view and store this conditional data than we can use as simple as posable use call the view like select from viewName.]