<h1 align="center"> Data base </h1> <br><center aling = "center">
  
  <img src="https://www.bossolutions.co.uk/wp-content/uploads/2020/09/db.png" width ="100%" height= "200px">
</center>

# Content
 - Introduction
 - Repository
 - Install
 - Information

## Introduction
Databases come in when we transition to digital media.

Database types:
- **Relational:** In the industry there are several companies dedicated to managing relational databases such as SQL Server, Oracle, MariaDB, among others.
- **Non-relational:** They are still moving forward and there are very different examples such as cassandra, elasticsearch, neo4j, MongoDB, among others.

The databases based on files were data stored in plain text, easy to save but very difficult to consult and due to the need to improve this, relational databases were born. Its inventor **Edgar Codd** left certain rules to ensure that the entire philosophy of databases was not lost, standardizing the process.

An **entity** is something similar to an object (object-oriented programming) and represents something in the real world, even something abstract. They have attributes which are the things that make them an entity and by convention they are plural. **Composite attributes** are those that have attributes themselves. **The key attributes** are those that identify the entity and cannot be repeated


**Relationships** allow us to link or unite our different entities and are represented by diamonds. By convention they are defined through verbs.
Relationships have a property called **cardinality** and it has to do with numbers.

<h3>For example</h3>

- **One to one:** One entity is uniquely related to another and vice versa. For example, if we had an entity with different chassis and another with license plates, we should determine that each chassis can only have one license plate (and each license plate a chassis, not more in any case).

<div><img src="https://i.blogs.es/6a1856/relacion11/1366_2000.png" width= "60%"></div>

- **One-to-many or many-to-one:** determines that a record of an entity can be related to several of another entity, but in this entity exist only once. As it has been in the previous case of the workshop worker.

<div><img src="https://i.blogs.es/f1486b/relacion1n/1366_2000.png" width= "60%"></div>

- **Many-to-many:** determines that one entity can be related to another with none or more records and vice versa. For example, in the workshop a car can be repaired by several different mechanics and those mechanics can repair several different cars.

<div><img src="https://i.blogs.es/1f3461/relacionvv/1366_2000.png" width= "60%"></div>

# Repository

In this repository are 2 projects:

- **PlatziBlog:** created by the course excercise and have the create file, inster data and consults with SELECT querys, JOINS, ORDER BY, BETWEEN, SORT, LIKE and more.
- **AnimePlatzi:** created to practice the course, creatin UMR diagram, checking the relationships and implementis the difetents query methods to consult, ask, delete and insert information.

<h3>ER Diagram (Entity Relationship)</h3>
 
A diagram is like a map and helps us understand which entities we are going to work with, what their relationships are and what role they are going to play in the database applications.

<div><img src="https://github.com/ItzelAlonsoG/DataBase/blob/main/DiagramaSQL.png" width= "100%"></div>

# Install

[Download MySQL](https://dev.mysql.com/downloads/workbench/)

# Information
For more information [Platzi DB Course](https://platzi.com/clases/bd/)
