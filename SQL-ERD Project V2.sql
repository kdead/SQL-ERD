create table "Salesperson_KH"  (
	salesperson_id VARCHAR(100) primary key,
	salesperson_name VARCHAR(100)
);

create table "Customer_KH"  (
	customer_id VARCHAR(100) primary key,
	customer_name VARCHAR(100)
);

CREATE TABLE Car_KH (
    car_id VARCHAR(100) PRIMARY KEY,
    car_model VARCHAR(100),
    car_type VARCHAR(100),
    salesperson_id VARCHAR(100),
    customer_id VARCHAR(100),
    FOREIGN KEY (salesperson_id) REFERENCES "Salesperson_KH"(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES "Customer_KH"(customer_id)
);

create table "Invoice_KH" (
	invoice_id VARCHAR(100) primary key,
	invoice_number VARCHAR(100),
	salesperson_id VARCHAR(100),
	customer_id VARCHAR(100),
	car_id VARCHAR(100),
	FOREIGN KEY (salesperson_id) REFERENCES "Salesperson_KH"(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES "Customer_KH"(customer_id),
    FOREIGN KEY (car_id) REFERENCES CAR_KH(car_id)
);

create table "Ticket_KH" (
	ticket_id VARCHAR(100) primary key,
	ticket_number VARCHAR(100),
	customer_id VARCHAR(100),
	car_id VARCHAR(100),
	FOREIGN KEY (customer_id) REFERENCES "Customer_KH"(customer_id),
    FOREIGN KEY (car_id) REFERENCES CAR_KH(car_id)
);

create table "ServiceHistory_KH" (
	history_id VARCHAR(100) primary key,
	car_id VARCHAR(100),
	service_description VARCHAR(250),
	FOREIGN KEY (car_id) REFERENCES CAR_KH(car_id)
);

create table "Mechanic_KH" (
mechanic_id VARCHAR(100) primary key,
mechanic_name VARCHAR(100)
);

create table "CarMechanic_KH" (
car_id VARCHAR(100),
mechanic_id VARCHAR(100),
FOREIGN KEY (car_id) REFERENCES CAR_KH(car_id),
FOREIGN KEY (mechanic_id) REFERENCES "Mechanic_KH"(mechanic_id)
);

insert into "Salesperson_KH" (salesperson_id, salesperson_name)
values ('SP100', 'Jayden'), ('SP101', 'Ashton');

insert into "Customer_KH" (customer_id, customer_name)
values ('CUSHR1', 'Henry Roberts'), ('CUSGP2', 'Grace Price');

insert into CAR_KH (Car_id, Car_model, Car_Type, Salesperson_id, customer_id)
values ('JW123', 'Wrangler', 'Jeep', 'SP100', 'CUSHR1'), ('CEQ234','Equinox','Chevrolet','SP101','CUSGP2');

insert into "Invoice_KH" (invoice_id, invoice_number, salesperson_id, customer_id, car_id)
values ('INV001', '001', 'SP100', 'CUSHR1', 'JW123'), ('INV002', '002', 'SP101', 'CUSGP2', 'CEQ234');

insert into "Ticket_KH" (ticket_id, ticket_number, customer_id, car_id)
values ('TIC001','TKT001','CUSHR1','JW123'), ('TIC002', 'TKT002', 'CUSGP2', 'CEQ234');

insert into "ServiceHistory_KH" (history_id, car_id, service_description)
values ('HIS456', 'JW123', 'Brake Replacement'), ('HIS567', 'CEQ234','Battery Testing');

insert into "Mechanic_KH" (mechanic_id, mechanic_name)
values ('MECH256', 'Paul Miller'), ('MECH038', 'Jacob Brown');

insert into "CarMechanic_KH" (car_id, mechanic_id)
values ('JW123', 'MECH256'), ('CEQ234', 'MECH038');


