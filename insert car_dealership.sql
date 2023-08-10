INSERT INTO car(
	car_id, make, model, color, year, serial_number,customer_id)
	VALUES (01,'BMW','1 Series','Black',2013,'4Y1SL65848Z411439',1),
	(02,'Chevrolet','1500 Regular Cab','Grey',2018,'5Z1SL65848Z411439',2);

INSERT INTO customer(
	customer_id, first_name, last_name, phone_number, email, address)
	VALUES (1,'John','Watson','820-614-8420','john.watson@gmail.com','12513, Lake Drive rd, 2A,67241'),
	(2,'Kelly','June','713-620-7340','kelly.june@gmail.com','42132, farm rd, 4A,34125');

INSERT INTO salesperson(
	salesperson_id, first_name, last_name)
	VALUES (1001, 'Peter', 'Johnson'),
	(1002,'Ryan','Jackson');

INSERT INTO invoice(
	invoice_id, customer_id, car_id, salesperson_id)
	VALUES (101, 1, 2, 1001),
	(102,2,1,1002);

INSERT INTO mechanic(
	mechanic_id, first_name, last_name)
	VALUES (001, 'John', 'Anderson'),
	(002,'Jim','Hamilton');

INSERT INTO service_ticket(
	service_ticket_id, mechanic_id, car_id, customer_id, date_received, date_delivered)
	VALUES (0101, 001, 01, 2, '2021-03-29', '2022-03-30'),
    (0102, 001, 02, 1, '2021-07-13', '2022-07-14');

INSERT INTO parts(
	part_id, service_ticket_id, price)
	VALUES (11, 0101, 20.99),
	(12,0101,30.99);
