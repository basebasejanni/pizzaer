-- create and use database
create database CafeLuccas;
use CafeLuccas;

-- create tables
-- type of topping
create table ToppingTypes (
	ToppingTypeID INT NOT NULL identity(1,1),
	isDairy BIT,
	isMeat BIT,
	isVeggie BIT,
	isDipping bit,
	isSpicy bit,
	isASpice bit,
	Primary key (ToppingTypeID)
);
-- Price tags and price numbers
create table Price(
	PriceID Int not null identity(1,1),
	Price int not null,
	primary key (PriceID)
);
-- toppings for pizza
create table Toppings (
	ToppingID int not null identity(1,1),
	ToppingName varchar(16),
	PriceID int not null,
	ToppingTypeID int not null,
	Primary key (ToppingId),
	Foreign key (ToppingTypeID) references ToppingTypes(ToppingTypeID),
	foreign key (PriceID) REFERENCES Price(PriceID)
);
-- pizza no toppings
create table Pizza (
	PizzaID int not null identity(1,1),
	PriceID int not null,
	primary key (PizzaID),
	foreign key (PriceID) references Price(PriceID)
);
-- pizza with toppings
create table PizzaTopping (
	PizzaID int not null,
	ToppingID int not null,
	primary key (PizzaID, ToppingID),
	foreign key (PizzaID) references Pizza(PizzaID),
	foreign key (ToppingID) references Toppings(ToppingID)
	);

-- necessary customer information
create table Customers (
	CustomerID int not null identity(1,1),
	CustomerFirstName varchar(32),
	CustomerLastName varchar(32),
	CustomerPhoneNumber int,
	primary key (CustomerID)
);
-- create order 
create table Orders (
	OrderID int not null identity(1,1),
	OrderDate Datetime not null,
	IsFinished Bit not null,
	Primary key (OrderID),
);
-- order with customer, and pizza. make more rows of same order and customer incase of a multi-item purchase
create table CustomerOrders (
	OrderID int not null,
	CustomerID int not null,
	pizzaID int not null,
	primary key (orderID, CustomerID, pizzaID),
	foreign key (OrderID) references Orders(OrderID),
	foreign key (pizzaID) references Pizza(pizzaID),
	foreign key (CustomerID) references Customers(CustomerID)
);	