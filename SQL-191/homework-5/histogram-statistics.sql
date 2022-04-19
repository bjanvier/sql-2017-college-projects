create or replace table statistics as (
    select COUNT(*), min(light_id), max(light_id), sum(light_id), avg(light_id) from lights
)





SELECT * FROM Orders where customer_id='".$_SESSION['id']."'



SELECT Orders.PizzaID, Crusts.PizzaName, Orders.OrderDate
FROM Orders
INNER JOIN Crusts ON Orders.CustomerID=Crusts.CustomerID;
INNER JOIN Crusts ON Orders.CustomerID=Crusts.CustomerID;
INNER JOIN Crusts ON Orders.CustomerID=Crusts.CustomerID;



ALTER TABLE Orders
  ADD OrderDate datetime DEFAULT NULL;