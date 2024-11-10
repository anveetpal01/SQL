select * from campusx.users t1
cross join campusx.groups t2;

select * from campusx.membership t1 
inner join campusx.users t2 
on t1.user_id = t2.user_id;

select * from campusx.membership t1 
left join campusx.users t2 
on t1.user_id = t2.user_id ;

select * from campusx.membership t1
right join campusx.users t2
on t1.user_id = t2.user_id;

select * from campusx.person1
union
select * from campusx.person2;

select * from campusx.users1 t1
join campusx.users1 t2 
on t1.emergency_contact = t2.user_id;

select * from campusx.students t1
join campusx.class t2
on t1.class_id = t2.class_id
and t1.enrollment_year = t2.class_year;

select t1.order_id,t3.name,t3.city from campusx.order_details t1
join campusx.orders t2
on t1.order_id = t2.order_id
join campusx.users t3
on t2.user_id = t3.user_id;

select order_id,vertical
from campusx.order_details t1
join campusx.category t2
on t1.category_id = t2.category_id;

select t1.order_id,sum(t2.profit)  
from campusx.orders t1 
join campusx.order_details t2
on t1.order_id = t2.order_id
group by t1.order_id
having sum(t2.profit) > 0;

select name,count(*) as 'num orders' from campusx.orders t1
join campusx.users t2
on t1.user_id = t2.user_id
group by t2.name
order by count(*) desc;

select t2.vertical,sum(profit)
from campusx.order_details t1
join campusx.category t2 
on t1.category_id = t2.category_id
group by t2.vertical
order by sum(profit) desc limit 1;

select t2.vertical,sum(profit)  
from campusx.order t1
join campusx.cate t2
on t1.order_id = t2.order_id
join campusx.users t3
on t1.user_id = t3.user_id
group by state
order by sum(profit) asc limit 1