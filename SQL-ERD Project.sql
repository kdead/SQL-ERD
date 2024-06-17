create table "Salesperson_K"  (
	salesperson_id VARCHAR(100) primary key,
	salesperson_name VARCHAR(100)
);

create table "Customer_K"  (
	customer_id VARCHAR(100) primary key,
	customer_name VARCHAR(100)
);

CREATE TABLE Car_K (
    car_id VARCHAR(100) PRIMARY KEY,
    car_model VARCHAR(100),
    car_type VARCHAR(100),
    salesperson_id VARCHAR(100),
    customer_id VARCHAR(100),
    FOREIGN KEY (salesperson_id) REFERENCES Salesperson_K(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES Customer_K(customer_id)
);

create table "Invoice_K" (
	invoice_id VARCHAR(100) primary key,
	invoice_number VARCHAR(100),
	salesperson_id VARCHAR(100),
	customer_id VARCHAR(100),
	car_id VARCHAR(100),
	FOREIGN KEY (salesperson_id) REFERENCES "Salesperson_K"(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES "Customer_K"(customer_id),
    FOREIGN KEY (car_id) REFERENCES CAR_K(car_id)
);

create table "Ticket_K" (
	ticket_id VARCHAR(100) primary key,
	ticket_number VARCHAR(100),
	customer_id VARCHAR(100),
	car_id VARCHAR(100),
	FOREIGN KEY (customer_id) REFERENCES "Customer_K"(customer_id),
    FOREIGN KEY (car_id) REFERENCES CAR_K(car_id)
);

create table "ServiceHistory_K" (
	history_id VARCHAR(100) primary key,
	car_id VARCHAR(100),
	service_description VARCHAR(250),
	FOREIGN KEY (car_id) REFERENCES CAR_K(car_id)
);

create table "Mechanic_K" (
mechanic_id VARCHAR(100) primary key,
mechanic_name VARCHAR(100)
);

create table "CarMechanic_K" (
car_id VARCHAR(100),
mechanic_id VARCHAR(100),
FOREIGN KEY (car_id) REFERENCES CAR_K(car_id),
FOREIGN KEY (mechanic_id) REFERENCES "Mechanic_K"(mechanic_id)
);

insert into "Salesperson_K" (salesperson_id, salesperson_name)
values ('SP100', 'Jayden');

insert into "Customer_K" (customer_id, customer_name)
values ('CUSHR1', 'Henry Roberts')

insert into CAR_K (Car_id, Car_model, Car_Type, Salesperson_id, customer_id)
values ('JW123', 'Wrangler', 'Jeep', 'SP100', 'CUSHR1');

insert into "Invoice_K" (invoice_id, invoice_number, salesperson_id, customer_id, car_id)
values ('INV001', '001', 'SP100', 'CUSHR1', 'JW123');

insert into "Ticket_K" (ticket_id, ticket_number, customer_id, car_id)
values ('TIC001','TKT001','CUSHR1','JW123');

insert into "ServiceHistory_K" (history_id, car_id, service_description)
values ('HIS456', 'JW123', 'Brake Replacement');

insert into "Mechanic_K" (mechanic_id, mechanic_name)
values ('MECH256', 'Paul Miller');

insert into "CarMechanic_K" (car_id, mechanic_id)
values ('JW123', 'MECH256');



