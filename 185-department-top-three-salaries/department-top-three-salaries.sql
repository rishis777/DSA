# Write your MySQL query statement below
with salry_rank as(
    select id, 
    dense_rank() over (
        partition by departmentId
        order by salary desc
    ) as salary_ranking

    from Employee
)

select 
d.name as Department , 
e.name as Employee , 
e.salary
from salry_rank sr
join Employee e
on sr.id= e.id
join Department d
on e.departmentId= d.id
where sr.salary_ranking<=3;