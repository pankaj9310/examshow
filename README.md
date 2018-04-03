#ExamShow - Online Exam System

On-Line Exam System is for Educational Institute to prepare an exam and online quiz
for students of different domains like Sports,Programming, Science etc. and used for quiz
events of Tech-Fest of Colleges.
- Demo link admin Panel https://www.youtube.com/watch?v=aolbJEzlw9M
- Faculty Panel https://www.youtube.com/watch?v=pt_GCn4-PQQ
- Student Panel https://www.youtube.com/watch?v=v4IRpTMTFK4

##Core Technologies Used 

 Why Choose Java : Java makes the Application platform Independent .“Write Once, Run Anywhere”

- BackEnd : - J2SE,J2EE,JSTL,JUNIT
- FrontEnd : Twitter Bootstrap,Ajax,jQuery,JSON,CSS,HTML 
- Database : Mysql

##Features


- Examshow makes it easy to share what matters most in your Quiz world !!

- User Interface : 

	+ User can View Subjects,Practice MCQs
	+ User can register & appear for Quiz,View recent Events
	+ User can View Results,Notifications

- Faculty Panel : 

	+ Faculty can make/delete papers
	+ Faculty can view/update papers
	+ Faculty can view results,append questions,send Notifications

- Admin Panel :

	+ Admin can verify/view/delete students
	+ Admin can verify/view/delete fauculty
	+ Admin can view/delete Quiz


##Pre-requisites


- Download and install Netbeans 7.1 : Quickly and easily develop desktop, mobile and web applications
with Java, JavaScript, HTML5, PHP, C/C++ and more.NetBeans IDE is FREE, open source, and has a worldwide community of users and developers. 

	+ Select Platform Linux x64 & all section
	+ https://netbeans.org/downloads/

	+In terminal,navigate to download directory & run
```
	sh netbeans-7.1-linux.sh
```
	+ select tomcat server instead of glassfish during installation


- Update your system : Ubuntu Source list generator: https://repogen.simplylinux.ch/generate.php

```
	sudo apt-get update
	sudo apt-get upgrade
```

- Install MySQL

```
	sudo apt-get install mysql-server
```

	+ Start/Stop Mysql server 
	
	```
		sudo service mysql start
		sudo service mysql stop
	```

	+ To log in to MySQL as the root user:
	
	```
		mysql -u root -p
	```

	+ Create a New MySQL User and Database

	```
		create database testdb;
		create user 'testuser'@'localhost' identified by 'password';
		grant all on testdb.* to 'testuser';
	```




- Install phpmyadmin : phpMyAdmin is a web application that provides a GUI to aid in MySQL database administration

	+ Step 1: Install Apache2, PHP and MySQL. We assume you already have installed LAMP on your system.

		- Install Apache 
		```
			sudo apt-get install apache2
			sudo service apache2 restart
		```

		- Install PHP

		```
			sudo apt-get install php5
		```
				
		-If you need MySQL support also install php5-mysql
		
		```
			sudo apt-get install php5-mysql
		```

	+ Step 2: Install phpMyAdmin.

	```
		sudo apt-get install phpmyadmin
	```

		- After the installation has completed, add phpmyadmin to the apache configuration.
		```
			sudo vi /etc/apache2/apache2.conf
		```

		- Add the phpmyadmin config to the file.
		```
			Include /etc/phpmyadmin/apache.conf
		```

		- Restart apache:
		```
			sudo service apache2 restart
		```

##Database Import

-create database codeshare on Mysql
-Import codeshare.sql database from phpmyadmin
- Download the repository in Extract to NetBeansProjects folder of your home directory
- Open Netbeans and import project 
- Change Config.java in src/java/connection/Config.java

```java
    String url = "jdbc:mysql://localhost:3306/examshow";
    String user = "YOUR_DB_USER";
    String pass = "YOUR_DB_PASS";
```

##To Run : 

- Right click on Project codeoj & select deploy to run the project
