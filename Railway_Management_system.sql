CREATE DATABASE railway_management_system;
use railway_management_system;

---------Trains-------------------
CREATE TABLE Trains (
      TrainID INT PRIMARY KEY,
      TrainName VARCHAR(100),
      TrainType VARCHAR(50),
      Capacity INT,
      Status VARCHAR(20)
);
desc Trains;
-----------Stations------------------
CREATE TABLE Stations (
      StationID INT PRIMARY KEY,
      StationName VARCHAR(100),
      City VARCHAR(50),
      State VARCHAR(50),
      ZipCode VARCHAR(10)
);
desc Stations;
--------Routes----------------------
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY,
    TrainID INT,
    DepartureStationID INT,
    ArrivalStationID INT,
    Duration TIME,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (DepartureStationID) REFERENCES Stations(StationID),
    FOREIGN KEY (ArrivalStationID) REFERENCES Stations(StationID)
);
desc Routes;
----------Passengers-----------------
CREATE TABLE Passengers (
	  PassengerID INT PRIMARY KEY,
	  FirstName VARCHAR(50),
	  LastName VARCHAR(50),
	  DateOfBirth DATE,
	  Gender VARCHAR(10),
	  ContactNumber VARCHAR(15)
);
desc Passengers;
-----------Bookings------------------
CREATE TABLE Bookings (
      BookingID INT PRIMARY KEY,
      PassengerID INT,
      TrainID INT,
      RouteID INT,
      BookingDate DATE,
      SeatNumber VARCHAR(10),
      FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
      FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
      FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);
desc Bookings;
-------------Tickets----------------
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    BookingID INT,
    IssueDate DATE,
    Price DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
desc Tickets;
------------------------------RAILWAY_MANAGEMEMT_SYSTEM(INSERT OF 100 RECORDS)--------------------------------------------
--------------------------#Trains-----------------------------------------------------------------------------
INSERT INTO Trains (TrainID, TrainName, TrainType, Capacity, Status) VALUES
(1, 'Rajdhani Express', 'Express', 1200, 'Active'),
(2, 'Shatabdi Express', 'Express', 800, 'Active'),
(3, 'Duronto Express', 'Express', 1000, 'Active'),
(4, 'Garib Rath', 'Express', 1200, 'Active'),
(5, 'Jan Shatabdi', 'Express', 800, 'Active'),
(6, 'Humsafar Express', 'Express', 1200, 'Active'),
(7, 'Tejas Express', 'Express', 700, 'Active'),
(8, 'Vande Bharat Express', 'Express', 1200, 'Active'),
(9, 'Maharaja Express', 'Luxury', 100, 'Active'),
(10, 'Palace on Wheels', 'Luxury', 150, 'Active'),
(11, 'Golden Chariot', 'Luxury', 100, 'Active'),
(12, 'Deccan Odyssey', 'Luxury', 100, 'Active'),
(13, 'Maharashtra Express', 'Express', 1000, 'Active'),
(14, 'Karnataka Express', 'Express', 1000, 'Active'),
(15, 'Tamil Nadu Express', 'Express', 1000, 'Active'),
(16, 'Kerala Express', 'Express', 1000, 'Active'),
(17, 'Andhra Pradesh Express', 'Express', 1000, 'Active'),
(18, 'Goa Express', 'Express', 1000, 'Active'),
(19, 'Punjab Mail', 'Mail', 800, 'Active'),
(20, 'Howrah Mail', 'Mail', 800, 'Active'),
(21, 'Chennai Mail', 'Mail', 800, 'Active'),
(22, 'Mumbai Mail', 'Mail', 800, 'Active'),
(23, 'Ahmedabad Mail', 'Mail', 800, 'Active'),
(24, 'Jammu Tawi Express', 'Express', 1000, 'Active'),
(25, 'Himachal Express', 'Express', 1000, 'Active'),
(26, 'Uttar Pradesh Express', 'Express', 1000, 'Active'),
(27, 'Bihar Express', 'Express', 1000, 'Active'),
(28, 'West Bengal Express', 'Express', 1000, 'Active'),
(29, 'Odisha Express', 'Express', 1000, 'Active'),
(30, 'Chhattisgarh Express', 'Express', 1000, 'Active'),
(31, 'Jharkhand Express', 'Express', 1000, 'Active'),
(32, 'Assam Express', 'Express', 1000, 'Active'),
(33, 'Nagaland Express', 'Express', 1000, 'Active'),
(34, 'Manipur Express', 'Express', 1000, 'Active'),
(35, 'Mizoram Express', 'Express', 1000, 'Active'),
(36, 'Tripura Express', 'Express', 1000, 'Active'),
(37, 'Sikkim Express', 'Express', 1000, 'Active'),
(38, 'Meghalaya Express', 'Express', 1000, 'Active'),
(39, 'Arunachal Express', 'Express', 1000, 'Active'),
(40, 'Nagpur Express', 'Express', 1000, 'Active'),
(41, 'Pune Express', 'Express', 1000, 'Active'),
(42, 'Aurangabad Express', 'Express', 1000, 'Active'),
(43, 'Kolhapur Express', 'Express', 1000, 'Active'),
(44, 'Nashik Express', 'Express', 1000, 'Active'),
(45, 'Solapur Express', 'Express', 1000, 'Active'),
(46, 'Nanded Express', 'Express', 1000, 'Active'),
(47, 'Amravati Express', 'Express', 1000, 'Active'),
(48, 'Akola Express', 'Express', 1000, 'Active'),
(49, 'Bhopal Express', 'Express', 1000, 'Active'),
(50, 'Indore Express', 'Express', 1000, 'Active'),
(51, 'Jabalpur Express', 'Express', 1000, 'Active'),
(52, 'Gwalior Express', 'Express', 1000, 'Active'),
(53, 'Ujjain Express', 'Express', 1000, 'Active'),
(54, 'Ratlam Express', 'Express', 1000, 'Active'),
(55, 'Sagar Express', 'Express', 1000, 'Active'),
(56, 'Rewa Express', 'Express', 1000, 'Active'),
(57, 'Satna Express', 'Express', 1000, 'Active'),
(58, 'Katni Express', 'Express', 1000, 'Active'),
(59, 'Bilaspur Express', 'Express', 1000, 'Active'),
(60, 'Raipur Express', 'Express', 1000, 'Active'),
(61, 'Durg Express', 'Express', 1000, 'Active'),
(62, 'Bhilai Express', 'Express', 1000, 'Active'),
(63, 'Rourkela Express', 'Express', 1000, 'Active'),
(64, 'Bhubaneswar Express', 'Express', 1000, 'Active'),
(65, 'Cuttack Express', 'Express', 1000, 'Active'),
(66, 'Puri Express', 'Express', 1000, 'Active'),
(67, 'Sambalpur Express', 'Express', 1000, 'Active'),
(68, 'Balasore Express', 'Express', 1000, 'Active'),
(69, 'Berhampur Express', 'Express', 1000, 'Active'),
(70, 'Jeypore Express', 'Express', 1000, 'Active'),
(71, 'Koraput Express', 'Express', 1000, 'Active'),
(72, 'Anugul Express', 'Express', 1000, 'Active'),
(73, 'Ranchi Express', 'Express', 1000, 'Active'),
(74, 'Dhanbad Express', 'Express', 1000, 'Active'),
(75, 'Jamshedpur Express', 'Express', 1000, 'Active'),
(76, 'Bokaro Express', 'Express', 1000, 'Active'),
(77, 'Hazaribagh Express', 'Express', 1000, 'Active'),
(78, 'Deoghar Express', 'Express', 1000, 'Active'),
(79, 'Dumka Express', 'Express', 1000, 'Active'),
(80, 'Giridih Express', 'Express', 1000, 'Active'),
(81, 'Hazaribagh Road Express', 'Express', 1000, 'Active'),
(82, 'Bhubaneswar Rajdhani', 'Express', 1200, 'Active'),
(83, 'Sealdah Rajdhani', 'Express', 1200, 'Active'),
(84, 'Howrah Rajdhani', 'Express', 1200, 'Active'),
(85, 'Bandra Terminus Express', 'Express', 1000, 'Active'),
(86, 'Ahmedabad Express', 'Express', 1000, 'Active'),
(87, 'Surat Express', 'Express', 1000, 'Active'),
(88, 'Vadodara Express', 'Express', 1000, 'Active'),
(89, 'Rajkot Express', 'Express', 1000, 'Active'),
(90, 'Bhavnagar Express', 'Express', 1000, 'Active'),
(91, 'Jamnagar Express', 'Express', 1000, 'Active'),
(92, 'Bhuj Express', 'Express', 1000, 'Active'),
(93, 'Gandhidham Express', 'Express', 1000, 'Active'),
(94, 'Porbandar Express', 'Express', 1000, 'Active'),
(95, 'Veraval Express', 'Express', 1000, 'Active'),
(96, 'Dwarka Express', 'Express', 1000, 'Active'),
(97, 'Somnath Express', 'Express', 1000, 'Active'),
(98, 'Okha Express', 'Express', 1000, 'Active'),
(99, 'Bhavnagar Terminus Express', 'Express', 1000, 'Active'),
(100, 'Hapa Express', 'Express', 1000, 'Active');

SELECT * from Trains;
--------------#Stations-----------------------------------
INSERT INTO Stations (StationID, StationName, City, State, ZipCode) VALUES
(1, 'Chatrapati Shivaji Maharaj Terminus', 'Mumbai', 'MH', '400001'),
(2, 'New Delhi Railway Station', 'New Delhi', 'DL', '110001'),
(3, 'Howrah Junction', 'Kolkata', 'WB', '700001'),
(4, 'Chennai Central', 'Chennai', 'TN', '600003'),
(5, 'Bangalore City Railway Station', 'Bangalore', 'KA', '560023'),
(6, 'Secunderabad Junction', 'Hyderabad', 'TS', '500003'),
(7, 'Ahmedabad Junction', 'Ahmedabad', 'GJ', '380002'),
(8, 'Pune Junction', 'Pune', 'MH', '411001'),
(9, 'Kanpur Central', 'Kanpur', 'UP', '208001'),
(10, 'Lucknow Charbagh', 'Lucknow', 'UP', '226001'),
(11, 'Patna Junction', 'Patna', 'BR', '800001'),
(12, 'Bhopal Junction', 'Bhopal', 'MP', '462001'),
(13, 'Jaipur Junction', 'Jaipur', 'RJ', '302006'),
(14, 'Nagpur Junction', 'Nagpur', 'MH', '440001'),
(15, 'Thiruvananthapuram Central', 'Thiruvananthapuram', 'KL', '695014'),
(16, 'Visakhapatnam Junction', 'Visakhapatnam', 'AP', '530004'),
(17, 'Guwahati Junction', 'Guwahati', 'AS', '781001'),
(18, 'Ernakulam Junction', 'Kochi', 'KL', '682016'),
(19, 'Coimbatore Junction', 'Coimbatore', 'TN', '641001'),
(20, 'Madurai Junction', 'Madurai', 'TN', '625001'),
(21, 'Varanasi Junction', 'Varanasi', 'UP', '221002'),
(22, 'Agra Cantt', 'Agra', 'UP', '282001'),
(23, 'Amritsar Junction', 'Amritsar', 'PB', '143001'),
(24, 'Gorakhpur Junction', 'Gorakhpur', 'UP', '273001'),
(25, 'Jabalpur Junction', 'Jabalpur', 'MP', '482001'),
(26, 'Jamshedpur Tatanagar Junction', 'Jamshedpur', 'JH', '831002'),
(27, 'Bilaspur Junction', 'Bilaspur', 'CG', '495001'),
(28, 'Ranchi Junction', 'Ranchi', 'JH', '834001'),
(29, 'Raipur Junction', 'Raipur', 'CG', '492001'),
(30, 'Gaya Junction', 'Gaya', 'BR', '823002'),
(31, 'Udaipur City', 'Udaipur', 'RJ', '313001'),
(32, 'Ajmer Junction', 'Ajmer', 'RJ', '305001'),
(33, 'Alwar Junction', 'Alwar', 'RJ', '301001'),
(34, 'Bikaner Junction', 'Bikaner', 'RJ', '334001'),
(35, 'Bhubaneswar', 'Bhubaneswar', 'OD', '751001'),
(36, 'Cuttack', 'Cuttack', 'OD', '753001'),
(37, 'Puri', 'Puri', 'OD', '752001'),
(38, 'Sambalpur', 'Sambalpur', 'OD', '768001'),
(39, 'Balasore', 'Balasore', 'OD', '756001'),
(40, 'Berhampur', 'Berhampur', 'OD', '760001'),
(41, 'Jeypore', 'Jeypore', 'OD', '764001'),
(42, 'Koraput', 'Koraput', 'OD', '764020'),
(43, 'Anugul', 'Anugul', 'OD', '759122'),
(44, 'Dhanbad', 'Dhanbad', 'JH', '826001'),
(45, 'Bokaro Steel City', 'Bokaro', 'JH', '827001'),
(46, 'Hazaribagh', 'Hazaribagh', 'JH', '825301'),
(47, 'Deoghar', 'Deoghar', 'JH', '814112'),
(48, 'Daltonganj', 'Daltonganj', 'JH', '822101'),
(49, 'Giridih', 'Giridih', 'JH', '815301'),
(50, 'Godda', 'Godda', 'JH', '814133'),
(51, 'Rourkela', 'Rourkela', 'OD', '769001'),
(52, 'Jharsuguda', 'Jharsuguda', 'OD', '768201'),
(53, 'Balangir', 'Balangir', 'OD', '767001'),
(54, 'Titlagarh', 'Titlagarh', 'OD', '767033'),
(55, 'Rayagada', 'Rayagada', 'OD', '765001'),
(56, 'Paradeep', 'Paradeep', 'OD', '754142'),
(57, 'Brahmapur', 'Brahmapur', 'OD', '760002'),
(58, 'Rourkela Junction', 'Rourkela', 'OD', '769004'),
(59, 'Siliguri Junction', 'Siliguri', 'WB', '734001'),
(60, 'Darjeeling', 'Darjeeling', 'WB', '734101'),
(61, 'New Jalpaiguri', 'Siliguri', 'WB', '734007'),
(62, 'Malda Town', 'Malda', 'WB', '732101'),
(63, 'Durgapur', 'Durgapur', 'WB', '713201'),
(64, 'Asansol Junction', 'Asansol', 'WB', '713301'),
(65, 'Kharagpur Junction', 'Kharagpur', 'WB', '721301'),
(66, 'Bardhaman', 'Bardhaman', 'WB', '713101'),
(67, 'Chandigarh', 'Chandigarh', 'CH', '160017'),
(68, 'Ludhiana Junction', 'Ludhiana', 'PB', '141001'),
(69, 'Jalandhar City', 'Jalandhar', 'PB', '144001'),
(70, 'Pathankot', 'Pathankot', 'PB', '145001'),
(71, 'Bathinda Junction', 'Bathinda', 'PB', '151001'),
(72, 'Ambala Cantonment', 'Ambala', 'HR', '133001'),
(73, 'Rohtak Junction', 'Rohtak', 'HR', '124001'),
(74, 'Hisar Junction', 'Hisar', 'HR', '125001'),
(75, 'Sonipat Junction', 'Sonipat', 'HR', '131001'),
(76, 'Panipat Junction', 'Panipat', 'HR', '132103'),
(77, 'Karnal', 'Karnal', 'HR', '132001'),
(78, 'Gurgaon', 'Gurgaon', 'HR', '122001'),
(79, 'Faridabad', 'Faridabad', 'HR', '121001'),
(80, 'Rewari', 'Rewari', 'HR', '123401'),
(81, 'Palwal', 'Palwal', 'HR', '121102'),
(82, 'Kurukshetra', 'Kurukshetra', 'HR', '136118'),
(83, 'Meerut City', 'Meerut', 'UP', '250002'),
(84, 'Moradabad', 'Moradabad', 'UP', '244001'),
(85, 'Bareilly Junction', 'Bareilly', 'UP', '243001'),
(86, 'Aligarh Junction', 'Aligarh', 'UP', '202001'),
(87, 'Mathura Junction', 'Mathura', 'UP', '281001'),
(88, 'Jhansi Junction', 'Jhansi', 'UP', '284001'),
(89, 'Gwalior', 'Gwalior', 'MP', '474001'),
(90, 'Indore Junction', 'Indore', 'MP', '452001'),
(91, 'Ratlam Junction', 'Ratlam', 'MP', '457001'),
(92, 'Ujjain Junction', 'Ujjain', 'MP', '456001'),
(93, 'yeswanthpur Junction','Bangalore','KA','451999')
(94, 'Satna', 'Satna', 'MP', '485001'),
(95, 'Rewa', 'Rewa', 'MP', '486001'),
(96, 'Jabalpur', 'Jabalpur', 'MP', '482001'),
(97, 'Bhopal Junction', 'Bhopal', 'MP', '462001'),
(98, 'Itarsi Junction', 'Itarsi', 'MP', '461111'),
(99, 'Hoshangabad', 'Hoshangabad', 'MP', '461001'),
(100, 'Balaghat', 'Balaghat', 'MP', '481001');

SELECT * from Stations; 
--------------------------#Routes----------------------------------------------------
INSERT INTO Routes (RouteID, TrainID, DepartureStationID, ArrivalStationID, Duration) VALUES
(1,  1,  1,  2,  '05:30:00'),
(2,  2,  3,  4,  '03:15:00'),
(3,  3,  2,  5,  '07:00:00'),
(4,  4,  1,  3,  '04:45:00'),
(5,  5,  6,  7,  '06:00:00'),
(6,  6,  7,  8,  '02:30:00'),
(7,  7,  8,  9,  '03:45:00'),
(8,  8,  9,  10, '04:00:00'),
(9,  9,  10, 11, '05:15:00'),
(10, 10, 11, 12, '06:30:00'),
(11, 11, 12, 13, '07:45:00'),
(12, 12, 13, 14, '08:00:00'),
(13, 13, 14, 15, '09:15:00'),
(14, 14, 15, 16, '10:30:00'),
(15, 15, 16, 17, '11:45:00'),
(16, 16, 17, 18, '12:00:00'),
(17, 17, 18, 19, '13:15:00'),
(18, 18, 19, 20, '14:30:00'),
(19, 19, 20, 21, '15:45:00'),
(20, 20, 21, 22, '16:00:00'),
(21, 21, 22, 23, '17:15:00'),
(22, 22, 23, 24, '18:30:00'),
(23, 23, 24, 25, '19:45:00'),
(24, 24, 25, 26, '20:00:00'),
(25, 25, 26, 27, '21:15:00'),
(26, 26, 27, 28, '22:30:00'),
(27, 27, 28, 29, '23:45:00'),
(28, 28, 29, 30, '01:00:00'),
(29, 29, 30, 31, '02:15:00'),
(30, 30, 31, 32, '03:30:00'),
(31, 31, 32, 33, '04:45:00'),
(32, 32, 33, 34, '06:00:00'),
(33, 33, 34, 35, '07:15:00'),
(34, 34, 35, 36, '08:30:00'),
(35, 35, 36, 37, '09:45:00'),
(36, 36, 37, 38, '11:00:00'),
(37, 37, 38, 39, '12:15:00'),
(38, 38, 39, 40, '13:30:00'),
(39, 39, 40, 41, '14:45:00'),
(40, 40, 41, 42, '16:00:00'),
(41, 41, 42, 43, '17:15:00'),
(42, 42, 43, 44, '18:30:00'),
(43, 43, 44, 45, '19:45:00'),
(44, 44, 45, 46, '21:00:00'),
(45, 45, 46, 47, '22:15:00'),
(46, 46, 47, 48, '23:30:00'),
(47, 47, 48, 49, '01:45:00'),
(48, 48, 49, 50, '03:00:00'),
(49, 49, 50, 51, '04:15:00'),
(50, 50, 51, 52, '05:30:00'),
(51, 51, 52, 53, '06:45:00'),
(52, 52, 53, 54, '08:00:00'),
(53, 53, 54, 55, '09:15:00'),
(54, 54, 55, 56, '10:30:00'),
(55, 55, 56, 57, '11:45:00'),
(56, 56, 57, 58, '13:00:00'),
(57, 57, 58, 59, '14:15:00'),
(58, 58, 59, 60, '15:30:00'),
(59, 59, 60, 61, '16:45:00'),
(60, 60, 61, 62, '18:00:00'),
(61, 61, 62, 63, '19:15:00'),
(62, 62, 63, 64, '20:30:00'),
(63, 63, 64, 65, '21:45:00'),
(64, 64, 65, 66, '23:00:00'),
(65, 65, 66, 67, '00:15:00'),
(66, 66, 67, 68, '01:30:00'),
(67, 67, 68, 69, '02:45:00'),
(68, 68, 69, 70, '04:00:00'),
(69, 69, 70, 71, '05:15:00'),
(70, 70, 71, 72, '06:30:00'),
(71, 71, 72, 73, '07:45:00'),
(72, 72, 73, 74, '09:00:00'),
(73, 73, 74, 75, '10:15:00'),
(74, 74, 75, 76, '11:30:00'),
(75, 75, 76, 77, '12:45:00'),
(76, 76, 77, 78, '14:00:00'),
(77, 77, 78, 79, '15:15:00'),
(78, 78, 79, 80, '16:30:00'),
(79, 79, 80, 81, '17:45:00'),
(80, 80, 81, 82, '19:00:00'),
(81, 81, 82, 83, '20:15:00'),
(82, 82, 83, 84, '21:30:00'),
(83, 83, 84, 85, '22:45:00'),
(84, 84, 85, 86, '00:00:00'),
(85, 85, 86, 87, '01:15:00'),
(86, 86, 87, 88, '02:30:00'),
(87, 87, 88, 89, '03:45:00'),
(88, 88, 89, 90, '05:00:00'),
(89, 89, 90, 91, '06:15:00'),
(90, 90, 91, 92, '07:30:00'),
(91, 91, 92, 93, '08:45:00'),
(92, 92, 93, 94, '10:00:00'),
(93, 93, 94, 95, '11:15:00'),
(94, 94, 95, 96, '12:30:00'),
(95, 95, 96, 97, '13:45:00'),
(96, 96, 97, 98, '15:00:00'),
(97, 97, 98, 99, '16:15:00'),
(98, 98, 99, 100, '17:30:00'),
(99, 99, 100, 1, '18:45:00'),
(100, 100,100,3,'12:30:00');

SELECT * from Routes;
------------------------#Passengers---------------------------------------------------------
INSERT INTO Passengers (PassengerID, FirstName, LastName, DateOfBirth, Gender, ContactNumber) VALUES
(1, 'Prince', 'Jagdeesh', '1985-06-15', 'Male', '9900765431'),
(2, 'Vivaan', 'Verma', '1990-08-25', 'Male', '9900765432'),
(3, 'Aditya', 'Sinha', '1975-12-30', 'Male', '9900765433'),
(4, 'Vihaan', 'Patel', '1988-04-10', 'Male', '9900765434'),
(5, 'Arjun', 'Reddy', '1995-11-20', 'Male', '9900765435'),
(6, 'Sai', 'Iyer', '1987-05-22', 'Male', '9900765436'),
(7, 'Reyansh', 'Nair', '1992-03-14', 'Male', '9900765437'),
(8, 'Ayaan', 'Kumar', '1983-07-18', 'Male', '9900765438'),
(9, 'Krishna', 'Das', '1989-09-26', 'Male', '9900765439'),
(10, 'Ishaan', 'Bose', '1993-11-30', 'Male', '9900765440'),
(11, 'Ananya', 'Mehta', '1985-02-25', 'Female', '9900765441'),
(12, 'Aadhya', 'Jain', '1991-04-16', 'Female', '9900765442'),
(13, 'Diya', 'Rao', '1986-08-12', 'Female', '9900765443'),
(14, 'Myra', 'Chopra', '1990-10-10', 'Female', '9900765444'),
(15, 'Anika', 'Joshi', '1994-12-05', 'Female', '9900765445'),
(16, 'Sara', 'Nath', '1982-01-20', 'Female', '9900765446'),
(17, 'Eva', 'Mishra', '1987-03-25', 'Female', '9900765447'),
(18, 'Riya', 'Sen', '1992-05-30', 'Female', '9900765448'),
(19, 'Aarohi', 'Roy', '1984-07-15', 'Female', '9900765449'),
(20, 'Kiara', 'Ghosh', '1993-09-20', 'Female', '9900765450'),
(21, 'Aarav', 'Shah', '1985-06-15', 'Male', '9900765451'),
(22, 'Vivaan', 'Gupta', '1990-08-25', 'Male', '9900765452'),
(23, 'Aditya', 'Kapoor', '1975-12-30', 'Male', '9900765453'),
(24, 'Vihaan', 'Chatterjee', '1988-04-10', 'Male', '9900765454'),
(25, 'Arjun', 'Mukherjee', '1995-11-20', 'Male', '9900765455'),
(26, 'Sai', 'Bhattacharya', '1987-05-22', 'Male', '9900765456'),
(27, 'Reyansh', 'Agarwal', '1992-03-14', 'Male', '9900765457'),
(28, 'Ayaan', 'Saxena', '1983-07-18', 'Male', '9900765458'),
(29, 'Krishna', 'Bhat', '1989-09-26', 'Male', '9900765459'),
(30, 'Ishaan', 'Pandey', '1993-11-30', 'Male', '9900765460'),
(31, 'Ananya', 'Singh', '1985-02-25', 'Female', '9900765461'),
(32, 'Aadhya', 'Malhotra', '1991-04-16', 'Female', '9900765462'),
(33, 'Diya', 'Rana', '1986-08-12', 'Female', '9900765463'),
(34, 'Myra', 'Sarkar', '1990-10-10', 'Female', '9876543243'),
(35, 'Anika', 'Mahajan', '1994-12-05', 'Female', '9876543244'),
(36, 'Sara', 'Pillai', '1982-01-20', 'Female', '9876543245'),
(37, 'Eva', 'Khan', '1987-03-25', 'Female', '9876543246'),
(38, 'Riya', 'Yadav', '1992-05-30', 'Female', '9876543247'),
(39, 'Aarohi', 'Bansal', '1984-07-15', 'Female', '9876543248'),
(40, 'Kiara', 'Devi', '1993-09-20', 'Female', '9876543249'),
(41, 'Aryan', 'Sharma', '1985-06-15', 'Male', '9876543250'),
(42, 'Kabir', 'Verma', '1990-08-25', 'Male', '9876543251'),
(43, 'Dhruv', 'Sinha', '1975-12-30', 'Male', '9876543252'),
(44, 'Rohan', 'Patel', '1988-04-10', 'Male', '9876543253'),
(45, 'Karan', 'Reddy', '1995-11-20', 'Male', '9876543254'),
(46, 'Aman', 'Iyer', '1987-05-22', 'Male', '9876543255'),
(47, 'Nikhil', 'Nair', '1992-03-14', 'Male', '9876543256'),
(48, 'Raghav', 'Kumar', '1983-07-18', 'Male', '9876543257'),
(49, 'Siddharth', 'Das', '1989-09-26', 'Male', '9876543258'),
(50, 'Yash', 'Bose', '1993-11-30', 'Male', '9876543259'),
(51, 'Anushka', 'Mehta', '1985-02-25', 'Female', '9876543260'),
(52, 'Pooja', 'Jain', '1991-04-16', 'Female', '9876543261'),
(53, 'Naina', 'Rao', '1986-08-12', 'Female', '9876543262'),
(54, 'Shreya', 'Chopra', '1990-10-10', 'Female', '9876543263'),
(55, 'Tara', 'Joshi', '1994-12-05', 'Female', '9876543264'),
(56, 'Nikita', 'Nath', '1982-01-20', 'Female', '9876543265'),
(57, 'Meera', 'Mishra', '1987-03-25', 'Female', '9876543266'),
(58, 'Radhika', 'Sen', '1992-05-30', 'Female', '9876543267'),
(59, 'Saanvi', 'Roy', '1984-07-15', 'Female', '9876543268'),
(60, 'Isha', 'Ghosh', '1993-09-20', 'Female', '9876543269'),
(61, 'Aryan', 'Shah', '1985-06-15', 'Male', '9876543270'),
(62, 'Kabir', 'Gupta', '1990-08-25', 'Male', '9876543271'),
(63, 'Dhruv', 'Kapoor', '1975-12-30', 'Male', '9876543272'),
(64, 'Rohan', 'Chatterjee', '1988-04-10', 'Male', '9876543273'),
(65, 'Karan', 'Mukherjee', '1995-11-20', 'Male', '9876543274'),
(66, 'Aman', 'Bhattacharya', '1987-05-22', 'Male', '9876543275'),
(67, 'Nikhil', 'Aradya','1998-04-06','Male','8867562341'),
(68, 'Nikhil', 'Agarwal', '1992-03-14', 'Male', '8861000001'),
(69, 'Raghav', 'Kumar', '1983-07-18', 'Male', '8861000002'),
(70, 'Siddharth', 'Das', '1989-09-26', 'Male', '8861000003'),
(71, 'Yash', 'Bose', '1993-11-30', 'Male', '8861000004'),
(72, 'Anushka', 'Mehta', '1985-02-25', 'Female', '8861000005'),
(73, 'Pooja', 'Jain', '1991-04-16', 'Female', '8861000006'),
(74, 'Naina', 'Rao', '1986-08-12', 'Female', '8861000007'),
(75, 'Shreya', 'Chopra', '1990-10-10', 'Female', '8861000008'),
(76, 'Tara', 'Joshi', '1994-12-05', 'Female', '8861000009'),
(77, 'Nikita', 'Nath', '1982-01-20', 'Female', '8861000010'),
(78, 'Meera', 'Mishra', '1987-03-25', 'Female', '8861000011'),
(79, 'Radhika', 'Sen', '1992-05-30', 'Female', '8861000012'),
(80, 'Saanvi', 'Roy', '1984-07-15', 'Female', '8861000013'),
(81, 'Isha', 'Ghosh', '1993-09-20', 'Female', '8861000014'),
(82, 'Aryan', 'Shah', '1985-06-15', 'Male', '8861000015'),
(83, 'Kabir', 'Gupta', '1990-08-25', 'Male', '8861000016'),
(84, 'Dhruv', 'Kapoor', '1975-12-30', 'Male', '8861000017'),
(85, 'Rohan', 'Chatterjee', '1988-04-10', 'Male', '8861000018'),
(86, 'Karan', 'Mukherjee', '1995-11-20', 'Male', '8861000019'),
(87, 'Aman', 'Bhattacharya', '1987-05-22', 'Male', '8861000020'),
(88, 'Nikhil', 'Agarwal', '1992-03-14', 'Male', '7342500001'),
(89, 'Raghav', 'Kumar', '1983-07-18', 'Male', '7342500002'),
(90, 'Siddharth', 'Das', '1989-09-26', 'Male', '7342500003'),
(91, 'Yash', 'Bose', '1993-11-30', 'Male', '7342500004'),
(92, 'Anushka', 'Mehta', '1985-02-25', 'Female', '7342500005'),
(93, 'Pooja', 'Jain', '1991-04-16', 'Female', '7342500006'),
(94, 'Naina', 'Rao', '1986-08-12', 'Female', '7342500007'),
(95, 'Shreya', 'Chopra', '1990-10-10', 'Female', '7342500008'),
(96, 'Tara', 'Joshi', '1994-12-05', 'Female', '7342500009'),
(97, 'Nikita', 'Nath', '1982-01-20', 'Female', '7342500010'),
(98, 'Meera', 'Mishra', '1987-03-25', 'Female', '7342500011'),
(99, 'Radhika', 'Sen', '1992-05-30', 'Female', '7342500012'),
(100, 'Saanvi', 'Roy', '1984-07-15', 'Female', '7342500013');

SELECT * from Passengers;
------------------#Bookings------------------------------------------------------------
INSERT INTO Bookings (BookingID, PassengerID, TrainID, RouteID, BookingDate, SeatNumber) VALUES
(1, 1, 1, 1, '2023-10-01', 'A1'),
(2, 2, 2, 2, '2023-10-02', 'B2'),
(3, 3, 3, 3, '2023-10-03', 'C3'),
(4, 4, 4, 4, '2023-10-04', 'D4'),
(5, 5, 5, 5, '2023-10-05', 'E5'),
(6, 6, 6, 6, '2023-10-06', 'F6'),
(7, 7, 7, 7, '2023-10-07', 'G7'),
(8, 8, 8, 8, '2023-10-08', 'H8'),
(9, 9, 9, 9, '2023-10-09', 'I9'),
(10, 10, 10, 10, '2023-10-10', 'J10'),
(11, 11, 11, 11, '2023-10-11', 'K11'),
(12, 12, 12, 12, '2023-10-12', 'L12'),
(13, 13, 13, 13, '2023-10-13', 'M13'),
(14, 14, 14, 14, '2023-10-14', 'N14'),
(15, 15, 15, 15, '2023-10-15', 'O15'),
(16, 16, 16, 16, '2023-10-16', 'P16'),
(17, 17, 17, 17, '2023-10-17', 'Q17'),
(18, 18, 18, 18, '2023-10-18', 'R18'),
(19, 19, 19, 19, '2023-10-19', 'S19'),
(20, 20, 20, 20, '2023-10-20', 'T20'),
(21, 21, 21, 21, '2023-10-21', 'U21'),
(22, 22, 22, 22, '2023-10-22', 'V22'),
(23, 23, 23, 23, '2023-10-23', 'W23'),
(24, 24, 24, 24, '2023-10-24', 'X24'),
(25, 25, 25, 25, '2023-10-25', 'Y25'),
(26, 26, 26, 26, '2023-10-26', 'Z26'),
(27, 27, 27, 27, '2023-10-27', 'A27'),
(28, 28, 28, 28, '2023-10-28', 'B28'),
(29, 29, 29, 29, '2023-10-29', 'C29'),
(30, 30, 30, 30, '2023-10-30', 'D30'),
(31, 31, 31, 31, '2023-10-31', 'E31'),
(32, 32, 32, 32, '2023-11-01', 'F32'),
(33, 33, 33, 33, '2023-11-02', 'G33'),
(34, 34, 34, 34, '2023-11-03', 'H34'),
(35, 35, 35, 35, '2023-11-04', 'I35'),
(36, 36, 36, 36, '2023-11-05', 'J36'),
(37, 37, 37, 37, '2023-11-06', 'K37'),
(38, 38, 38, 38, '2023-11-07', 'L38'),
(39, 39, 39, 39, '2023-11-08', 'M39'),
(40, 40, 40, 40, '2023-11-09', 'N40'),
(41, 41, 41, 41, '2023-11-10', 'O41'),
(42, 42, 42, 42, '2023-11-11', 'P42'),
(43, 43, 43, 43, '2023-11-12', 'Q43'),
(44, 44, 44, 44, '2023-11-13', 'R44'),
(45, 45, 45, 45, '2023-11-14', 'S45'),
(46, 46, 46, 46, '2023-11-15', 'T46'),
(47, 47, 47, 47, '2023-11-16', 'U47'),
(48, 48, 48, 48, '2023-11-17', 'V48'),
(49, 49, 49, 49, '2023-11-18', 'W49'),
(50, 50, 50, 50, '2023-11-19', 'X50'),
(51, 51, 51, 51, '2023-11-20', 'Y51'),
(52, 52, 52, 52, '2023-11-21', 'Z52'),
(53, 53, 53, 53, '2023-11-22', 'A53'),
(54, 54, 54, 54, '2023-11-23', 'B54'),
(55, 55, 55, 55, '2023-11-24', 'C55'),
(56, 56, 56, 56, '2023-11-25', 'D56'),
(57, 57, 57, 57, '2023-11-26', 'E57'),
(58, 58, 58, 58, '2023-11-27', 'F58'),
(59, 59, 59, 59, '2023-11-28', 'G59'),
(60, 60, 60, 60, '2023-11-29', 'H60'),
(61, 61, 61, 61, '2023-11-30', 'I61'),
(62, 62, 62, 62, '2023-12-01', 'J62'),
(63, 63, 63, 63, '2023-12-02', 'K63'),
(64, 64, 64, 64, '2023-12-03', 'L64'),
(65, 65, 65, 65, '2023-12-04', 'M65'),
(66, 66, 66, 66, '2023-12-05', 'N66'),
(67, 67, 67, 67, '2023-12-06', 'O67'),
(68, 68, 68, 68, '2023-12-07', 'P68'),
(69, 69, 69, 69, '2023-12-08', 'Q69'),
(70, 70, 70, 70, '2023-12-09', 'R70'),
(71, 71, 71, 71, '2023-12-10', 'S71'),
(72, 72, 72, 72, '2023-12-11', 'T72'),
(73, 73, 73, 73, '2023-12-12', 'U73'),
(74, 74, 74, 74, '2023-12-13', 'V74'),
(75, 75, 75, 75, '2023-12-14', 'W75'),
(76, 76, 76, 76, '2023-12-15', 'X76'),
(77, 77, 77, 77, '2023-12-16', 'Y77'),
(78, 78, 78, 78, '2023-12-17', 'Z78'),
(79, 79, 79, 79, '2023-12-18', 'A79'),
(80, 80, 80, 80, '2023-12-19', 'B80'),
(81, 81, 81, 81, '2023-12-20', 'C81'),
(82, 82, 82, 82, '2023-12-21', 'D82'),
(83, 83, 83, 83, '2023-12-22', 'E83'),
(84, 84, 84, 84, '2023-12-23', 'F84'),
(85, 85, 85, 85, '2023-12-24', 'G85'),
(86, 86, 86, 86, '2023-12-25', 'H86'),
(87, 87, 87, 87, '2023-12-26', 'I87'),
(88, 88, 88, 88, '2023-12-27', 'J88'),
(89, 89, 89, 89, '2023-12-28', 'K89'),
(90, 90, 90, 90, '2023-12-29', 'L90'),
(91, 91, 91, 91, '2023-12-30', 'M91'),
(92, 92, 92, 92, '2023-12-31', 'N92'),
(93, 93, 93, 93, '2024-01-01', 'O93'),
(94, 94, 94, 94, '2024-01-02', 'P94'),
(95, 95, 95, 95, '2024-01-03', 'Q95'),
(96, 96, 96, 96, '2024-01-04', 'R96'),
(97, 97, 97, 97, '2024-01-05', 'S97'),
(98, 98, 98, 98, '2024-01-06', 'T98'),
(99, 99, 99, 99, '2024-01-07', 'U99'),
(100,100,100,100,'2024-01-08','V100');

SELECT * from Bookings;
--------------------------#Tickets---------------------------------------
INSERT INTO Tickets (TicketID, BookingID, IssueDate, Price, Status) VALUES
(1, 1, '2023-01-01', 500.00, 'Confirmed'),
(2, 2, '2023-01-02', 750.00, 'Confirmed'),
(3, 3, '2023-01-03', 600.00, 'Cancelled'),
(4, 4, '2023-01-04', 550.00, 'Confirmed'),
(5, 5, '2023-01-05', 900.00, 'Confirmed');
(6, 6, '2023-01-06', 800.00, 'Confirmed'),
(7, 7, '2023-01-07', 650.00, 'Cancelled'),
(8, 8, '2023-01-08', 700.00, 'Confirmed'),
(9, 9, '2023-01-09', 500.00, 'Confirmed'),
(10, 10, '2023-01-10', 750.00, 'Confirmed'),
(11, 11, '2023-01-11', 600.00, 'Confirmed'),
(12, 12, '2023-01-12', 550.00, 'Cancelled'),
(13, 13, '2023-01-13', 900.00, 'Confirmed'),
(14, 14, '2023-01-14', 800.00, 'Confirmed'),
(15, 15, '2023-01-15', 650.00, 'Confirmed'),
(16, 16, '2023-01-16', 700.00, 'Cancelled'),
(17, 17, '2023-01-17', 500.00, 'Confirmed'),
(18, 18, '2023-01-18', 750.00, 'Confirmed'),
(19, 19, '2023-01-19', 600.00, 'Confirmed'),
(20, 20, '2023-01-20', 550.00, 'Confirmed'),
(21, 21, '2023-01-21', 900.00, 'Cancelled'),
(22, 22, '2023-01-22', 800.00, 'Confirmed'),
(23, 23, '2023-01-23', 650.00, 'Confirmed'),
(24, 24, '2023-01-24', 700.00, 'Confirmed'),
(25, 25, '2023-01-25', 500.00, 'Cancelled'),
(26, 26, '2023-01-26', 750.00, 'Confirmed'),
(27, 27, '2023-01-27', 600.00, 'Confirmed'),
(28, 28, '2023-01-28', 550.00, 'Confirmed'),
(29, 29, '2023-01-29', 900.00, 'Cancelled'),
(30, 30, '2023-01-30', 800.00, 'Confirmed'),
(31, 31, '2023-01-31', 650.00, 'Confirmed'),
(32, 32, '2023-02-01', 700.00, 'Confirmed'),
(33, 33, '2023-02-02', 500.00, 'Cancelled'),
(34, 34, '2023-02-03', 750.00, 'Confirmed'),
(35, 35, '2023-02-04', 600.00, 'Confirmed'),
(36, 36, '2023-02-05', 550.00, 'Confirmed'),
(37, 37, '2023-02-06', 900.00, 'Cancelled'),
(38, 38, '2023-02-07', 800.00, 'Confirmed'),
(39, 39, '2023-02-08', 650.00, 'Confirmed'),
(40, 40, '2023-02-09', 700.00, 'Confirmed'),
(41, 41, '2023-02-10', 500.00, 'Cancelled'),
(42, 42, '2023-02-10', 750.00, 'Confirmed'),
(43, 43, '2023-02-11', 600.00, 'Confirmed'),
(44, 44, '2023-02-12', 550.00, 'Confirmed'),
(45, 45, '2023-02-13', 900.00, 'Cancelled'),
(46, 46, '2023-02-14', 800.00, 'Confirmed'),
(47, 47, '2023-02-15', 650.00, 'Confirmed'),
(48, 48, '2023-02-16', 700.00, 'Confirmed'),
(49, 49, '2023-02-17', 500.00, 'Cancelled'),
(50, 50, '2023-02-18', 750.00, 'Confirmed'),
(51, 51, '2023-02-19', 600.00, 'Confirmed'),
(52, 52, '2023-02-20', 550.00, 'Confirmed'),
(53, 53, '2023-02-21', 900.00, 'Cancelled'),
(54, 54, '2023-02-22', 800.00, 'Confirmed'),
(55, 55, '2023-02-23', 650.00, 'Confirmed'),
(56, 56, '2023-02-24', 700.00, 'Confirmed'),
(57, 57, '2023-02-25', 500.00, 'Cancelled'),
(58, 58, '2023-02-26', 750.00, 'Confirmed'),
(59, 59, '2023-02-27', 600.00, 'Confirmed'),
(60, 60, '2023-02-28', 550.00, 'Confirmed'),
(61, 61, '2023-03-01', 900.00, 'Cancelled'),
(62, 62, '2023-03-02', 800.00, 'Confirmed'),
(63, 63, '2023-03-03', 650.00, 'Confirmed'),
(64, 64, '2023-03-04', 700.00, 'Confirmed'),
(65, 65, '2023-03-05', 500.00, 'Cancelled'),
(66, 66, '2023-03-06', 750.00, 'Confirmed'),
(67, 67, '2023-03-07', 600.00, 'Confirmed'),
(68, 68, '2023-03-08', 550.00, 'Confirmed'),
(69, 69, '2023-03-09', 900.00, 'Cancelled'),
(70, 70, '2023-03-10', 800.00, 'Confirmed'),
(71, 71, '2023-03-11', 650.00, 'Confirmed'),
(72, 72, '2023-03-12', 700.00, 'Confirmed'),
(73, 73, '2023-03-13', 500.00, 'Cancelled'),
(74, 74, '2023-03-14', 750.00, 'Confirmed'),
(75, 75, '2023-03-15', 600.00, 'Confirmed'),
(76, 76, '2023-03-16', 550.00, 'Confirmed'),
(77, 77, '2023-03-17', 900.00, 'Cancelled'),
(78, 78, '2023-03-18', 800.00, 'Confirmed'),
(79, 79, '2023-03-19', 650.00, 'Confirmed'),
(80, 80, '2023-03-20', 700.00, 'Confirmed'),
(81, 81, '2023-03-21', 500.00, 'Cancelled'),
(82, 82, '2023-03-22', 750.00, 'Confirmed'),
(83, 83, '2023-03-23', 600.00, 'Confirmed'),
(84, 84, '2023-03-24', 550.00, 'Confirmed'),
(85, 85, '2023-03-25', 900.00, 'Cancelled'),
(86, 86,  '2023-03-26',800.00, 'Confirmed'),
(87, 87, '2023-03-27', 650.00, 'Confirmed'),
(88, 88, '2023-03-28', 700.00, 'Confirmed'),
(89, 89, '2023-03-29', 500.00, 'Cancelled'),
(90, 90, '2023-03-30', 750.00, 'Confirmed'),
(91, 91, '2023-03-31', 600.00, 'Confirmed'),
(92, 92, '2023-04-01', 550.00, 'Confirmed'),
(93, 93, '2023-04-02', 900.00, 'Cancelled'),
(94, 94, '2023-04-03', 800.00, 'Confirmed'),
(95, 95, '2023-04-04', 650.00, 'Confirmed'),
(96, 96, '2023-04-05', 700.00, 'Confirmed'),
(97, 97, '2023-04-06', 500.00, 'Cancelled'),
(98, 98, '2023-04-07', 750.00, 'Confirmed'),
(99, 99, '2023-04-08', 600.00, 'Confirmed'),
(100, 100, '2023-04-09', 550.00, 'Confirmed');

Select * from Tickets;
-----------------------------THE END--------------------------------------
