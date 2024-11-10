SELECT 
    *
FROM
    practice.`insurance_data - insurance_data`
WHERE
    gender = 'male' AND region = 'southwest';

SELECT 
    *
FROM
    practice.`insurance_data - insurance_data`
WHERE
    bmi BETWEEN 30 AND 45;

SELECT 
    MIN(bloodpressure) MinBP, MAX(bloodpressure) MaxBP, smoker
FROM
    practice.`insurance_data - insurance_data`
WHERE
    smoker = 'Yes';

SELECT 
    COUNT(PatientID)
FROM
    practice.`insurance_data - insurance_data`
WHERE
    region != 'southwest';

SELECT 
    SUM(claim)
FROM
    practice.`insurance_data - insurance_data`
WHERE
    gender = 'male' AND smoker = 'Yes';

SELECT 
    *
FROM
    practice.`insurance_data - insurance_data`
WHERE
    region LIKE '%south%';

SELECT 
    COUNT(*)
FROM
    practice.`insurance_data - insurance_data`
WHERE
    bloodpressure BETWEEN 90 AND 120;

SELECT 
    COUNT(*)
FROM
    practice.`insurance_data - insurance_data`
WHERE
    age < 17
        AND bloodpressure BETWEEN 80 + (age * 2) AND 100 + (age * 2);

select avg(claim)
from practice.`insurance_data - insurance_data`
where smoker = 'No' and gender = 'female' and diabetic = 'Yes';

update practice.`insurance_data - insurance_data`
set claim = 5000
where PatientID = 1234;

delete from practice.`insurance_data - insurance_data`
where smoker = 'Yes' and children = 0;
select *
from practice.`insurance_data - insurance_data`
;