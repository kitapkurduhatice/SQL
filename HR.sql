/*
1)
Select d.department_name,j.job_title job_name,h.start_date,h.end_date
From DEPARTMENTS d,JOBS j,JOB_HISTORY h,EMPLOYEES e
where e.job_id=j.JOB_ID
and j.JOB_ID=h.JOB_ID
and e.department_id=d.DEPARTMENT_ID
and e.first_name='Steven'
order by start_date,end_date;*/
/*

2)

Select c.country_name,d.department_name,j.job_title job_name,e.first_name||' '||e.last_name employee_name,e.salary
From COUNTRIES c,DEPARTMENTS d,EMPLOYEES e,JOBS j,LOCATIONS l
Where e.department_id=d.DEPARTMENT_ID
and c.COUNTRY_ID=l.COUNTRY_ID
and l.location_id = d.location_id
and e.SALARY=j.max_salary;
--and e.salary BETWEEN j.MAX_SALARY;
*/
/*

3)

SELECT e.first_name||' '||e.last_name employee_name, e.manager_id manager_name
from regions r,countries c, locations l, departments d, employees e, jobs j
where r.region_name='Europe'
and r.region_id = c.region_id
and c.country_id = l.country_id
and l.location_id = d.location_id
and e.EMPLOYEE_ID=e.MANAGER_ID;

/*
/*

4
SELECT e.first_name||' '||e.last_name employee_name, d.DEPARTMENT_NAME
from regions r,countries c, locations l, departments d, employees e, jobs j
where r.region_name='Europe'
and r.region_id = c.region_id
and c.country_id = l.country_id
and l.location_id = d.location_id
and d.department_id = e.department_id; 
)*/


5)
/*
select t1.employee,t1.manager
from (select e2.first_name || ' '||e2.last_name employee,e.first_name || ' '|| e.last_name
from employees e,(select e.*
from employees e,deparments d,locations l,countries c,regions r
where e.DEPARTMENT_ID=d.department_id and d.locations_id=l.locations_id
and r.region_id = c.region_id
and c.country_id = l.country_id
and l.location_id = d.location_id
and r.region_name='Europe') e2
where e.EMPLOYEE_ID=e2.maganer.id) t1,(select e2.first_name||' '|| e2.last_name
from DEPARTMENTS d,EMPLOYEES e,(select e.*
from EMPLOYEES e,DEPARTMENTS d,LOCATIONS l,COUNTRIES c,REGIONS r
where e.DEPARTMENT_ID=d.DEPARTMENT_ID and l.LOCATION_ID=d.LOCATION_ID and l.COUNTRY_ID=c.COUNTRY_ID and c.REGION_ID=r.REGION_ID
and r.REGION_NAME='Europe')e2
where d.DEPARTMENT_ID=e.DEPARTMENT_ID and d.MANAGER_ID=e.employee_id) t2
where t1.maganer=t2.department_manager and t1.employee=t2.employee;
*/


SELECT e.first_name||' '||e.last_name employee_name, d.DEPARTMENT_NAME
from regions r,countries c, locations l, departments d, employees e, jobs j
where r.region_name='Europe'
and r.region_id = c.region_id
and c.country_id = l.country_id
and l.location_id = d.location_id
and d.department_id = e.department_id 
and e.manager_id=d.department_id;