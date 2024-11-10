CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL
);
SELECT * FROM users;
INSERT INTO campusx.users 
VALUES usersusers
(NULL, 'Anveet Pal3', 'anveetpal3@gmail.com', '123@abc'),
(NULL, 'Anveet Pal4', 'anveetpal4@gmail.com', '123@abc'),
(NULL, 'Anveet Pal5', 'anveetpal5@gmail.com', '123@abc');
SELECT * FROM campusx.smartphones;
SELECT os AS 'Operating System', battery_capacity AS 'MAh' FROM campusx.smartphones WHERE 1;
SELECT model, SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS 'PPI' FROM campusx.smartphones;
SELECT model,'smartphone' AS 'type' FROM campusx.smartphones;
SELECT DISTINCT(processor_brand) AS 'Processor Brands'
FROM campusx.smartphones;
select distinct brand_name, processor_brand from campusx.smartphones;
select * from campusx.smartphones where brand_name = 'samsung';
select * from campusx.smartphones where price > 100000;
select * from campusx.smartphones where price > 10000 and price < 20000;
select * from campusx.smartphones where price between 10000 and 20000;
select * from campusx.smartphones where price < 15000 and rating > 80 and processor_brand = 'snapdragon';
select * from campusx.smartphones where brand_name = 'samsung' and ram_capacity > 8 and processor_brand = 'snapdragon';
select distinct(brand_name) from campusx.smartphones where price > 100000;
select * from campusx.smartphones where processor_brand = 'snapdragon' or 
processor_brand = 'exynos' or 
processor_brand = 'bionic';
select * from campusx.smartphones where
processor_brand not in ('snapdragon', 'exynos', 'bionic');


select * from campusx.smartphones
where processor_brand = 'mediatek';

update campusx.smartphones
set processor_brand = 'dimensity'
where processor_brand = 'meditek';

select * from campusx.smartphones
where price > 200000;
delete from campusx.smartphones where price > 200000;
delete from campusx.smartphones where primary_camera_rear > 150 and brand_name = 'samsumg';
select * from campusx.smartphones where primary_camera_rear > 150 ;

select min(ram_capacity) from campusx.smartphones;
select max(price) from campusx.smartphones;
select max(price) from campusx.smartphones where brand_name = 'samsung';
select avg(price) from campusx.smartphones where brand_name = 'apple';
select sum(price) from campusx.smartphones;
select count(*) from campusx.smartphones where brand_name = 'oneplus';
select count(distinct(brand_name)) from campusx.smartphones;
select std(screen_size) from campusx.smartphones;