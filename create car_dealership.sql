CREATE TABLE IF NOT EXISTS customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS car(
car_id SERIAL PRIMARY KEY,
make VARCHAR(100),
model VARCHAR(100),
color VARCHAR(100),
year INTEGER,
serial_number VARCHAR(100),
customer_id INTEGER,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER,
	car_id INTEGER,
	customer_id INTEGER,
	date_received DATE,
	date_delivered DATE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)	
);


CREATE TABLE IF NOT EXISTS invoice(
invoice_id SERIAL PRIMARY KEY,
customer_id INTEGER,
car_id INTEGER,
salesperson_id INTEGER,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
FOREIGN KEY(car_id) REFERENCES car(car_id),
FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE IF NOT EXISTS parts(
part_id SERIAL PRIMARY KEY,
service_ticket_id INTEGER,
price NUMERIC(8,2),
FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id)	
);






