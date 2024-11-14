SELECT 
    a.Country,
    SUM(a.A) AS total_a,
    SUM(b.D) AS total_d,
    (SUM(a.A) + SUM(b.D)) AS total_ad
FROM
    country_ab a
        JOIN
    country_cd b ON a.Country = b.Country
GROUP BY Country
order by total_ad desc
limit 10;

SELECT 
    b.Region, a.Country,a.Edition, SUM(a.CL) AS total_cl
FROM
    country_cl a
        JOIN
    country_ab b ON a.Country = b.Country
WHERE
    a.Edition = 2020
GROUP BY b.Region , a.Country
ORDER BY total_cl DESC;


 
select Name,sum(Quantity) as total_sold
from products a
join sales1 b on a.ProductID = b.ProductID
group by Name 
order by total_sold desc
limit 5;

SELECT 
    a.FirstName, 
    sum(b.Quantity) as total_sold
FROM
    employees a
        JOIN
    sales1 b ON a.EmployeeID = b.SalesPersonID
group by a.FirstName
order by total_sold desc 
limit 1;

select b.FirstName, count(distinct a.CustomerID) as unique_customers 
from sales1 a
join employees b on a.SalesPersonID = b.EmployeeID
group by b.FirstName
order by unique_customers desc limit 1;

select c.FirstName,round(sum((a.Price*b.Quantity))) as 'revenue' from products a
join sales1 b on a.ProductID = b.ProductID
join employees c on c.EmployeeID = b.SalesPersonID
group by c.FirstName 
order by revenue desc limit 5;

select a.CustomerID,count(SalesID) as purchase_count from customers a
join sales1 b on b.CustomerID = a.CustomerID
group by a.CustomerID
having purchase_count;

select b.FirstName,count(distinct CustomerID) as customer_count from sales1 a 
join employees b on a.SalesPersonID = b.EmployeeID
group by b.FirstName
having customer_count > 5;

SELECT c1.CustomerID AS Customer1, c2.CustomerID AS Customer2, s.SalesPersonID
FROM sales1 s
JOIN customers c1 ON s.CustomerID = c1.CustomerID
JOIN customers c2 ON s.CustomerID = c2.CustomerID
    AND c1.CustomerID < c2.CustomerID
GROUP BY s.SalesPersonID, c1.CustomerID, c2.CustomerID;