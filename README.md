# SQL - Employee Database
## A Mystery in Two Parts

![DBstock](/images/DBstock.png)

### Background

It is a beautiful spring day, and it is two weeks since commencing work as a new data engineer at Pewlett Hackard. My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

I will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data by performing the followng:

1. Data Modeling
2. Data Engineering
3. Data Analysis

### Technologies

* PostgreSQL
* Jupyter Notebook
* QuickDBD

### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. I used QuickDBD.

![Employees_ERD](/images/Employees_ERD.png)

### Data Engineering

Created a table schema for each of the six CSV files by using this information. Remember to specify data types, primary keys, foreign keys, and other constraints.

Imported each CSV file into the corresponding SQL table.

![SQLsch1](/images/SQLsch1.PNG)
![SQLsch2](/images/SQLsch2.PNG)

### Data Analysis

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

![SQLda1](/images/SQLda1.PNG)

2. List first name, last name, and hire date for employees who were hired in 1986.

![SQLda2](/images/SQLda2.PNG)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![SQLda3](/images/SQLda3.PNG)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![SQLda4](/images/SQLda4.PNG)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![SQLda5](/images/SQLda5.PNG)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![SQLda6](/images/SQLda6.PNG)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![SQLda7](/images/SQLda7.PNG)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![SQLda8](/images/SQLda8.PNG)

