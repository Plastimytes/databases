Create DATABASE bsit_;

USE BSIT;
CREATE TABLE PATIENT_(
    PID CHAR(4),
    Pname VARCHAR(255),
    Address VARCHAR(255),
    Fees INT(20),
    PRIMARY KEY (PID)
);

INSERT INTO PATIENT_(PID, Pname, Address, Fees)
 VALUES ('P001','Tom', 'Kampala', '40000'),
  ('P002','Agaba', 'Entebbe', '16000');
INSERT INTO PATIENT_(PID, Pname, Address, Fees)
 VALUES ('P003','Tom', 'Kampala', '20000'),
  ('P004','Timo', 'Null', '40000'),
  ('P005','Simon', 'Entebbe', '60000');

SELECT * FROM PATIENT_;  

ALTER TABLE PATIENT_ ADD Doctor_ID CHAR(4);

CREATE VIEW View_b AS SELECT * FROM PATIENT_ WHERE Address ="Kampala"

CREATE VIEW View_c AS SELECT  Address, SUM(Fees) AS Total_Fees FROM PATIENT_ GROUP BY Address;

CREATE VIEW View_d AS SELECT * FROM PATIENT_ WHERE CHAR_LENGTH(Pname)=4;

ALTER TABLE PATIENT_ MODIFY Pname VARCHAR(60);

