select * from practice.sleep_efficiency
;

select avg(`Sleep duration`) 'avg_sleep_duration' from practice.sleep_efficiency
where `Sleep duration` > 7.4 and gender = 'Male' limit 15;

select round(avg(`Sleep duration`*(`Deep sleep percentage`/100)),2) 'avg_deep_sleep_time' 
from practice.sleep_efficiency;

select age,`Light sleep percentage`,`Deep sleep percentage` from practice.sleep_efficiency
where `Deep sleep percentage` between 25 and 45 
order by `Light sleep percentage` asc limit 10,20;

select 
round(avg(`Sleep duration`*(`Deep sleep percentage`/100)),2) 'avg_deep_sleep_time',
round(avg(`Sleep duration`*(`REM sleep percentage`/100)),2) 'avg_REM_sleep_time',
round(avg(`Sleep duration`*(`Light sleep percentage`/100)),2) 'avg_light_sleep_time' 
from practice.sleep_efficiency
group by `Exercise frequency`,`Smoking status`;

select 
avg(`Caffeine consumption`) 'avg_caffine_consumption',
round(avg(`Sleep duration`*(`Deep sleep percentage`/100)),2) 'avg_deep_sleep_time',
avg(`Alcohol consumption`) 'avg_alcohol_consumption'
from practice.sleep_efficiency
where `Exercise frequency` > 2
group by Awakenings;

select `Power Station`,count(*) 'occurrences' from practice.powergeneration
group by `Power Station` 
having avg(`Monitored Cap.(MW)`) between 1000 and 2000
and count(*) > 200;