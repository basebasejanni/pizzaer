-- create test user
insert into Customers Values 
('test', 'test', 10203040);

-- create test prices
insert into Price(Price) values
(0), (75), (100)

-- create toppings 
insert into ToppingTypes( isDairy, isMeat, isVeggie, isDipping, isSpicy, isASpice ) values 
(1, 0, 0, 0, 0, 0), (0, 1, 0, 0, 0, 0), (0, 0, 1, 0, 0, 0), (0, 0, 0, 1, 0, 0), (0, 0, 0, 0, 1, 0), (0, 0, 0, 0, 0, 1), (0, 0, 1, 0, 1, 0);

-- topping types
insert into Toppings (ToppingName, ToppingTypeID, PriceID) values 
('skinke', 2, 1), ('parmesan', 1, 1), ('gulerod', 3, 1), ('chili', 7, 1)

-- create pizza
insert into Pizza (PriceID) VALUES 
(2),(2)

-- create orders
insert into Orders(OrderDate, IsFinished) values
(GETDATE(), 0)

-- create a customerorder
insert into CustomerOrders(orderID, CustomerID, PizzaID) values
(1, 1, 1), (1, 1, 2), (1, 1, 3)





-- see data
create procedure GetData
as
select * from ToppingTypes
select * from  Toppings
select * from Pizza
select * from PizzaTopping
select * from Orders
select * from Customers
select * from CustomerOrders
select * from Price
go;

-- exeute SP
exec GetData;


-- drop all tables
drop table PizzaTopping, Orders, Pizza, Toppings, ToppingTypes, Price, Customers