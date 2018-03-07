# Spring-JDBC-CRUD
This example shows how to perform a complete CRUD with JDBC in Spring framework

## Complete CRUD
This example can perform insert, edit and delete operations on mysql database with jdbc

## Requirements
- Maven
- Mysql-server

## To run this example
Clone the repository.

		git clone https://github.com/JuandeLS3/Spring-JDBC-CRUD
			

Create a database and import the sql script

		mysql -u root -p
		create database db1;
		use db1;
		source db1.sql;

Edit the **database.properties** file according to your preferences

		database.driverClassName=com.mysql.jdbc.Driver
		database.username=root
		database.password=root
		database.url=jdbc:mysql://localhost:3306/db1

Run the application with Maven

		mvn clean jetty:run

The first time you run this example, maven will download the necessary dependencies.

Go to the browser and launch the app:
		
		localhost:9999/employee


## License

This project is licensed under the Apache 2.0 - see the [LICENSE.md](LICENSE.md) file for details [LICENSE](https://github.com/JuandeLS3/Flask-admin-forms/blob/master/LICENSE "LICENSE")
