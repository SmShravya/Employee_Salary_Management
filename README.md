##  Employee Salary Management System


This project is an Employee Salary Management System developed using Advanced Java (JSP, JDBC) and MySQL. It enables efficient management of employee salary records, including adding, updating, deleting, viewing, and generating detailed reports based on specific filters.
___
📋 Prerequisites                                                
Before running this application, make sure you have the following installed:                                                
Java Development Kit (JDK) 8 or higher                                                
Apache Tomcat 9.0 or higher                                                
MySQL Server 5.7 or XAMP Server                                                
MySQL JDBC Driver (mysql-connector-java)                                                
IDE: Eclipse (J2EE), IntelliJ IDEA, or any Java IDE                                                
Web Browser: Chrome, Firefox, or Edge                                                
___
🗄️ Database Setup                                                
1. Create Database                                                
CREATE DATABASE IF NOT EXISTS hospitaldb;                                                
USE hospitaldb;                                                
2. CREATE TABLE Employee (
Empno INT PRIMARY KEY,
EmpName VARCHAR(100),
DoJ DATE,
Gender VARCHAR(10),
Bsalary DECIMAL(10,2)
);                                  
___

🖼️ Screenshots                                                      

🏠 Home Page                                         

![Output]()

➕ Add Patient Page                                                           

![Output]()

🪟 View Patients                       
![Output]()                       

❌ Delete Patient                                  
![Output]()


🆕 Update Patient                           
![Output]()

📋 Reports                                      
![Output]()



MVC Architecture: Clear separation between Model, View, and Controller  

Database Integration: CRUD operations with MySQL                      

Web Development: JSP, Servlets, HTML, CSS, JavaScript                

Input Validation: Both client-side and server-side                                     

Report Generation: Dynamic data analysis and presentation         

Professional UI: Responsive design with Bootstrap              

