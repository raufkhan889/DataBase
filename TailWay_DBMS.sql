************************ Tables ************************

CREATE TABLE User (
  user_ID INT PRIMARY KEY,
  user_name VARCHAR(20),
  gender VARCHAR(10),
  age INT,
  phone INT,
  email VARCHAR(30),
  password VARCHAR(30),
  state VARCHAR(20),
  city VARCHAR(20)
); 


CREATE TABLE Passenger ( 
  passenger_ID INT PRIMARY KEY,
  no_of_passenger INT,
  user_ID INT,
  ticket_NO INT,
  FOREIGN KEY (user_ID) REFERENCES User(user_ID),
  FOREIGN KEY (ticket_NO) REFERENCES Ticket(ticket_NO) 
);


CREATE table Ticket (
  ticket_NO INT PRIMARY KEY,
  booking_date DATE,
  booking_timing TIME,
  amount INT,
  train_NO INT,
  FOREIGN KEY (train_NO) REFERENCES Train(train_NO) 
);


CREATE TABLE Cancel_Booking (
  cancel_status BIT, 
  passenger_ID INT,
  ticket_NO INT,
  FOREIGN KEY (passenger_ID) REFERENCES Passenger(passenger_ID),
  FOREIGN KEY (ticket_NO) REFERENCES Ticket(ticket_NO)
);


CREATE TABLE Train (
  train_NO INT PRIMARY KEY,
  train_name VARCHAR(20),
  arrival_time TIME, 
  departure_time TIME,
  avaiable_seats INT,
  block_NO char(1),
  postal_code INT,
  FOREIGN KEY (block_NO) REFERENCES Block(block_NO),
  FOREIGN KEY (postal_code) REFERENCES Destination(postal_code)
);


CREATE TABLE Block (
  block_NO Char(1) PRIMARY KEY,
  seat_no_1 BIT,
  seat_no_2 BIT,
  seat_no_3 BIT,
  seat_no_4 BIT,
  seat_no_5 BIT,
  seat_no_6 BIT,
  seat_no_7 BIT,
  seat_no_8 BIT 
); 


CREATE TABLE Destination (
  postal_code INT PRIMARY KEY,
  timing TIME,
  city VARCHAR(20) 
);


CREATE TABLE Station (
  Station_NO INT,
  Name VARCHAR(20), 
  location VARCHAR(20),
  Station_status CHAR(10),
  train_NO INT,
  FOREIGN KEY (train_NO) REFERENCES Train(train_NO)
);



************************ INSERT ************************


INSERT INTO User (user_ID, user_name, gender, age, phone, email, password, state, city) 
VALUES (10021, 'Nasir', 'Male', 33, 03034589625, 'Nasir@gmail.com', '1234567', 'Punjab', 'Lahore');
INSERT INTO User (user_ID, user_name, gender, age, phone, email, password, state, city) 
VALUES (10022, 'Mehwish', 'Female', 21, 03056585626, 'Mehwish@gmail.com', '89544', 'Punjab', 'Lahore');
INSERT INTO User (user_ID, user_name, gender, age, phone, email, password, state, city) 
VALUES (10023, 'Rauf', 'Male', 33, 03014589627, 'Rauf@gmail.com', 'Abc545', 'Punjab', 'Lahore');
INSERT INTO User (user_ID, user_name, gender, age, phone, email, password, state, city) 
VALUES (10024, 'Sufyan', 'Male', 33, 03034589628, 'Sufyan@gmail.com', 'Bwec778', 'Punjab', 'Lahore');
INSERT INTO User (user_ID, user_name, gender, age, phone, email, password, state, city) 
VALUES (10025, 'Amna', 'Female', 33, 03034589610, 'Amna@gmail.com', 'Pass892', 'Punjab', 'Lahore');


INSERT INTO Passenger (passenger_ID, no_of_passenger, user_ID, ticket_NO) 
VALUES (20056, 2, 10021, 99881);
INSERT INTO Passenger (passenger_ID, no_of_passenger, user_ID, ticket_NO) 
VALUES (20057, 1, 10010, 99882);
INSERT INTO Passenger (passenger_ID, no_of_passenger, user_ID, ticket_NO) 
VALUES (20058, 3, 10023, 99883);
INSERT INTO Passenger (passenger_ID, no_of_passenger, user_ID, ticket_NO) 
VALUES (20052, 5, 10024, 99884);
INSERT INTO Passenger (passenger_ID, no_of_passenger, user_ID, ticket_NO) 
VALUES (20051, 4, 10025, 99885);


INSERT INTO Ticket (ticket_NO, booking_date, booking_timing, amount, train_NO)
VALUES (99881, '2020-12-01', '10:20:05', 1500, 888321);
INSERT INTO Ticket (ticket_NO, booking_date, booking_timing, amount, train_NO)
VALUES (99810, '2020-08-23', '19:20:05', 800, 888322);
INSERT INTO Ticket (ticket_NO, booking_date, booking_timing, amount, train_NO)
VALUES (99883, '2021-01-20', '11:20:05', 1000, 888323);
INSERT INTO Ticket (ticket_NO, booking_date, booking_timing, amount, train_NO)
VALUES (99884, '2021-09-13', '02:20:05', 700, 888324);
INSERT INTO Ticket (ticket_NO, booking_date, booking_timing, amount, train_NO)
VALUES (99885, '2020-10-01', '09:20:05', 500, 888325);


INSERT INTO Cancel_Booking (cancel_status, passenger_ID, ticket_NO) 
VALUES ('False', 20056, 888321);
INSERT INTO Cancel_Booking (cancel_status, passenger_ID, ticket_NO) 
VALUES ('True', 20057, 888312);
INSERT INTO Cancel_Booking (cancel_status, passenger_ID, ticket_NO) 
VALUES ('False', 20058, 888323);
INSERT INTO Cancel_Booking (cancel_status, passenger_ID, ticket_NO) 
VALUES ('False', 20052, 888324);
INSERT INTO Cancel_Booking (cancel_status, passenger_ID, ticket_NO) 
VALUES ('False', 20051, 888325); 


INSERT INTO Train (train_NO, train_name, arrival_time, departure_time, avaiable_seats, block_no, postal_code)
VALUES (888321, 'T-001', '08:20:05', '2021-10-01', 5, 'A', 453987);
INSERT INTO Train (train_NO, train_name, arrival_time, departure_time, avaiable_seats, block_no, postal_code)
VALUES (888322, 'T-011', '12:50:05', '2021-07-23', 5, 'C', 785987); 
INSERT INTO Train (train_NO, train_name, arrival_time, departure_time, avaiable_seats, block_no, postal_code)
VALUES (888323, 'T-108', '03:30:05', '2021-07-20', 5, 'B', 125896); 
INSERT INTO Train (train_NO, train_name, arrival_time, departure_time, avaiable_seats, block_no, postal_code)
VALUES (888324, 'T-999', '02:20:05', '2021-06-13', 5, 'E', 125895); 
INSERT INTO Train (train_NO, train_name, arrival_time, departure_time, avaiable_seats, block_no, postal_code)
VALUES (888325, 'T-258', '01:40:05', '2021-05-01', 5, 'D', 489624);


INSERT INTO Block (block_NO, seat_no_1, seat_no_2, seat_no_3, seat_no_4, seat_no_5, seat_no_6, seat_no_7, seat_no_8)
VALUES ('A', 'True', 'True', 'False', 'False', 'True', 'True', 'False', 'True');
INSERT INTO Block (block_NO, seat_no_1, seat_no_2, seat_no_3, seat_no_4, seat_no_5, seat_no_6, seat_no_7, seat_no_8)
VALUES ('C', 'False', 'True', 'False', 'False', 'True', 'True', 'False', 'True');
INSERT INTO Block (block_NO, seat_no_1, seat_no_2, seat_no_3, seat_no_4, seat_no_5, seat_no_6, seat_no_7, seat_no_8)
VALUES ('B', 'False', 'True', 'False', 'False', 'False', 'False', 'False', 'False');
INSERT INTO Block (block_NO, seat_no_1, seat_no_2, seat_no_3, seat_no_4, seat_no_5, seat_no_6, seat_no_7, seat_no_8)
VALUES ('E', 'True', 'True', 'False', 'False', 'True', 'True', 'False', 'True');
INSERT INTO Block (block_NO, seat_no_1, seat_no_2, seat_no_3, seat_no_4, seat_no_5, seat_no_6, seat_no_7, seat_no_8)
VALUES ('D', 'True', 'True', 'True', 'True', 'True', 'True', 'False', 'True'); 


INSERT INTO Destination (postal_code, timing, city) 
VALUES (453987, '08:20:05', 'Lahore');
INSERT INTO Destination (postal_code, timing, city) 
VALUES (785987, '12:50:05', 'Islamabad');
INSERT INTO Destination (postal_code, timing, city) 
VALUES (125896, '03:30:05', 'Karachi');
INSERT INTO Destination (postal_code, timing, city) 
VALUES (125895, '02:20:05', 'Sindh');
INSERT INTO Destination (postal_code, timing, city) 
VALUES (489624, '01:40:05', 'Shadarah');


INSERT INTO Station (Station_NO, name, location, station_status, train_NO)
VALUES (2578, 'st-a11', 'Sadar', 'Open', 888321);
INSERT INTO Station (Station_NO, name, location, station_status, train_NO)
VALUES (2571, 'st-a12', 'Multan Road', 'Close', 888322);
INSERT INTO Station (Station_NO, name, location, station_status, train_NO)
VALUES (2573, 'st-a13', 'Cant Lahore', 'Open', 888323);
INSERT INTO Station (Station_NO, name, location, station_status, train_NO)
VALUES (2574, 'st-a14', 'Multan Road', 'Open', 888324);
INSERT INTO Station (Station_NO, name, location, station_status, train_NO)
VALUES (2576, 'st-a15', 'Muslim Town', 'Open', 888325);


************************ Update ************************


UPDATE User SET email= 'Rauf889@gmail.com' WHERE user_name='Rauf';
UPDATE Cancel_Booking SET cancel_status = 'False' WHERE passenger_ID = 20057;
UPDATE Train SET train_name = 'T-069' WHERE train_NO = 888322;
UPDATE Station SET location = 'Mall Road' WHERE station_NO = 2571;
UPDATE Destination SET timing = '05:40:05' WHERE postal_code = 489624;


************************ User View ************************


SELECT User.user_name, User.gender, User.phone, 
Passenger.passenger_id, Passenger.no_of_passenger,
Ticket.ticket_NO, Ticket.booking_timing, Ticket.booking_timing, Ticket.train_NO
FROM (( User 
INNER JOIN Passenger ON User.user_ID = Passenger.user_ID)
INNER JOIN Ticket ON Ticket.ticket_NO = Passenger.ticket_NO);


SELECT User.user_name, User.age, User.phone,
Passenger.passenger_ID, Passenger.no_of_passenger, 
Ticket.ticket_NO, Ticket.booking_timing, Ticket.amount, Ticket.train_NO 
FROM (( User 
INNER JOIN Passenger ON User.user_ID = Passenger.user_ID)
INNER JOIN Ticket ON Ticket.ticket_NO = Passenger.ticket_NO) 
WHERE User.user_name = "Rauf";


SELECT Train.train_NO, Train.arrival_time, Train.avaiable_seats, Train.block_NO,
Station.Station_NO, Station.location, Station.Station_status,
Destination.city
FROM (( Train 
INNER JOIN Station ON Train.train_NO = Station.train_NO)
INNER JOIN Destination ON Train.postal_code = Destination.postal_code) 
WHERE Train.Block = "A";


SELECT Train.train_NO, Train.arrival_time, Train.departure_time, Train.avaiable_seats, Train.block_NO,
Station.Station_NO, Station.location, Station.Station_status,
Destination.city
FROM (( Train 
INNER JOIN Station ON Train.train_NO = Station.train_NO)
INNER JOIN Destination ON Train.postal_code = Destination.postal_code) 
WHERE Train.block_NO = 'A';


SELECT User.user_name, 
Passenger.passenger_id,
Ticket.ticket_NO,
Cancel_Booking.cancel_status 
FROM ((( User 
INNER JOIN Passenger ON User.user_ID = Passenger.user_ID)
INNER JOIN Ticket ON Ticket.ticket_NO = Passenger.ticket_NO)
INNER JOIN Cancel_Booking ON Cancel_Booking.passenger_ID = Passenger.passenger_ID)
WHERE User.email = 'Sufyan@gmail.com';