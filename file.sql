--This is my old program
--This is my PL/SQL program 
select department_id,max(salary) from employees 
group by department_id
having department_id=60;

declare
Type yuva is record( A employees.department_id%type, B employees.salary%type);
i yuva;
begin
select department_id,max(salary) into i from employees 
group by department_id
having department_id=60;
dbms_output.put_line('The Maximum salary in department_'||i.A||'is'||i.B);
end;
/
--world
--hello

