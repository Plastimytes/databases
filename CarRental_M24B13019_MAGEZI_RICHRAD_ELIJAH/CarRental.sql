CREATE TABLE vehicle(
    VehicleID INT AUTO_INCREMENT,
    VehicleYear VARCHAR(50),
    VehicleMileage VARCHAR(255),
    RentalStatus VARCHAR(45),
    PRIMARY KEY (VehicleID)
);

CREATE TABLE Customer(
    CustomerID INT AUTO_INCREMENT,
    CustomerName VARCHAR(255) UNIQUE NOT NULL,
    Contact VARCHAR(20),
    RentalHistory VARCHAR(45),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE RentalOrganisation(
    RentalID INT AUTO_INCREMENT,
    RentalDuration DATE,
    PaymentStatus  TEXT,
    LateReturnFine VARCHAR(45),
    PRIMARY KEY (RentalID)
);

CREATE TABLE vehicle_maintenance(
    MaintenanceID INT AUTO_INCREMENT,
    MaintenanceHistory  TEXT,
    VehicleCondition  TEXT,
    VehicleAccidentRecords TEXT,
    PRIMARY KEY (MaintenanceID)
);

CREATE TABLE Affiliated_Companies(
    AffiliatedCompanyID INT AUTO_INCREMENT,
    AffiliatedCompanyName VARCHAR(50),
    AffiliatedCompanyRelation VARCHAR(255),
    PRIMARY KEY (AffiliatedCompanyID)
);

CREATE TABLE Prices_discounts_and_promotions(
    Prices_discounts_and_promotionsID INT AUTO_INCREMENT,
    Discount_Rates VARCHAR(45),
    Holiday_and_promotion_rates VARCHAR(255),
    PRIMARY KEY (Prices_discounts_and_promotionsID)
);

CREATE TABLE Rent_Vehicle(
    VehicleID INT,
    CustomerID INT,
    RentalID INT,
    MaintenanceID INT,
    AffiliatedCompanyID INT,
    Prices_discounts_and_promotionsID INT,
    FOREIGN KEY(VehicleID) REFERENCES vehicle(VehicleID),
    FOREIGN KEY (CustomerID ) REFERENCES customer(customerID),
    FOREIGN KEY (RentalID) REFERENCES RentalOrganisation(RentalID)
);

INSERT INTO vehicle(VehicleYear, VehicleMileage, RentalStatus )
 VALUES ('2004', '126778', 'Avaible'),
 ('1995', '7899', 'In Use'),
  ('2008', '345', 'Available');
SELECT * FROM vehicle;


INSERT INTO Customer(CustomerName, Contact, RentalHistory)
 VALUES ('Mugenyi Deogracious', '078824534','Good'),
 ('Ssentamu Alosiuos', '07546789','Bad'),
  ('Birungi Anna', '077235677','Fair');

SELECT * FROM Customer;

INSERT INTO RentalOrganisation(RentalDuration, PaymentStatus, LateReturnFine)
 VALUES ('2/10/12-12/9/13', 'FINISHED', 'NONE'),
 ('2/1/12-12/9/13', 'PENDING', '50000'),
  ('1/10/11-12/9/12', 'PENDING', '2000');

SELECT * FROM RentalOrganisation;

INSERT INTO vehicle_maintenance( MaintenanceHistory, VehicleCondition, VehicleAccidentRecords)
 VALUES ('GOOD', 'STILL ROAD WORTHY', 'FEW'),
 ('BAD', 'NEEDS REPAIR', 'TOO MANY'),
  ('FAIR', 'NEEDS CHECKING', 'NONE');

 SELECT * FROM vehicle_maintenance; 

INSERT INTO Affiliated_Companies(AffiliatedCompanyName, AffiliatedCompanyRelation)
 VALUES ('AMOS AND SONS GARAGE', 'MAINTENANCE AND REPAIR CONTRACTOR'),
 ('FULLMAN EVENT PLANNERS', 'REGULAR CUSTOMER'),
  ('DRIVER AUTO SPARES', 'SPARE PART SUPPLIERS');

SELECT * FROM Affiliated_Companies;   

INSERT INTO Prices_discounts_and_promotions( Discount_Rates, Holiday_and_promotion_rates)
 VALUES ('10%', 'NONE'),
 ('15%', '30%'),
  ('40%', '60%');

SELECT * FROM Prices_discounts_and_promotions;   

SHOW TABLES;
