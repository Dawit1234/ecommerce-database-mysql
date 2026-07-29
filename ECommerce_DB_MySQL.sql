-- 1. Wipe out any old test databases named ECommerce_DB
DROP DATABASE IF EXISTS ECommerce_DB;


-- 2. Create your clean database named ECommerce_DB
CREATE DATABASE ECommerce_DB;


-- 3. Open your new database
USE ECommerce_DB;


-- 4. Create your Customers table with all 6 columns
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100) NOT NULL,
Address VARCHAR(200),
City VARCHAR(100),
State CHAR(2),
ZipCode VARCHAR(20)
);


CREATE TABLE Categories (
CategoryID INT PRIMARY KEY AUTO_INCREMENT,
CategoryName VARCHAR(100) NOT NULL
);


CREATE TABLE Products (
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(150) NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
StockQuantity INT NOT NULL,
CategoryID INT,
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


-- 1. Ensure we are still inside your database
-- 2. Create the Orders Table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY AUTO_INCREMENT,
OrderDate DATE NOT NULL,
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);



-- 3. Create the OrderDetails Table (The Bridge Table)
CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
OrderID INT,
ProductID INT,
Quantity INT NOT NULL,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (1, 'Molunguri, A', '1108 Johanna Bay Drive', 'Birmingham', 'AL', '35216-6909     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (2, 'Muhinyi, Mauda', '1420 North Charles Street', 'New York', 'NY', '10044          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (3, 'Antony, Abdul', '1109 Powderhorn Drive', 'Fayetteville', 'NC', '28314          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (4, 'Smith, Ahmad', '2509 South Crescent', 'Savanna', 'IL', '61074          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (5, 'Chen, Rabi', '2273 N. Essex Ln', 'Murfreesboro', 'T', '37130          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (6, 'Nuckols, Heather', '150 Hayes St', 'Elgin', 'IL', '60120          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (7, 'Lutonsky, Christopher', '293 Old Holcomb Bridge Way', 'Woodland Hills', 'CA', '91365          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (8, 'Reddy, Aj', 'P.O. Box 9802', 'Plano', 'TX', '75025-0587     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (9, 'Rascano, Darrell', '16 Remington Dr. E', 'Rancho Cordova', 'CA', '95760          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (10, 'Johnson, Ajith', '2200 Old Germantown Road', 'McGregor', 'CA', '55555          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (11, 'Patwardhan, John', '100 South Main St', 'Bethel Park', 'PA', '15102          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (12, 'Swenson, Vin', '102 Forest Drive', 'Albany', 'OR', '97321          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (13, 'Nichols, Nadine', '7403 Twin Brooks Blvd', 'Rogers', 'AR', '72756          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (14, 'Guthrie, Rawle', '3011 Belden Street', 'Phoenix', 'AZ', '85023          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (15, 'Nguyen, Allison', '4100 Coca-Cola Plaza', 'Memphis', 'T', '38118          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (16, 'Kandregula, Howard', '534 Radar Road', 'Oklahoma City', 'OK', '73132          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (17, 'Yudkevich, Ed', '1701 E. 12Th Street', 'Olathe', 'KS', '66062          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (18, 'Jii, ', '1678 Plateau Dr', 'Dracut', 'MA', '01826          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (19, 'Schreiber, Nick', '1815 E. Newberry St', 'Lawrenceville', 'NJ', '08648          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (20, 'Chamberland, Sarah', '1942 S. Gaydon Avenue', 'Doraville', 'CA', '30340          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (21, 'Goldman, Don', 'Po Box 645910', 'Newark', 'NJ', '07103          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (22, 'Rivas, Brent', '18242 S. 65Th Ave.', 'Duncanville', 'TX', '75137          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (23, 'Newlin, Sherman', '2400 Bel Air, Apt.345', 'Broomfield', 'CO', '80020          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (24, 'Chavez, Gregory', '6472 Mll Ct', 'Frederick', 'MD', '21703          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (25, 'De la fuente, Cathy', '2213 Abbotsford Dr', 'Dalton', 'GA', '30720          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (26, 'Lin, Terri', '280 Briarcliff Rd', 'Springfield', 'IL', '62702          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (27, 'Mercado, Vincent', '637 Fulton Rd,  71', 'Boise', 'ID', '83704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (28, 'Thornton, Sreedhar', '2542 N  Mozart', 'Brooklyn', 'NY', '11229          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (29, 'Johnson, Pradeep', 'P.O. Box 81171', 'Ws', 'RI', '02890          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (30, 'Leach, Venkat', '12033 Foundation Place', 'Rowland Hts', 'CA', '91748          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (31, 'Muru, Eric', '300 Sixth Avenue', 'Henderson', 'NV', '89052          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (32, 'Slabicki, Liuy', '1979 Marcus Ave.', 'Westwood', 'NJ', '07675          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (33, 'Lair, Andrew', '28 Marblestone Lane', 'San Francisco', 'CA', '94122          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (34, 'Johnson, Waylon', '440 Richmond Park East', 'Hamden', 'CT', '06517-2703     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (35, 'Morgan, Robert', '48289 Fremont Blvd', 'Carrollton', 'TX', '75006          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (36, 'Annamanaidu, Christian', '213 N. College Dr.', 'Omaha', 'NE', '68127          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (38, 'Beier, Aneta', '8204 Anderson Road', 'Temple', 'TX', '76504          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (39, 'Fernandes, Philip', '136 Gales Drive', 'Richmond Hts', 'OH', '44143          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (40, 'Roby, Chris', '182 Greylock Parkway', 'Sacto', 'CA', '95814          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (41, 'Kumari, Gopinath', '35 Manor Dr. Apt# 5-O', 'Queens Village', 'NY', '11428          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (42, 'Pardo, Harriet', '141 Summit Street', 'Waldorf', 'M', '56091          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (43, 'Haldorai, Brent', '1427 Valley', 'Huntsville', 'AL', '35806          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (44, 'Miller, Jeremy', '625 Woodsmoke', 'Plano', 'TX', '75023          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (45, 'Jain, Phyllis', '75 Lexington Court', 'Austin', 'M', '55912          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (46, 'Nataraj, Randy', '1409 Coliseum Blvd', 'Wesley Chapel', 'FL', '33544          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (47, 'Sellers, Timothy', '13700 Sutton Park Dr N -- #322', 'Dallas', 'TX', '75287          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (48, 'Allen, Deanna', '766 Willow Ridge Dr', 'Demotte', 'I', '46310          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (49, 'Huebner, Walter', '100 Peachtree St.', 'Jacksonville', 'FL', '32217          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (50, 'Hutcheson, Larry', '2902 Cannons Lane', 'Coffeyville', 'KS', '67337          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (51, 'Green, Eduardo', '1240 E. Diehl Road', 'Columbia', 'SC', '29209          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (52, 'Azure, Mike', '304 Combs', 'Mendon', 'NY', '14606          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (53, 'Dardac, Donald', '4232 Judah', 'Irving', 'TX', '75038          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (54, 'Deguzman, Jose', '4168 Woodland Road', 'Brooklyn', 'NY', '11226          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (55, 'Wolff, Jonathan', '7921 Lamar', 'Ann Arbor', 'MI', '48108          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (56, 'Johnson, Mark', '1538 Harmon Cove Tower', 'Greenville', 'NC', '27889          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (57, 'Leach, Alan', '147 Bear Creek Pike', 'Dallas', 'TX', '75218-3995     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (58, 'Marlatt, Robert', 'P.P. Box 139', 'Yorktown Heights', 'NY', '10598          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (59, 'Perlman, Lk', '505 Ellis Blvd', 'Philadelphia', 'PA', '19122-6083     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (60, 'Brown, Scott', '919, 137Th Avenue Ne', 'Kansas City', 'KS', '66102          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (61, 'Stein, George', '95 Carleton St', 'New Milford', 'NJ', '07646          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (62, 'Petway, Robert', '303 3Rd Ave Se', 'Jacksonville', 'FL', '32224          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (63, 'Robinson, Timothy', '3075 Highland Parkway', 'Westland', 'MI', '48185          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (64, 'Goodwin, Mark', '6639 Capitol Blvd', 'Montgomery', 'AL', '36130          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (65, 'Mallipeddi, Rick', '1876 Woodhollow Dr', 'Milpitas', 'CA', '95035          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (66, 'Buford, Bry', '540 W North West Highway', 'New York', 'NY', '10005          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (67, 'Fritz, Mark', '16 Erie', 'Hosuton', 'TX', '77077          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (68, 'Hamilton, Karen', '18 Marvin Dr., Apt#B-5', 'Cincinnati', 'OH', '45263          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (69, 'Ybarra, George', '6 Oneill Ct', 'Detroit', 'MI', '48206-1775     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (70, 'Varghese, Joanne', '7178 Talhelm Road', 'Fort Wayne', 'I', '46805-1499     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (71, 'Santos, Anita', '1640 Barrington Lane', 'Barrington', 'IL', '60448          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (72, 'Kieffer, Jing peng', '1492 Highland Lakes Trail', 'Ringgold', 'GA', '30736          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (73, 'Seaver, Glenda', '23 Holohan Drive', 'Mountlake Terrace', 'WA', '98043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (74, 'Knox, Lakshman', '9074 Estes St', 'Austin', 'TX', '78759          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (75, 'Wigton, Alex', '5033 Montego Bay Dr', 'Brooklyn', 'NY', '11245          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (76, 'Ryan, Jagriti', '115 Audubon Cove', 'Kingsport', 'T', '37663          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (77, 'Latheef, Andrea c.', '17 Potter Road', 'Jacksonville', 'FL', '32256          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (78, 'Konow, Andrew', '25677 Wistereia Ct', 'Greenville', 'SC', '29607          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (79, 'Chang, Simon', '8317 Cabin Creek Drive', 'Oshkosh', 'WI', '54901          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (80, 'Garcia, Chong', '28000 Dequindre', 'Fairfax', 'VA', '22033          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (81, 'Schlusselberg, Brandon', '303 South Second St.', 'Collinsville', 'IL', '62234-2973     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (82, 'Boan, Dinesh', '11582 Rusk Cove', 'Charlotte', 'NC', '28270          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (83, 'Dalton, Tai-yen', '115 Tower Drive', 'Round Rock', 'TX', '78681          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (84, 'Wieneke, Frank', '2111 Bancroft Way', 'Birmingham', 'AL', '35226          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (85, 'Trujillo, Thell', '1204 Keller Lane', 'Fairfield', 'IA', '52556          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (86, 'Ritz, Joe', '7404 Lomo Alto', 'Plano', 'TX', '75024          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (87, 'Chen, Becky', '2605 Hawthorne Ave', 'Southgate', 'MI', '48195          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (88, 'Monse, Charles', '5933 6Th Street', 'Somersert', 'NJ', '08873          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (89, 'Boswell, Joseph', '3131 E. Holcombe Blvd', 'Shelton', 'CT', '06484          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (90, 'Johnson, Stewart', '410 Victory Garden Dr. Apt. 36', 'San Diego', 'CA', '92111          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (91, 'Cummings, Usha', '12033 Foundation Place', 'Greenville', 'TX', '75401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (92, 'Aguimba, Edward', '444 Propsect St', 'Streamwood', 'IL', '60107          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (93, 'Lacey, Kimberly', '3450 W. Country Club Dr', 'Macomb', 'MI', '48044          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (94, 'Vega, Bharat', '3003 N. First St. Ste309', 'Little Elm', 'TX', '75068          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (95, 'Cheboli, Walter', '4260 Nw 32 Street', 'Mankato', 'M', '56002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (96, 'Bawa, Jerry', '315 Newport Lane', 'Rockville', 'MD', '20850          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (97, 'Yciano, Nicolette', '1295 State Street', 'Gettysburg', 'PA', '17325          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (98, 'Duvall, Billy', 'Box 123', 'Fremont', 'CA', '94536          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (99, 'Trasente, Lucy', '51783 Se 7Th Street', 'Westerville', 'OH', '43081          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (100, 'Hodgkins, Giridhar', '814 East Ivy Street', 'Nyc', 'NY', '110324         ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (101, 'Goldberg, Seth', '4647 Stone Avenue', 'Huntsville', 'TX', '77320          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (102, 'Hernandez, Esta', '4000 So. 35Th', 'Hagerstown', 'MD', '21742          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (103, 'Trent, Janet', '13101 Columbia Pike', 'San Francisco', 'CA', '94122          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (104, 'Wheatley, Sathyanarayana', '2226 Spring Dusk Lane', 'Bloomingdale', 'NJ', '07403          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (105, 'Williams, Eugene', '805D Columbia St.', 'Flushing', 'NY', '11355          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (106, 'Smisko, Steven', '104 Cinnamon Teal Court', 'Warren', 'MI', '48089          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (107, 'Travis, Jeff', '3111 Monument Drive', 'Milwaukee', 'WI', '53218          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (108, 'Broadhurst, Vito', '300 30Th Ave. N. Apt. 4C', 'Fennimore', 'WI', '53809          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (109, 'Chansa, Tom', '123 Sfsdfsdfsdf', 'Sacramento', 'CA', '95820-4617     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (110, 'Sanjay, Ian', '517 So. Main Street', 'Gainesville', 'FL', '32301          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (111, 'Perkins, Wm', '900 Old Country Rd', 'Grand Prairie', 'TX', '75052          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (112, 'Paramasivan, Nancy', '923 Fuchsia Ave', 'Alamo', 'CA', '94507          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (113, 'Kohli, Carl', '51 Mercedes Way', 'Hollister', 'CA', '95023          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (114, 'Nuytten, Kim', '8908 So 121St', 'Chattanooga', 'T', '37404          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (115, 'Gagne, John', '2156 Glencoe Hills Drive.# 6', 'Sumter', 'SC', '29154          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (116, 'Sun, Edgar', '39 Howell Place', 'Parsippany', 'NJ', '07054          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (117, 'Bounds, Kirk', '1818 South 43Rd Street', 'Collinsville', 'IL', '62234          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (118, 'Palanukumarasamy, Dianna', '1521 W Wolfram', 'Columbia', 'SC', '29223          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (119, 'Donahoe, Greg', 'P. O. Box 2600', 'St. Paul', 'M', '55101          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (120, 'Bucella, Alex', '3451 Fairway Commons Dr', 'Colorado Springs', 'CO', '80907          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (121, 'Demith, Bob', '20 Carlsbad Rd.', 'New York', 'NY', '10007          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (122, 'Giraka, Eric', '115 Williams St Se', 'Seatle', 'WA', '98036          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (123, 'Jackson, Bill', '25-3 Latham Villiage Lane', 'Parma', 'OH', '44134          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (124, 'Bruch, Cameron', '10925 South Bryant', 'Addison', 'TX', '75001          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (125, 'Chism, Leslie', '123 Main St', 'Roy', 'UT', '84067          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (126, 'Beemer, Steve', '1234 Main St', 'Watertown', 'CT', '06795          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (127, 'Garcia, Dhananjay', '9211 Garland', 'Columbus', 'OH', '43216          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (128, 'Susai, Jo', '42524 Parkhurst Rd.', 'Mansfield', 'MA', '02048          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (129, 'Pot, Jonathan', '14647 S. Peppermill Ct.', 'Madison', 'NJ', '07940          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (130, 'fedor, sr., Christy', 'Beltline Road', 'Austin', 'TX', '78745          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (131, 'Wazny, Tina', '1025 Cadillac Way', 'Birmingham', 'AL', '35242          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (132, 'Daniel, Jody', '1 Enterprise Dr', 'Phoenix', 'AZ', '85032          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (133, 'Binner, Ellis', '6855 Woodland Ave', 'New Milford', 'CT', '06776          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (134, 'Rasmussen, Dan', '1066 Hidden Lake Dr', 'Meriden', 'CT', '06450          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (135, 'Robinson, Clemente', 'Sis, 550 Banway Building', 'Downers Grove', 'IL', '60515          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (136, 'Bennett, Gonza', '2707 Villagerive', 'Baltimore', 'MD', '21229          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (137, 'Lavallee, Lawrence', '2634 Timberbrooke Way', 'San Juan', 'PR', '00936          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (138, 'Harris, Peter', '3001 S. Congress', 'Indianapolis', 'I', '46237          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (139, 'Shukla, Ann', '20743 Chappell Knoll Dr', 'Appleton', 'WI', '54913          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (140, 'Look, Christina', '2014 Widener Place', 'Amarillo', 'TX', '79102          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (141, 'Seale, Brent', '1421 Champion Drive Suite 101', 'Carlstadt', 'NJ', '07072          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (142, 'Tuttle, Richard', '2829 Bennett Ave', 'East Northport', 'NY', '11731          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (143, 'Hardin, Bruce', '669 Woodspring Drive', 'Arlington Hts', 'IL', '60005          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (144, 'Erpenbach, Lee', '901 Mission Street', 'Grants Pass', 'OR', '97526          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (145, 'Tonner, Zheng', '57 N Plaza Blvd', 'Atlanta', 'GA', '30339-4024     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (146, 'Wilbon, Albert', '6035 Parkland', 'Kansas City', 'MO', '64141          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (147, 'Horner, Henry', '1206 Applegate Prkwy', 'Indianapolis', 'I', '46250          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (148, 'Buckley, Robert', '26280 Bonnie', 'San Gabriel', 'CA', '91776-3916     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (149, 'Benedicto, Robert', '4140 Alpha Road', 'Columbia', 'SC', '29223          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (150, 'Corbett, Jayagangadhara', '13050 Dahlia Circle,  122', 'Sherwood', 'AK', '72120          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (151, 'Bommana, Ilya', '1310 Brook St #2A', 'San Rafael', 'CA', '94903          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (152, 'Rimes, George', '977 N. Rustic Circle', 'Copperas Cove', 'TX', '76522          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (153, 'Aneshansley, Baskaran', '6720 Upper York Road', 'Ramona', 'CA', '92065          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (154, 'Battu, Jeffrey', '458 Mehaffey Drive', 'Succasunna', 'NJ', '07876          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (155, 'Brock, David', '651 Brookfield Pkwy', 'Farmington Hills', 'MI', '48864          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (156, 'Mogesa, Mohamed', '9939, Fredericksburg Rd, Apt', 'Overland Park', 'KS', '66212          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (157, 'Abeyatunge, Derek', '1414 S. Dairy Ashford', 'North Chili', 'NY', '14514          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (158, 'Shaffer, Jack', '1371 Longford Circle', 'Tampa', 'FL', '33634          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (159, 'Berger, Anil', '3968 Holly Dr.', 'Edison', 'NJ', '08830          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (160, 'Desormeaux, Ram', '1219 Redcliffe Road', 'Sunnyvale', 'CA', '94087          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (161, 'Smith, Mark', '89-41 210Th Pl', 'Okc', 'OK', '73117          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (162, 'Meseguer, Alan', '311 Sinclair Frontage Rd', 'Houston', 'TX', '77047          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (163, 'Alexander, Skip', '15 Gettysburg Square  187', 'West Hartford', 'CT', '06107          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (164, 'Louie, Guy', '1601 Schlumberger Dr', 'Baltimore', 'MD', '21228          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (165, 'Ambati, Greg', '1605 Candletree Dr. Suite 114', 'Landover', 'MD', '20785          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (166, 'Perkins, Kosalai', '1350 Davenport Mill Rd', 'Orlando', 'FL', '55555          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (167, 'Maksymczak, Timothy', '8425 Dolfor Cove', 'St Louis', 'MO', '63138          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (168, 'Billingsley, Carlos', '123 Sw 32Nd St', 'San Juan Capistrano', 'CA', '92675          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (169, 'Henry, Benjamin', '9203 Ivanhoe Road', 'Phoenix', 'AZ', '85016          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (170, 'Srinivas, Nicholas', '4792, Apt A, Weybridge Road', 'Hendersonville', 'T', '37075          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (171, 'Ashley, Karla', '108 Randolph Avenue', 'Sunrise', 'FL', '33351          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (172, 'Arutla, Jerry l.', '209 Ne 6Th', 'Ontario', 'CA', '91762          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (173, 'Kiss, Michelle', '201 Rockview Drive', 'Baton Rouge', 'LA', '70898          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (174, 'Wipfli, Jenny', '5502 Elk Hollow Ct', 'Mcfarland', 'WI', '53558          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (175, 'Perkins, Randy', '500 Franklin Trpk', 'Bellevue', 'NE', '68005          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (176, 'Lee, Bruce', '2388 Springdale Rd., Sw', 'Powder Springs', 'GA', '30127          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (177, 'Briggs, Greiner', '10011 Strathfield Ln', 'Vestavia', 'AL', '35216          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (178, 'Dinan, Kelly', '875 Taylor Road', 'Bayside', 'NY', '11361          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (179, 'Molfese, Alexander', '34 Knox Lane', 'Los Angeles', 'CA', '90068          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (180, 'Johnson, Neelam', '37220, Eisen Hoover Ct', 'Addison', 'TX', '75001          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (181, 'Maberry, Paul', '1525 Buchanan St., Nw', 'Apex', 'NC', '27502          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (182, 'Wolfe, Randy', '3799 Route 46 East', 'Columbus', 'GA', '31904          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (183, 'Hoffman, Kevin', '5375 Mariners Cove Drive', 'Everett', 'MA', '02149          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (184, 'Rogers, Pete', '906 233Rd Pl Ne', 'Erie', 'PA', '16505          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (185, 'Arzuza, Alioune', '113 Railroad Ave.', 'Dallas', 'TX', '75252          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (186, 'Williams, Greg', '5400 Gingercovedr', 'Spring Valley', 'NY', '10977          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (187, 'Holston, B', '1157 Hampton Way Ne', 'Rancho Cordova', 'CA', '95670          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (188, 'Sundaram, Kelly', '4905 Dunckel', 'Oregon', 'WA', '98121          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (189, 'Karri, Lisa', '22 Winding Way', 'Phoenix', 'AZ', '85016          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (190, 'Yarbro, John', '2320 Mountain Oaks Lane', 'Dayton', 'OH', '45415          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (191, 'Shah, Dave', '1251 42Nd St. 4Th Floor', 'Fayetteville', 'AR', '72701          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (192, 'Piper, Alan', '341 Carlton Road', 'Blue Bell', 'PA', '19422          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (193, 'Paramasivam, Greg', '1013 N. Franklin St', 'Burnsville', 'M', '55306          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (194, 'Wallace, Stephen', '63 N. Victor Ave.', 'Tallahassee', 'FL', '32399-0450     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (195, 'Zimmer, Jian', '4633 Tarsall Ct', 'Cinnaminson', 'NJ', '08077-2308     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (196, 'Barksdale, Karen', '214 Main St  249', 'Houston', 'TX', '77021          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (197, 'Bilodeau, Kenendy', 'One Sbc Center', 'Edison', 'NJ', '08817          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (198, 'Gilliam, James', '1910 Patricia', 'Matteson', 'IL', '60443          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (199, 'Abueg, Don', '901 N. Lake Destiny', 'Montvale', 'NJ', '07645          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (200, 'Taliaferro, Eric', '2101 E Coliseum Blvd', 'Westmont', 'IL', '60559          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (201, 'Hull, Tom', '301 W. Bay St.', 'Natick', 'MA', '01760          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (202, 'Beleford, Njansi', '2136 E Main St', 'Collinsville', 'IL', '62234          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (203, 'Kanapilly, Bill', '443 Eldridge Rd', 'Norcross', 'GA', '30096          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (204, 'Smith, Chris', '14254 W Center Dr', 'Levittown', 'PA', '19055          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (205, 'Blasy, Howard', '10 Blue Ravine', 'Plano', 'TX', '75074          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (206, 'Szara, Ellen', '714 P Street', 'Jacksonville', 'FL', '32202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (207, 'Montenegro, M.e', '722 N. Broadway', 'Oakland', 'CA', '94612          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (208, 'Cullity, Yolanda', '312 S. Combs', 'Norwood', 'MA', '02062          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (209, 'Gamba, Jeffrey', '726 Brender Lane', 'Hermitage', 'T', '37076          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (210, 'Salazar, Sidney', '5845 S. 2325 W.', 'St Louis', 'MO', '63129          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (211, 'Wheeler, Caroline', '185 Whiting Lane', 'Madison', 'WI', '53704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (212, 'Beck, Mike', '5316 Easthorpe Drive', 'Nutley', 'NJ', '07109          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (213, 'Browning, Albert', '1  E. Telecom Parkway', 'Duluth', 'GA', '30097          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (214, 'Uchendu, Jim', '4905 Maffitt Place', 'Ba', 'OK', '74011          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (215, 'Robersone, Sumanta', '206 Mc Lain Rd.', 'Atlanta', 'GA', '30313          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (216, 'Brown, Bob', '100 Schooner Way', 'Bedford', 'OH', '44146          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (217, 'Boos, James', '7647 Ellington Place', 'Holmdel', 'NY', '07733          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (218, 'Cooke, Arpan', '9834 Morgan Meadows Cove', 'Brooklyn', 'NY', '11236          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (219, 'Morisset, Chou', '14120 Twisting Lane', 'West Palm', 'FL', '32106          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (220, 'Carroll, Steven', '560 Main Street   416', 'Rogers', 'AR', '72756          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (221, 'Lawrence, Nunzio', '87 Cannon Ridge Drive', 'Woodside', 'NY', '11377          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (222, 'Suyam, Steve', '1486 Neil Ave', 'Gilbert', 'AZ', '85040          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (223, 'Romano, B.j.', '47715 Freedom Valley', 'Boston', 'MA', '02116          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (224, 'Daniels, John', '1417 Deer Spring Court', 'Fairfax', 'VA', '22031          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (225, 'Milke, Paul', 'Po Box 846', 'Raleigh', 'NC', '27604          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (226, 'Rocca, Cary', '8619 W. Summerdale  1', 'Oakland', 'CA', '94612          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (227, 'Hassan, Robert', '1221 Idaho St', 'Altoona', 'PA', '16602          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (228, 'Sadras, Terry', '43-70, Kissena Blvd.,', 'Belleville', 'IL', '62223          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (229, 'Rivera, Pramod', '2203 , Good Shepherd Way', 'Solon', 'OH', '44139          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (230, 'Walters, Tim', '9315 Avenue A', 'Akron', 'OH', '44313          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (231, 'Lee, Andra', '8831 Park Central Drive', 'Beacon', 'NY', '12508          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (232, 'Murphy, Dean', '105 White Lane', 'Phoenix', 'AZ', '85032          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (233, 'Kittendorf, Joe', '6430 95th Avenue', 'Naperville', 'IL', '60623          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (234, 'Liao, Stuart', '4070 Fisher Road', 'Charlotte', 'NC', '28215          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (235, 'Tabor, Michael', '105 Shelley Avenue', 'Beaverton', 'OR', '97007          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (236, 'Burt, Myron', '3201 Clayton Road', 'Huntington', 'AR', '72940          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (237, 'Erikson, David', '805-D Columbia St', 'Concord', 'NH', '03301          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (238, 'Rathmann, Mark', '4107C Carrollton Ct', 'Rancho Cordova', 'CA', '95670-4502     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (239, 'Anderson, Jeff', '3625 Duval Rd #223', 'Houston', 'TX', '77045          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (240, 'Nguyen, Eddie', '205A E Main St', 'Houston', 'TX', '77013          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (241, 'Diop, John', '6318 Towncrest Court', 'South Pasadena', 'CA', '91030          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (242, 'Hemmer, Deepanjan', '2020 Oldfields Circle S Dr', 'Dallas', 'TX', '75208          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (243, 'Gajjela, Jim', '1001 Avenue Of The Americas', 'Nelsonville', 'OH', '45764          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (244, 'Gigante, Kathy', 'P O Box 25009', 'Poughkeepsie', 'NY', '12601          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (245, 'Walker, Walter', '2415 First Avenue', 'New York', 'NY', '10018          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (246, 'Viswanathan, Howard', '37890 Westwood Cir. Apt 205', 'Hindsboro', 'IL', '61930          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (247, 'Chu, Darren', '9  Campus Dr.', 'Horsham', 'PA', '19044          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (248, 'Zmaczynski, Mike', '3907 78Th Drive E', 'Schaumburg', 'IL', '60195          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (249, 'Bradley, Raj', '1115 Huntington Dr.  B', 'Aliquippa', 'PA', '15001          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (250, 'Drake, Doug', '846 President St', 'Linden', 'NJ', '07036          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (251, 'Peng, Roger', '6201 W Olive Ave', 'Baton Rouge', 'LA', '70815          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (252, 'Balliet, Steve', '1 New York Plaza', 'Santa Ana', 'CA', '92703          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (253, 'Bertone, Robert', '4627 Blanche Road  #168', 'Austin', 'TX', '78759          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (254, 'Harding, Shawn', '3480 W 135Th St', 'Novato', 'CA', '94947          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (255, 'Boyle, Teresa', '225 Mt Vernon Dr', 'Cerritos', 'CA', '90703          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (256, 'Mahodaya, Test', '351 Crossing Blvd', 'Anywhere', 'CA', '90210          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (257, 'Koch, Robert', '222South Riverside Plaza', 'Decatur', 'GA', '30034          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (258, 'Curless, Darald', 'P.O. Box 866642', 'West Hills', 'CA', '91304          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (259, 'Rusoff, David', '3305, Society Drv', 'Lincoln', 'NE', '68506-4807     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (260, 'Hester, Maurice', '2576 Sheppard Road', 'Kennewickm', 'WA', '99336m         ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (261, 'Herbert, Richard', '542, Maple Dr', 'Charlotte', 'NC', '28211          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (262, 'Mattson, Debora', '1701 Telfair Chase Way', 'Sacramento', 'CA', '95814          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (263, 'Allen, Joel', '2220 W Mission Ln Apt 1127', 'Hilliard', 'OH', '43026          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (264, 'King, Radhakrishna', '901 S. Central Expressway', 'Charleston', 'SC', '29407          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (265, 'Szydlow, Raymond', '1624 Brougham Place', 'Columbus', 'GA', '31904          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (266, 'Lumpkin, Christopher', '100 Church Street', 'Columbus', 'GA', '31901          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (267, 'Ostrov, Arnold', 'Box 183', 'Harrisburg', 'PA', '17110          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (268, 'Chinna, Larry', '2300 Southeastern Ave', 'Marietta', 'GA', '30062          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (269, 'Shellabarger, Mark', '34613 Winslow Ter', 'Bannockburn', 'IL', '60015          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (270, 'Duncan, Ted', '1003 N. Delano Ave', 'Westminster', 'CA', '92683          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (271, 'Harke, Richard', '300 Mustang St', 'Hazelwood', 'MO', '63042          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (272, 'Craig, Jj', '1430 Sw 12Th Ave.  1314', 'Stamford', 'CT', '06906          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (273, 'Kuiu, Ram', '229 Strawtown Rd', 'North Bend', 'OH', '45052          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (274, 'Johnson, Scott', '14 Horseshoe Lane', 'Carver', 'MA', '02330          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (275, 'Wicks, David', '34-52 60Th Street', 'Maryland Heights', 'MO', '63043-3961     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (276, 'Schuh, Max', '730 Opening Hill Rd', 'Lauderhill', 'FL', '33313          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (277, 'Dawson, Srividhya', '907, Lake Run Cir', 'Falss Church', 'VA', '22041-2536     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (278, 'Melamud, Tammy', '1345 Avenue Of The Americas', 'Cleveland', 'OH', '44111          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (279, 'Woo, Kevin', '1108 W. Indiana Ave.', 'Elk Grove', 'CA', '95758          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (280, 'White, Barbara', '3400 Richmond Parkway #3423', 'Bristol', 'CT', '06010          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (281, 'Schumer, Richard', 'East Remington Drive', 'Woodstock', 'GA', '30188          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (282, 'Brownstein, Ruth', '6142C S. Kensington Ave.', 'Boise', 'ID', '83278          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (283, 'Demers, Ron', '4Th Floor  F6-F266-04-1', 'Conyers', 'GA', '30013          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (284, 'Vennapusa, Rani', '7895 Surreywood Dr.', 'Dallas', 'TX', '75218          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (285, 'Jefferies, Gloria', 'Matera St', 'San Bruno', 'CA', '94066          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (286, 'Underwood, Al', '3520 Twilight Dr', 'Indianapolis', 'I', '46227          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (287, 'Kk, Darnell', '1121 Tama', 'Middletown', 'RI', '02842          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (288, 'Douglas, Bikash', '2220 Canton St  Loft 301', 'Columbus', 'WI', '53925          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (289, 'Drebenstedt, Thomas', '11 Main Street', 'Florham Park', 'NJ', '07932          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (290, 'Turner, Eric', '1728 S. 15Th', 'Arvada', 'CO', '80002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (291, 'Volkov, Jim', '12033 Foundation Place', 'Chicago', 'IL', '60618          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (292, 'Westemeier, Linda', '722 N Broadway', 'Jonesboro', 'AR', '72401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (293, 'Disanto, Ben', '402 Clover Springs Drive', 'Irvine', 'CA', '92612          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (294, 'Stroede, George', '14115 Fleetwell', 'Washington', 'DC', '20065          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (295, 'Long, Leon', '16 Saint Mary Drive', 'Scappoose', 'OR', '97056-4484     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (296, 'Parmelee, Robert', '1810 Berry Ln', 'Commerce', 'TX', '75428          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (297, 'Smith, Deb', '985 Michigan Av', 'Lakewood', 'CO', '80228          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (298, 'Smit, Rekha', 'Computer Science Department', 'Topeka', 'KS', '66612          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (299, 'Hall, Ann', '114 12Th Ave Nw', 'Tallahassee', 'FL', '32301          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (300, 'Shaw, Ronald', '656 Riverside Dr', 'Tustin', 'CA', '92780          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (301, 'Gujja, Anthony', '4747 Mclane Parkway', 'Irving', 'TX', '75038          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (302, 'Kundargi, Danial', '57 Nevada Dr.', 'Alpharetta', 'GA', '30004          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (303, 'Andrews, Ashok', '949 Rockybrook Drive', 'Raleigh', 'NC', '27613          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (304, 'Blanchard, Eileen', '11 Harbor Woods Circle', 'Tallahassee', 'FL', '32312          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (305, 'Cao, Kelly', '906 Dryden Ave', 'Atlanta', 'GA', '30303-3404     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (306, 'Bobson, Manohar', '2200 Cardinal Drive', 'Hermosa Beach', 'CA', '90254          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (307, 'Valentin-eggert, Michael', '140, Broadway', 'Indianapolis', 'I', '46221          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (308, 'Pierre, Robert', '155 Grisseltail Rd', 'Park Ridge', 'IL', '60056          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (309, 'Grampsas, Jiying', '1200 Wooded Acres Dr.', 'Ames', 'IA', '50010          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (310, 'Jeffcoat, Nelson', '5244 West 139Th Street', 'Portland', 'TX', '78374          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (311, 'Casoli, Dan', '5 Conrad Court', 'Prairie Village', 'KS', '66208          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (312, 'Hidalgo, Fgsdg', '405 Fayette Pike', 'Austin', 'TX', '78704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (313, 'Murphy, Colin', '3831 Pinetree Dr.', 'Asheville', 'NC', '28806          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (314, 'Gonzalles, Maiv', '10610 Morado Circle', 'Joplin', 'MO', '64801          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (315, 'Reinarz, Craig', '1339 Contra Costa Drive', 'Bernville', 'PA', '19506          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (316, 'Appandai, Curtis', '443 Airpark Rd', 'Grand Prairie', 'TX', '75052          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (317, 'Brown, Srikanth', '1155 Warburton Ave', 'Richmond', 'CA', '94806          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (318, 'Avula, Manuel', '2217 North Ave', 'Lake Success', 'NY', '11042          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (319, 'Mcdermott, Clifford', '162 Quail Run', 'Chicago', 'IL', '60643          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (320, 'Bernard, Subramaniyan', '125 Raritan Plaza', 'Birmingham', 'AL', '35222          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (321, 'Sridar, Ashok', '5146 Keitts Corner Road', 'Liverpool', 'NY', '13090          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (322, 'Lorusso, Walt', '6509 Rosemeadows Dr', 'Las Cruces', 'NM', '88003          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (323, 'Marshburn, Sridhar reddy', '1530 Broadway Road', 'Brooklyn', 'NY', '11219          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (324, 'Brown, Connie', '10302 Joan Drive', 'Appleton', 'WI', '54915          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (325, 'Tucker, Bill', '3003 North First Street', 'Milwaukee', 'WI', '53202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (326, 'Howell, Kim', '4010 Bob Wallace Ave Apt 3', 'Renton', 'WA', '98056          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (327, 'Bostick, Allen', '7205 None Rd.', 'Montgomery', 'WV', '25136          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (328, 'Alsaidi, Jim', '712 White Oak', 'Apopka', 'FL', '32712          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (329, 'Delatte, William', '2521 Old Stone Mill Drive', 'Lewisville', 'TX', '75067          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (330, 'Krishnamurthy, William', '1110 Ne 12Th St', 'Cranbury', 'NJ', '08512          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (331, 'Howard, Denise', '1517 Wn Carrier Pkwy. Ste. 150', 'Wincester', 'T', '37398          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (332, 'Galloway, Mariola', 'P.O. Box 250587', 'New York', 'NY', '10025          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (333, 'Loyal, Chang', 'R.R. 1  Box 132', 'Jacksonville', 'FL', '32207-3713     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (334, 'Kaphle, Carlos', '111 Wall St.', 'Houston', 'TX', '77221          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (335, 'Srigiri, Greg', '725 Lake St Ne', 'Wesley Chapel', 'NC', '28173          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (336, 'Mccue, Sreepathi', '914 Dundee Ct', 'Tinlry Park', 'IL', '60477          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (337, 'Morgan, John', '28 Golden Hill', 'Tampa', 'FL', '33615          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (338, 'Clegg, Viola', '3635 Vista', 'Mansfield', 'MO', '65704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (339, 'Kanter, Cindy', '17909 Peru Rd # 37', 'Lawrenceville', 'GA', '30043-5151     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (340, 'Sahoo, Satish', '55 Water Street', 'Lansing', 'MI', '48917          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (341, 'D, Elaine', '3604 Partridge Path Apt 1', 'Rancho Cordova', 'CA', '95670          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (342, 'Sase, Claude', '2963 Jones St.', 'Benicia', 'CA', '94510          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (343, 'Chanduri, Walter c', '1331 Jefferson Avenue', 'Delray Beach', 'FL', '33445          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (344, 'Ibarra, John', 'Pob 65', 'Warminster', 'PA', '18974          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (345, 'Phillips, Jeff', '223 Sunlit Way', 'Plymouth', 'MI', '48170          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (346, 'Randazzo, Alaine', 'Hall St', 'Blue Mounds', 'WI', '53562          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (347, 'Brown, Toni', '6050 Crawfordville Rd', 'Houston', 'TX', '77042          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (348, 'Samala, Avelino', '117 Beacon Ave', 'Lawrence', 'MI', '49064          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (349, 'Shanmugasundaram, John', '6890 Deer Court', 'Glen Ellyn', 'IL', '60137          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (350, 'Posh, Kevran', 'P.O Box 1452', 'Jonesboro', 'AR', '72401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (351, 'Cuento, John', '5100 Tipperary', 'Little Rock', 'AR', '72022          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (352, 'Cate, Kim', '123 Wild Lilac Court', 'San Mateo', 'CA', '94402-5009     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (353, 'Johnson, John', '23 Main Street', 'Lawrenceville', 'GA', '30043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (354, 'Bhatt, Andregene', '20533 Sw 2 Nd. Street', 'Westerville Dr W', 'OH', '43082          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (355, 'Jackson, Alex', '1234 Main St.', 'Doylestown', 'PA', '18901          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (356, 'Thelagathoti, Brad', '2010 Glass Rd. Ne Apt 210', 'Dallas', 'TX', '75211          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (357, 'Hausner, William', '2512 N.E. 9 Th St', 'Valparaiso', 'I', '46383          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (358, 'Mead, Aquanetta', '2443 Sunset', 'Kenosha', 'WI', '53142          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (359, 'Vera, Craig', '8Th Floor', 'Columbus', 'OH', '43204          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (360, 'Meek, Frank reyes', '4804 Deer Lake Dr E', 'Ankeny', 'IA', '50021          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (361, 'Register, Alan', '4416 Hartdord Dr.', 'Southfield', 'MI', '48075          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (362, 'Taraszewski, Michael', '1000 I Street', 'Ozone Park', 'NY', '11417          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (363, 'Louis, Leanne', '606 Savannah Highway', 'Tallahassee', 'FL', '32304          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (364, 'Lawson, Sriramana', '14160 Red Hill Ave  106', 'Springfield', 'IL', '62704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (365, 'Johnson, Anne', '4511 Hezekiah Pl', 'Temple', 'TX', '76504          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (366, 'Bannur, Siva', '252 - 85 Leith Road', 'Milwaukee', 'WI', '53202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (367, 'Foote, Debra', '15769 Helen', 'Buffalo Grove', 'IL', '60089          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (368, 'Mcdonnell, Siddharth', '2616 Beeman', 'New Market', 'MD', '21774          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (369, 'Lakshmanaraju, Jeff', '1388 Warner Ave', 'Berkeley', 'CA', '94720          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (370, 'Womack, Gail', '109 North Street', 'Philadelphia', 'PA', '19146-1716     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (371, 'Burger, Michael', '2325 Keaton Ave., Apt. F', 'Matawan', 'NJ', '07747          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (372, 'B, Rodney', '502 N. Jefferson St', 'Itasca', 'IL', '60143          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (373, 'Funai, Margaret', 'P.O.Box 99220', 'Moorestown', 'NJ', '08057          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (374, 'Then, George', '85 Notre Dame Dr', 'Garden Grove', 'CA', '92840          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (375, 'Toocee, Marie', '4500 Baymeadows Rd', 'Concord', 'CA', '94519          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (376, 'Chiru, Nate', '1609 Ranch View Drive', 'Bellmawr', 'NJ', '08031          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (377, 'Tester, Steve', '2232 Ironwood Ridge Ct', 'Lowell', 'MA', '01854          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (378, 'Das, Robert', '2662, Scotalnd Green', 'Yonkers', 'NY', '10701          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (379, 'Paul, Sam', '3249 S. Oak Park Ave', 'Chicago', 'IL', '60642          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (380, 'Counts, James', 'W3903 Krueger Rd', 'New Milford', 'NJ', '07646          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (381, 'Obul, Hari', '241 Main St', 'Temple Terrace', 'FL', '33637          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (382, 'Berry, R', '513 Little Ave.', 'Paw Paw', 'MI', '49079          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (383, 'Viswanathan, Said', '5 Woodhollow Rd', 'New York', 'NY', '10005          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (384, 'Graziano, Bob', '13101 Columbia Pike', 'Matthews', 'NC', '28105          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (385, 'Gira, Dava', '24 Northfield Rd', 'Raymore', 'MO', '64083          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (386, 'Howe, Samuel', '927A E. Center St.', 'Pittsburgh', 'PA', '15239-2324     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (387, 'Cox, Lawrence', '10 Park Plaza', 'Cloverdale', 'CA', '95425-5440     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (388, 'Wright, Tanya', '415 W Golf Rd', 'Lincolnshire', 'IL', '60069          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (389, 'Matthes, Mark', '750 Crown Cove', 'Salinas', 'CA', '93908          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (390, 'Riza, Matthew', '1263 Greenleaf Loop', 'Lake Oswego', 'OR', '97035          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (391, 'Castle, Kenneth', '1536 Chicago Blvd', 'Clearwater', 'FL', '33756          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (392, 'Walker, Bob', '2200 S Fort Apache #2029', 'Sunnyvale', 'CA', '94087          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (393, 'Lockhart, Jagloo', '6349 Beechwood Drive', 'Des Moines', 'IA', '50310          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (394, 'Verma, Jose', '1406 17Th Ave', 'N.M.', 'FL', '33181          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (395, 'Burchard, Jay', '17440 N Tatum Blvd', 'Indianapolis', 'I', '46206          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (396, 'Loper, Demetria', '3801 S. Capital Of Texas Hw', 'Hackettstown', 'NJ', '07840          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (397, 'Hollingsworth, Ed', '626 Picher', 'Columbus', 'OH', '43215          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (398, 'Wise, Norm', '1212 N. Lasalle St., #2201', 'Ft Thomas', 'KY', '41075          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (399, 'Lipsig, Seth', '16 Shallowford Rd.', 'Chicago', 'IL', '60656          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (400, 'Litterson, Anthony', '901 S. National Ave.', 'Phila.', 'PA', '19105          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (401, 'Antalocy, S.', 'P.O. Box 336', 'Seattle', 'WA', '98155          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (402, 'Nair, Phalon', '214 Angela Ave', 'Jersey City', 'NJ', '07304          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (403, 'Roush, M', '5111 Ambergate Ln', 'Chapin', 'SC', '29036          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (404, 'Williams, Bobby', '9001 Southbay Drive', 'Bronx', 'NY', '10467          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (405, 'Burnett, Muralikrishna', '60 Coppermine Road', 'Naperville', 'IL', '60540          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (406, 'Agarwala, Troy', '2308 Fair St.', 'Wapakoneta', 'OH', '45895          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (407, 'Torr, James', '465 Buckland Hills Dr. Apt 311', 'Dublin', 'NY', '90210          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (408, 'Anderson, Alan', '15650A Vineyard Blvd  143', 'Albuquerque', 'NM', '87101          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (409, 'Lowery, Shane', '1127 Herbert J.', 'Philadelphia', 'PA', '19153          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (410, 'Syed, Mike', '2501 Mcgee', 'Horn Lake', 'MS', '38637          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (411, 'Harrison, Jeff', '2560 W. Shaw Ln', 'Dallas', 'TX', '75201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (412, 'Dunlavy, Karen', '1707 4Th Ave Se', 'Anytown', 'CO', '80204          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (413, 'Fgsgsg, Senthil', '2025 E Campbell   #143', 'Indianapolis', 'I', '46228-3356     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (414, 'Vang, Karl', '327 Franklin Street', 'Edina', 'M', '55435          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (415, 'Green, Ethan', '810 First Street Ne', 'Oakland', 'CA', '94612          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (416, 'Elseman, Felix', '12 E.31St St. Ste 1205', 'W. Covina', 'CA', '91719          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (417, 'Blackman, Armando', '6333 Mount Ada Rd', 'Alpharetta', 'GA', '30004          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (418, 'Page, Patrick', '505 Main St', 'Williamsville', 'NY', '14221-4520     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (419, 'Vidal, William', '43 Kraft Ln', 'Springfield', 'MA', '01111-0001     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (420, 'Schulte, Romi', '147 Afton Ave.', 'Chicago', 'IL', '60626          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (421, 'Allen, Craig', 'P.O. Box 50016', 'Pullman', 'WA', '99164          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (422, 'Sowell, Janet', '189 Commcerce Court', 'Baltimore', 'MD', '21201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (423, 'Rennells, Ram', '310 N. Willomet Ave.', 'Metairie', 'LA', '70002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (424, 'Rao, Christina', '518 Elmwood Terrace', 'Avenel', 'NJ', '07001          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (425, 'Phinney, Sue', '624 Aiello St', 'Comstock Park', 'MI', '49321-9344     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (426, 'Young, Jacquelyn', '11550 Florida Blvd', 'Richmond', 'VA', '23227          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (427, 'Wade, Jp', '6118 Carnation Road', 'Tallahassee', 'FL', '32305          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (428, 'Plasha, Joe', '812 West 13Th Street', 'Akron', 'OH', '44113          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (429, 'Perez, Terrence', '2325 West Pensacola Street', 'Farmington Hills', 'MI', '48335          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (430, 'Moore, Richard', '78 Mckown Road', 'Cedar Rapids', 'IA', '52401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (431, 'Laforest, Don', 'Plntation', 'Atlanta', 'GA', '30324          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (432, 'Ayyappan, Andrew', '1671 Hampton Knoll Drive', 'Markham', 'IL', '60426          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (433, 'Arrington, Mallikarjuna', '2551 Wideworld', 'Miami', 'FL', '33173          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (434, 'Oriol, Cecilia', '1108 Fleming Ct.   103', 'Chandler', 'AZ', '85225          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (435, 'Garrison, Joel', '16951, Addison Rd', 'New City', 'NY', '10956-6815     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (436, 'Cloud, Kevin', '652 N Sam Houston', 'Jackson', 'MI', '49202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (437, 'Little, Walton', '10566 Tiger Point', 'Downingtown', 'PA', '19335          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (438, 'Moore, Mv', '6315 N 16Th St, 229', 'Brooklyn', 'NY', '11219          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (439, 'Clark, Donald', '1015 E. 20Th St Apt C', 'Plano', 'TX', '75086          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (440, 'Vatcheva, Scott', '315 Court Street', 'Marshall', 'WI', '53559          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (441, 'Owen, Mark', 'P.O. Box 1537', 'Belleville', 'NJ', '07109          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (442, 'Meeker, Tsao-shiang', '2100 Paul Edwin Terr', 'Olathe', 'KS', '66062          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (443, 'Xiong, J', 'Po Box 8403', 'Topeka', 'KS', '66604-1877     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (444, 'Truesdale, David', 'Po Box 6459', 'Huntsville', 'AL', '35805          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (445, 'Miller, Bassam', '10 Erick Rd #15', 'Hyattsville', 'MD', '20783          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (446, 'Stone, Milind', '44 Kinler', 'Saint Paul', 'M', '55116          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (447, 'Borskiy, Jamie', '12301 Warner Dr', 'St. Augustine', 'FL', '32084          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (448, 'Larson, Heriberto', '7623 Matera St #103', 'Alpine', 'AL', '35014          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (449, 'Chandrasekhar, Yagnaraju', '2149 West Dunlap Avenue', 'Bethalto', 'IL', '62010          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (450, 'Patthana, Patrick', '124 Austin Building', 'Peoria', 'IL', '61614          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (451, 'Balija, Jeff', '4723. W. Braddock Road', 'Dallas', 'TX', '75252          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (452, 'Butler, Paul', '125 Rosewood Drive', 'Florence', 'SC', '29501          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (453, 'Smith, Uma', '915 Sw Harrison', 'Kc', 'MO', '64151          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (454, 'Shakeel, Cynthia', '120 Blue Ridge Trace', 'Plainsboro', 'NJ', '08536          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (455, 'Faver, Michael', '260 Franklin Turnpike Apt 513', 'Lincoln', 'NE', '68512          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (456, 'Ehardt, Faina', '4747 Mclane Parkway', 'Redwood City', 'CA', '94062          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (457, 'Hughes, Steve', '21555 Oxnard Street', 'Fenton', 'MO', '63026          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (458, 'Mike, Bill', '88 Silva Lane', 'Berkeley', 'CA', '94720          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (459, 'Byker, Samuel', '2801 East College Way', 'Plano', 'TX', '75093          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (460, 'Weathers, Sandhya', 'Its - City Hall - Room 6', 'Bowdon', 'GA', '30108          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (461, 'Bodnovich, Vivek', '1000 Lakeside Dr.', 'Atlanta', 'GA', '30339          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (462, 'Cofer, Kathy', '1441 Schilling Place', 'Burr Ridge', 'IL', '60527          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (463, 'Pickens, Bumpy', '729 Woodmere Creek Loop', 'Pittsburgh', 'PA', '15233          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (464, 'Bagent, Tom', '1120 N St.', 'Camp Hill', 'PA', '17011          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (465, 'Sui, Don', '6607 Brodis Lane  335', 'Parsippany', 'NJ', '07054          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (466, 'Howard, Harold', '920 Harvest Dr', 'Grand Prairie', 'TX', '75050          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (467, 'Myl, Carolyn', '4343 Warm Springs Rd Apt 1019', 'Butler', 'PA', '16002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (468, 'Ross, Kevin', '1955 Amber Trail Rd', 'Dayton', 'MD', '21036          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (469, 'Schmitt, Tom', '12001 Sw 14Th Street', 'Valley Forge', 'PA', '19482          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (470, 'Thompson, Elsy', '916 N. Lincoln', 'Troy', 'MI', '48099          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (471, 'Stapleton, Victor', '267 Amboy Avenue', 'Muskegon', 'MI', '49441-4588     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (472, 'Tallada, Raghu', '128 Greenbriar Dr', 'Madison Heights', 'MI', '48976          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (473, 'Grant, Murali', '1344 B Street', 'Queens Village', 'NY', '11427          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (474, 'Key, David', '2 Pierce Place', 'Streamwood', 'IL', '60107          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (475, 'Gupta, Deborah', '5 Lilly Pond Circle', 'Southboro', 'MA', '01772          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (476, 'Sharma, Carlo', '18081 Midway Rd', 'Washington', 'DC', '20011          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (477, 'Horton, James', '2455 Paces Ferry Rd.', 'Williamsville', 'NY', '14221          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (478, 'Millard, Dwayne', '634 Koehler Road', 'Seattle', 'WA', '98178          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (479, 'Kattekula, Luis', '14252 St Rt 65', 'Eden Prairie', 'M', '55346          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (480, 'Hanak, Sharan', '1200 N. Market St.', 'St. Louis', 'MO', '63113          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (481, 'Young, Chris', '6705 Harlan Drive', 'Falls Church', 'VA', '22043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (482, 'Rampel, John', '123-12 Gcp', 'Waco', 'TX', '76710          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (483, 'Kumar, Gary', '183 Loudon Rd, Apt   4', 'Columbus', 'OH', '43201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (484, 'Gallaspy, Bill', '2794 Blarefield Driev', 'New York', 'NY', '10041          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (485, 'Kerr, Harper', 'Po Box 2337', 'St Albans', 'VT', '05478          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (486, 'Rose, Alan', 'P.O. Box 8553', 'St. Petersburg', 'FL', '33704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (487, 'Pak, Robert', '101 Satinwood Drive', 'Mechanicsville', 'VA', '23111          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (488, 'Howland, Robert', '5806 Leanne Ln', 'Pittsburg', 'CA', '94565          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (489, 'Kauffmanm, Lashonda', '211 Main Street', 'Sarasota', 'FL', '34243          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (490, 'Johnson, Balasundaram', '850 Cherry', 'New York', 'NY', '10292          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (491, 'Grahovek, Stephen', '12 Booth Street', 'Germantown', 'T', '38138          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (492, 'Brown, Nagarjun', 'Po Box 50', 'Poughkeepsie', 'NY', '12603          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (493, 'Stewart, Christopher', '1 Court Circle', 'Georgetown', 'TX', '78628          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (494, 'Barrios, Rajeev', '471 Regan Ln', 'Northborough', 'MA', '01532          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (495, 'Smith, Arthur', 'P.O. Box 190886', 'Laurelton', 'NY', '11413          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (496, 'Conlan, Armstrong', '3404 Tulane Drive Apt. 21', 'Forestville', 'MD', '20747          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (497, 'Mccord, Alex', '1731 Ne 141 St', 'Schaumburg', 'IL', '60173          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (498, 'Brasher, Ruth', '4 S. Highview Cir', 'Charlotte', 'NC', '28211          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (499, 'Mayo, Kevin', '2882 Tall Oaks Ct', 'Dayton', 'OH', '45449          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (500, 'Bivans, Paul', '17B Pauline Street', 'Columbus', 'GA', '31909          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (501, 'Korde, Shubha', '1326 Mississippi Street', 'San Jose', 'CA', '95134          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (502, 'Mauthe, Hipolito', '1262 11Th Avenue', 'Philadelphia', 'PA', '19128-4732     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (503, 'Woolf, Ginny', '16021 N 30Th St Unit 110', 'Houston', 'TX', '77060          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (504, 'Richards, Kim', '1800 Harrison St, 9Th Fl', 'Milford', 'CT', '06460          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (505, 'Larsen, Kristina', '3325 S Douglas Av', 'San Francisco', 'CA', '94122          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (506, 'Hacker, Ruben', '3 Willow Way', 'Cleveland', 'OH', '44115          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (507, 'Seeley, Joe', '1101 Monterey Blvd', 'Secaucus', 'NJ', '07094          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (508, 'Dzialak, Francisco', '9523 Blake Lane 101', 'Mesquite', 'TX', '75181-1266     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (509, 'Cassara, Glenn', '5514 W. Como Ave.', 'Van', 'WA', '98654          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (510, 'Bassett, Mark', '12750 Fair Lakes Circle', 'Farmington', 'CT', '06032          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (511, 'Diggity, Shailesh', '7 Easton Oval', 'Parsippany', 'NJ', '07054          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (512, 'Armalie, Dennis', '50 East 21St Street', 'Salinas', 'CA', '93907          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (513, 'Miller, Billy', '1123A Kingbolt Circle Dr', 'Castro Valley', 'CA', '94552          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (514, 'Caldwell, Luminita', '170 Big Perry Rd', 'Midlothian', 'VA', '23114          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (515, 'Herrera, Ken', '8231 Princeton Sq Blvd', 'Bridgeton', 'MO', '63044-1785     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (516, 'Tucker, Don', '25 Abenaki Road', 'Charlotte', 'NC', '28211          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (517, 'Nair, Reggie', '4536 Castleton Rd', 'Glastonbury', 'CT', '06033          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (518, 'Yerrapu, Michele', '12892 Glendon Street', 'Falls Church', 'VA', '22043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (519, 'Julien, Gil', '59 Clinton St', 'Countryside', 'IL', '60525-4088     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (520, 'Spencer, Robert', 'P.O. Box 38136', 'Newark', 'NJ', '07106          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (521, 'Giglio, Ric', '319 Krams Avenue', 'Pembroke Pines', 'FL', '33025          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (522, 'Wheatley, Paul', '295 Firstmerit Circle', 'Allen', 'TX', '75002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (523, 'Bommareddy, Richard', '4415 Canoga Ave', 'New York', 'NY', '10016-6702     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (524, 'Vera, Kevin', '9379 '''''''' Street', 'Aurora', 'IL', '60504          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (525, 'Rozenberg, Angela', '1310, Oakcrest Dr.', 'Falls Church', 'VA', '22043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (526, 'Agrawal, Weining', '1435 Chrome Hill Road', 'Chickasha', 'OK', '73018          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (527, 'Grottolo, Satya', '710 1/2 Stark St.', 'Manchester', 'CT', '06040          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (528, 'Malausky, Scott', '14000 Hwy 82W', 'Forest', 'VA', '24551          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (529, 'Erdman, Paul', '5021 Shinnecock Hills Dr. N.W.', 'Dallas', 'TX', '75218          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (530, 'Soucie, Kimberly', '6694 Cottontown Rd', 'Needham', 'MA', '02494          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (531, 'Lance, Al', 'Admn 122', 'Columbia', 'SC', '29223          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (532, 'Pat, Ed', '1601 Bryan St., Suite 27-037', 'Mclean', 'IL', '61754-7541     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (533, 'Brown, Ashwini', '821 S Williams', 'Cullman', 'AL', '35055          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (534, 'Krani, George', '2014 S 102Nd Street, 210 C', 'Maynard', 'MA', '01754          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (535, 'Routhu, Mark', '476 Viola Rd.', 'Franklin', 'T', '37067          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (536, 'Johnson, Wendy', '1223 Cannes Court', 'Mt Horeb', 'WI', '53572          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (537, 'Justme, David', '57 Cheshire Dr', 'Jackson', 'MI', '49202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (538, 'Nevils, William', '1200 N. Market St.', 'Centerville', 'M', '55038          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (539, 'Mills, Richard', '8 Glenford Lane', 'Jacksonville,', 'FL', '32217-4313     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (540, 'Antosca, Andrew', '485 Duane Terrace', 'Ann Arbor', 'MI', '48108          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (541, 'Pao, Sidoneo', '200 Engamore Lane', 'Tallahassee', 'FL', '32315          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (542, 'Nolan, Joseph', '13 N San Marcos Rd', 'Camillus', 'NY', '13031          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (543, 'Otis, Connie', '165 Timmons Road', 'Columbus', 'I', '43231          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (544, 'Val, Zarina begum', '34-38 71St St', 'Plano', 'TX', '75024          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (545, 'Wright, Venkat', '800 Crescent Center Drive, Sui', 'Jamaica', 'NY', '11435          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (546, 'Mullen, Charles', '409 Eleventh St.', 'Parsippany', 'NJ', '07054          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (547, 'Kelly, George', '7852 Ponce Ave', 'Palatine', 'IL', '60074          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (548, 'Humble, Jen', '430 Castle Dr', 'Woodland Hills', 'CA', '91364          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (549, 'Rogers, L', 'P. O.  Box  53167', 'St. Louis', 'MO', '63110          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (550, 'Rivera, Joseph', '12033 Foundation Place', 'Netcong', 'NJ', '07857          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (551, 'Nelsen, Jim', '4251 Parkalwn Ave, # 202', 'Ft Washington', 'MD', '20744          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (552, 'Wilson, Kenneth', '1011 N 26Th', 'West Des Moines', 'IA', '50266          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (553, 'Jackson, Sukumar', '118 Kendrick St.', 'Tampa', 'FL', '33607          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (554, 'Pukala, James', '35 W59Th Street', 'Baltimore', 'MD', '21207          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (555, 'Wen, Wayne', '1950 Franklin Street', 'Vallejo', 'CA', '94590          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (556, 'Smth, Lana', '2567 South 156 Avenue', 'Warren', 'PA', '16365          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (557, 'Landin, Peggy', '3011 Woodloop Ln', 'Phoenix', 'AZ', '85022          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (558, 'Loest, Monica', '14 Locust Grove Road', 'Lenoir', 'NC', '28645          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (559, 'Oliveira, Puli', '3219 S Grace Ave', 'Jersey City', 'NJ', '07302          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (560, 'Bohra, Mark', 'Brgy. 68, San Francisco,', 'Succasunna', 'NJ', '07876          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (561, 'Varner, Sangil', '940 W 131St St', 'Legaspi City', 'PR', '04500          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (562, 'Reinhart, Terry', 'East Hall, Room 7', 'Toronto', 'T', '37415          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (563, 'Kidwell, Suresh', '4005 Brookhaven Club Drive', 'Houston', 'TX', '77269-2370     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (564, 'Hogen, Fausitna', '315 Bart Rd.', 'Leominster', 'MA', '01453          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (565, 'Tamunday, D', '1409,Roper Mountain Road, Apt', 'Hopatcong', 'NJ', '07843          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (566, 'Hunter, Deepa', '1951 Cypress Street', 'Columbia', 'SC', '29201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (567, 'Fuglemsmo, Johnny', '3543 Simpson Ferry Rd', 'Taylor Mill', 'KY', '41015-4124     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (568, 'Schaa, Greg', '821 Azores Cir', 'Austin', 'TX', '78704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (569, 'Oakes, Tyrone', '2383 Akers Mill Road', 'Columbus', 'OH', '43220          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (570, 'Bingham, Robert', '44 Boulder Avenue', 'Birmingham', 'AL', '35215          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (571, 'Paik, Brian', '2000 Westminster Lane', 'Rochester Hills', 'MI', '48307          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (572, 'Smith, Lloyd', '9432 Downing Circle', 'Pullman', 'WA', '99164          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (573, 'Torres, Peter', '1102 North 8Th Street', 'Westminster', 'CO', '80021          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (574, 'Hayes, Dan', 'P.O. Box 777', 'Brooklyn', 'NY', '11235          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (575, 'Jackson, Laura', '3570- C, Meadowglenn Apts', 'Le Mars', 'IA', '51031          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (576, 'Shepherd, Jamie', '1341 East Thacker Street', 'Highlands Ranch', 'CO', '80126          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (577, 'Pluff, Mark', '9420 Key West Avenue', 'Springfield', 'NJ', '07081          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (578, 'Cefalu, George', '19 Winchester St #207', 'Milwaukee', 'WI', '53212          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (579, 'Hines, Enoch', '2416 Westgate Dr', 'Dallas', 'TX', '75201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (580, 'Swartz, Doug', '405 Pattoon St', 'Irving', 'TX', '75039          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (581, 'Mccann, Chris', 'Po Box 9041', 'Omaha', 'NE', '68127          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (582, 'Wilder, Phil', '210 W. Collins', 'Berkeley', 'CA', '94720          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (583, 'Denny, Scott', '707 East Central', 'Oak Park', 'IL', '60301          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (584, 'Brethauer, Rhonda', '108 Copperfield Road', 'St Louis', 'MO', '63101          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (585, 'Heng, Xiaowei', '800 South Washington Street', 'Clarks Summit', 'PA', '18411          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (586, 'Vulman, George', '340 West Miller Street', 'Westminster', 'CO', '80030          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (587, 'Miller, Robyn', '3527 Holmead Pl.', 'Saint Louis', 'MO', '63136          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (588, 'Ibach, Ray', '43155 Wayne Stevens Rd', 'Pompton Plains', 'NJ', '07444          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (589, 'Hubbard, Jill', '128 Pine Hill Avenue', 'Falls Church', 'VA', '22043          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (590, 'Peterson, Arthur', '2682 Southmoore Cove', 'Atlatna', 'GA', '30328          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (591, 'Blow, Raj', '3100 Expressway Apt. 652', 'Livonia', 'MI', '48150          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (592, 'Maltais, Sheri', '3533 Lee Hills Dr.', 'Wyoming', 'MI', '49509          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (593, 'Reeves, Raleigh', '15 Forest Street', 'Eden Prairie', 'M', '55344          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (594, 'Chavan, Rhonda', '518 Commanche Tr.', 'Greensboro', 'NC', '27410          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (595, 'Pineda, Bhargava', '1146-A Easton Ave', 'Olive Branch', 'MS', '38654          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (596, 'Mcmillen, G', 'Po Box 459', 'Kirkland', 'WA', '98033          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (597, 'Hanna, Andrew', '43 Railroad Av', 'Springboro', 'OH', '45066          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (598, 'Foreman, Louis', '138-45 224Th Street', 'Springfield', 'MO', '65804          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (599, 'Bentley, Kieu', '1248 N 119Th St', 'Chicago', 'IL', '60606          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (600, 'Ahmed, Uma', '110 Jay Dr.', 'Polk City', 'IA', '50226          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (601, 'Anderson, Randy', '811 Polo Road', 'Wilmerding', 'PA', '15148          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (602, 'Harrison, Will', '100 Half Day Rd.', 'East Brunswik', 'NJ', '08816          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (603, 'Lind, Bryon', '219 Grenadier Drive', 'Safety Harbor', 'FL', '34695          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (604, 'Guzman, Robert', '194 Crofton Drive', 'Evans', 'GA', '30809          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (605, 'Bathwater, Venkatesh', '605 Suwannee St.', 'Burlingame', 'CA', '94010          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (606, 'Hester, Robert', '1 Constitution Way', 'Baltimore', 'MD', '21244          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (607, 'Gross, Ranji', '26 Mist Hill Drive', 'Madison', 'SD', '57042          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (608, 'Mukhopadhyay, Kondal rao', '43 Huntington St', 'Herndon', 'VA', '20170          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (609, 'Ranieri, Rich', '118 Huntington Street', 'Houston', 'TX', '77096          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (610, 'Young, James', '6368 Andrews Dr W', 'Buffalo', 'NY', '14203          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (611, 'Coleman, Carl', '30 S. Wacker Dr', 'Dallas', 'TX', '75248          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (612, 'Avula, Glenn', '650 South Front St.', 'Matthews', 'NC', '28104          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (613, 'Chen, Mary', '22 Pleasant Street', 'Baltimore', 'MD', '21214          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (614, 'Hinkley, Martha', '2111 E. 37Th St. N.', 'Woodland Hills', 'CA', '91367          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (615, 'Matte, Kris', '1225 Nw Cooke Ave', 'Austin', 'TX', '78148          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (616, 'Galvis, Mike', '4015 Buckingham Road', 'Alexandria', 'VA', '22311          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (617, 'Dennis, Larry', '900 Mickley Rd', 'Lafayette', 'LA', '70506          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (618, 'Murray, Teresa', '1200 Corporate Systems Center', 'St. Louis', 'MO', '63103          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (619, 'Prakash, Richie', '26 Corporate Hill Dr.', 'Carmichael', 'CA', '95608          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (620, 'Buntin, Ravikumar', '5087 Sheridan Dr.', 'Grand Forks', 'ND', '58201          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (621, 'Rehm, Robert', '1900 E. Oakland St.', 'Cedar Falls', 'IA', '50613          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (622, 'Sherman, Steve', '1800 Longcreek Dr.', 'Berwyn', 'IL', '60402          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (623, 'Bryant, Shilpa', '21 Meadow Rd.', 'Auburn Hills', 'MI', '48326          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (624, 'Miranda, Bob', '154 Apt # H', 'Carmel', 'I', '46032          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (625, 'Giragani, Michelle', '2335 Saint Albans Place', 'North Wales', 'PA', '19454          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (626, 'Aronov, Mark', '1000 Cherry Lane', 'Mesa', 'PA', '85310          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (627, 'Anto, John', '3500 Savannah Park Ln.', 'Alpharetta', 'GA', '30022          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (628, 'Mavraedis, Charles', '1-205 Lamoine Village', 'Cypress', 'TX', '77429          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (629, 'Tankkar, Boris', '1049 Creek Hollow Lane', 'Albany', 'NY', '12203          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (630, 'Blick, Mark', '1335 Bradyville Pike Apt F206', 'Hopkins', 'M', '55343          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (631, 'Mansir, Theresa', '312 Bishop Rd', 'Greenvile', 'SC', '29615          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (632, 'Yang, Daniel', '343 Peach Rd', 'Queens', 'NY', '11362          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (633, 'Phillips, Louis', '90-19 211Th Street', 'Salisbury', 'MD', '21802          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (634, 'Fannin, P.', '5000 Ellin Rd', 'Mitchellville', 'MD', '20721          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (635, 'Kondratieff, Bill', 'P.O.Box 245', 'Omaha', 'NE', '68103-0777     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (636, 'May, Joann', 'Po Box 645910', 'Starkville', 'MS', '39759          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (637, 'Wainscott, Brent', '1129 Treeside Ln', 'Mahwah', 'NJ', '07430          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (638, 'Akkiraju, Mike', '3811 N. Bell', 'Hazlet', 'NJ', '07730          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (639, 'Davis, Frank', '2222 Welborn St.', 'Milwaukee', 'WI', '53202          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (640, 'Zaslavskaya, Alok', '2850 24Th Avenue', 'Hacienda Heights', 'CA', '91745          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (641, 'Burgess, Jonathan', '5909 Birchbrook', 'Grand Prairie', 'TX', '75050          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (642, 'Hall, Wayne', '6 Reservoir Drive', 'Columbia', 'T', '38401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (643, 'Lee, Cindy', '1000 Middle St', 'Flushing', 'NY', '11354          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (644, 'Grimm, jr., Ramanathan', '20 Bernard Road', 'Barrington', 'IL', '60010          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (645, 'Cable, Clay', '1463 Timber Ridge Court', 'Gilbert', 'AZ', '85233          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (646, 'Alderman, James', '6405 N Mokane Ct', 'Columbia', 'MD', '21046          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (647, 'Ivy, Erika', '10433 Sunnybrook Circle', 'Baltimore', 'MD', '21207          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (648, 'Kota, Connie', '400 Sir Walter Drive', 'Willingboro', 'NJ', '08046          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (649, 'Deb, Pio', '3855 Blair Mill Rd', 'Mentor', 'OH', '44060          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (650, 'Salazar, Joel', '1601 1St Ave.', 'El Segundo', 'CA', '90245-3803     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (651, 'Lynn, Nelson', '1945 Lindenwood', 'Brooklyn', 'NY', '11219          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (652, 'Dunn, Ole', '317 Main Street - Info Sys', 'Birmingham', 'AL', '35288          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (653, 'Meadows, Joy', '1429 Senate Street', 'Sacramento', 'CA', '95818          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (654, 'Milliano, Chuan hwa', '2150 Wenlok Trail', 'Chicago', 'IL', '60615          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (655, 'Kamble, Keith', '27473 Audrey', 'Carrollton', 'TX', '75006          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (656, 'Lee, Valerie', '1381 Anderson Avenue', 'Sacramento', 'CA', '95814          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (657, 'Jachimski, Myron', '8000 Utopia', 'Glendale', 'AZ', '85302          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (658, 'Zavrotny, Lisa', '4905 Muirwood Dr', 'Glen Allen', 'VA', '23030          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (659, 'Lee, Jeff', '32 Gatehouse Lane', 'Roseville', 'CA', '95829          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (660, 'Weckbecker, Asoka', '4556 Shadowridge Dr', 'Cincinnati', 'OH', '45238          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (661, 'Ritzcovan, Toocee', '2828 Tudor Court', 'West Allis', 'WI', '53227          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (662, 'Chogyoji, Rahul', '2100 Nursery Rd Apt E1', 'Whitehall', 'PA', '18052          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (663, 'Vengala, Kim', '110 Kope Ave', 'Oklahoma City', 'OK', '73112          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (664, 'Turnquist, Sharon', '1222 N. Fieldcrest St.', 'Stephenville', 'TX', '76401          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (665, 'Rodriguez, Earlene', '537 Mansfield Village', 'Jackson', 'MS', '39217          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (666, 'Wu, Jeffrey', '4800 Regent Blvd', 'Como', 'TX', '75431          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (667, 'Amoroso, Hazel-ann', '5114 Walnut Haven Ln', 'Tallahassee', 'FL', '32362          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (668, 'Keeble, John', '71 Hanover Rd', 'Louisville', 'KY', '43215          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (669, 'Bozonelos, Pulkit', '3330 N. Causeway Blvd.', 'Las Vegas', 'NV', '89117          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (670, 'Cadle, Michael', '572 Brook Street', 'Van Wert', 'OH', '45891          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (671, 'Patel, Ramesh', '194 Wood Ave, South', 'San Diego', 'CA', '92126          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (672, 'Slivkoff, Scott', 'P.O. Box 524', 'Summerville', 'SC', '29483          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (673, 'Krish, Munish', '451 N. Lake Ave.', 'Cedar Rapids', 'IA', '52404          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (674, 'Arumugam, Hemant', '4075, Pineset Drive', 'Dallas', 'TX', '75132          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (675, 'Franklin, Cesar', '5260 Winchester Road', 'Schaumburg', 'IL', '60173          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (676, 'Nguyen, Ram', '1006 Gardens Place', 'Decatur', 'GA', '30030          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (677, 'Carroll, Sam', '9379 N Street', 'Long Beach', 'CA', '90806          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (678, 'Shaw, Warren', '1741 E. Robin Lane', 'Washington', 'DC', '20002          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (679, 'Powell, Tony', '128 Westridge Dr', 'Latham', 'NY', '12110          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (680, 'Warner, Bala', 'Po Box 335', 'West Hartford', 'CT', '06119          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (681, 'Vera, Anbusekaran', '526 Hunterdale Road', 'Columbus', 'OH', '43231          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (682, 'Oneil, Ri', '7961 Inwood Ln', 'Olympia', 'WA', '98504-3123     ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (683, 'Condron, Michael', '866 Butternut Dr.', 'Salinas', 'CA', '93901          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (684, 'Yu, Hemant', '19621 Portsmouth Drive', 'Lanham', 'MD', '20706          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (685, 'Dutton, Philip', '225 Summit Avenue', 'Dacula', 'GA', '30019          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (686, 'Kumar, Manoj', '756 Crocus Lane', 'Charlotte', 'NC', '28269          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (687, 'Wolff, Ken', '820 Club Chase Ct.', 'Edison', 'NJ', '08837          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (688, 'Collier, Dan', '7212 Dalewood Dr.', 'Duluth', 'GA', '30097          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (689, 'Jerome, Beverly', '3206 Greenhollow Dr', 'Metuchen', 'NJ', '08840          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (690, 'Leonnig, Timothy', '1802 Bel Air Dr', 'Columbus', 'OH', '43229          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (691, 'Mceachen, Art', '4204 Greencastle Ct.  102', 'Spring', 'TX', '77373          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (692, 'Czarnik, Mark', '480 Valley Rd., A15', 'Mankato', 'M', '56001          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (694, 'Lowe, Doug', '3251 W. Ellery', 'Fresno', 'CA', '93711          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (696, 'Smith, Lawrence', '2883 Sicamore Street', 'Fresno', 'CA', '93711          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (697, 'Wilson, Wilson', '4288 Maple', 'Fresno', 'CA', '93711          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (698, 'Blake, John', '388 Sicamore', 'Fresno', 'CA', '93704          ');
INSERT INTO Customers (CustomerID, Name, Address, City, State, ZipCode) VALUES (699, 'Wilkins, Adrian', '488 Maple', 'Fresno', 'CA', '92707          ');


-- 1. Insert Categories
INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Clothing'),
('Home Goods');


-- 2. Insert Products
INSERT INTO Products (ProductName, Price, StockQuantity, CategoryID) VALUES
('Laptop', 999.99, 15, 1),
('Smartphone', 699.99, 30, 1),
('T-Shirt', 19.99, 100, 2),
('Jeans', 49.99, 50, 2),
('Coffee Maker', 89.99, 20, 3);


-- 3. Insert Customers
INSERT INTO Customers (Name, Address, City, State, ZipCode)
VALUES
('Alice Smith', '123 Pine St', 'Portland', 'ME', '04101'),
('Bob Jones', '456 Oak Rd', 'Bangor', 'ME', '04401');


-- 4. Insert Orders
INSERT INTO Orders (OrderDate, CustomerID) VALUES
('2026-07-25', 1), -- Alice's Order
('2026-07-26', 2); -- Bob's Order


-- 5. Insert Order Details (What they actually bought)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1), -- Alice bought 1 Laptop
(1, 3, 2), -- Alice bought 2 T-Shirts
(2, 2, 1), -- Bob bought 1 Smartphone
(2, 5, 1); -- Bob bought 1 Coffee Maker


-- Queries


-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display customer names and cities
SELECT Name, City
FROM Customers;

-- 3. Find customers from North Carolina
SELECT *
FROM Customers
WHERE State = 'NC';

-- 4. Find customers from California
SELECT *
FROM Customers
WHERE State = 'CA';

-- 5. Count total customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- 6. Count customers by state
SELECT State, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY State
ORDER BY TotalCustomers DESC;

-- 7. Count customers by city
SELECT City, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
ORDER BY TotalCustomers DESC;

-- 8. Find duplicate cities
SELECT City, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 1;

-- 9. Sort customers by name
SELECT *
FROM Customers
ORDER BY Name;

-- 10. Sort customers by state and city
SELECT *
FROM Customers
ORDER BY State, City;

-- 11. Display first 10 customers
SELECT *
FROM Customers
LIMIT 10;

-- 12. Find customers whose name starts with 'J'
SELECT *
FROM Customers
WHERE Name LIKE 'J%';

-- 13. Find customers whose city contains 'York'
SELECT *
FROM Customers
WHERE City LIKE '%York%';

-- 14. Display unique states
SELECT DISTINCT State
FROM Customers
ORDER BY State;

-- 15. Display unique cities
SELECT DISTINCT City
FROM Customers
ORDER BY City;

-- 16. Count customers by ZIP code
SELECT ZipCode, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY ZipCode
ORDER BY TotalCustomers DESC;

-- 17. Find customers with ZIP codes starting with 28
SELECT *
FROM Customers
WHERE ZipCode LIKE '28%';

-- 18. Count customers whose city starts with 'B'
SELECT COUNT(*) AS TotalCustomers
FROM Customers
WHERE City LIKE 'B%';

-- 19. Find customers from Texas and California
SELECT *
FROM Customers
WHERE State IN ('TX', 'CA');

-- 20. Find customers not from California
SELECT *
FROM Customers
WHERE State <> 'CA';

SELECT * FROM Customers;




