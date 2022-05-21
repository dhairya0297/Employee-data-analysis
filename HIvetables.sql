Create external Table department_ext(dept_no varchar(20) ,dept_name varchar(20))STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/departments";

Create external Table dept_mngr_ext(emp_no varchar(20) ,dept_no varchar(20))STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/dept_emp";

Create external Table dept_manager_ext(dept_no varchar(20) ,emp_no varchar(20))STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/dept_manager"

Create external Table employees_ext(emp_no varchar(20) ,emp_title_id varchar(20), birth_date VARCHAR(8),first_name VARCHAR(20),last_name VARCHAR(20),sex VARCHAR(1),hire_date VARCHAR(8) )STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/employees";

Create external Table salaries_ext(emp_no varchar(20), salary varchar(20))STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/salaries"

Create external Table titles_ext(title_id varchar(20), title varchar(50))STORED AS PARQUET LOCATION "/user/anabig114244/Capstone/titles"


con=hive.Connection(host="ip-10-1-2-24.ap-south-1.compute.internal",port=10000,username="hiveuser_test", auth='NOSASL')
