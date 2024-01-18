# Write your MySQL query statement below

select EUNI.unique_id, E.name 
from Employees as E
left join EmployeeUNI as EUNI on E.id = EUNI.id

/*This MySQL query selects the "unique_id" and "name" columns from the "EmployeeUNI" table (aliased as "EUNI") and the "Employees" table (aliased as "E"). 
It uses a left join to match records based on the "id" column, retrieving all records from the "Employees" table and matching records from the "EmployeeUNI" table.*/