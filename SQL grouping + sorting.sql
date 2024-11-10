/*QUERY EXECUTION PRIORITY
FROM -> JOIN -> WHERE -> GROUP BY -> HAVING -> SELECT -> DISTINCT -> ORDER BY.

*/
select * from campusx.smartphones;
select model,screen_size from campusx.smartphones where brand_name = 'samsung' order by screen_size;

select model,num_front_cameras + num_rear_cameras AS 'total_cameras' from campusx.smartphones order by total_cameras desc;

select model,
round(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size) as 'ppi' from campusx.smartphones order by ppi desc;

select model,battery_capacity,price from campusx.smartphones 
order by battery_capacity asc limit 1,1;  /*limit x,y (x=xth row, y=number of rows from xth element)*/

select model,rating 
from campusx.smartphones 
where brand_name = 'apple' 
order by rating asc limit 1;

select * from campusx.smartphones
order by  rating asc limit 1;

select brand_name, count(*) as 'num_phones'
from campusx.smartphones
group by brand_name
order by num_phones desc limit 5;

select brand_name, count(*) as 'num_phones',
round(avg(price)) as 'avg_price',
max(rating) as 'max_rating',
round(avg(screen_size),2) as 'avg_screen_size',
round(avg(battery_capacity)) as 'avg_battery_capacity'
from campusx.smartphones
group by brand_name
order by num_phones desc limit 15;

select fast_charging_available,
avg(price) as 'avg price',
avg(rating) as 'avg rating'
from campusx.smartphones
group by fast_charging_available;

select brand_name, os,
processor_brand,
count(*) as 'num phones',
avg(primary_camera_rear) as 'avg rear resolution' 
from campusx.smartphones
group by brand_name,processor_brand,os;

select brand_name,
round(avg(screen_size)) as 'avg_screen_size'
from campusx.smartphones
group by brand_name 
order by avg_screen_size asc limit 1;

select brand_name, count(*) as 'count'
from campusx.smartphones
where has_nfc = 'True' and has_ir_blaster = 'True'
group by brand_name
order by count desc limit 1;

select has_nfc,avg(price) as 'avg_price'
from campusx.smartphones
where brand_name = 'samsung'
group by has_nfc;

select model, price from campusx.smartphones
order by price desc limit 1;

select brand_name, 
count(*) as 'count',
avg(rating) as 'avg_rating'
from campusx.smartphones
group by brand_name
having count > 20
order by avg_rating desc;

select brand_name,
avg(ram_capacity) as 'avg_ram_capacity'
from campusx.smartphones 
where refresh_rate > 90 and fast_charging_available = 1
group by brand_name
having count(*) > 10
order by 'avg_ram_capacity' desc limit 3;

select brand_name, avg(price) as 'avg_price'
from campusx.smartphones
where has_5g = 'True'
group by brand_name
having avg(rating) > 70 and count(*) > 10;

select count(*) from campusx.smartphones;
