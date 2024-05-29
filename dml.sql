-------- CUSTOMER DATA INSERTION --------
INSERT INTO Customer 
VALUES ('C01','ALI','71321009');

INSERT INTO Customer 
VALUES ('C02','ASMA','77345823');

-------- PRODUCT DATA INSERTION --------
INSERT INTO Product 
VALUES ('P01','Samsung Galaxy S20','Smartphone',3299);

INSERT INTO Product 
VALUES ('P02','ASUSU Notebook','PC',4599);

-------- ORDERS DATA INSERTION --------
INSERT INTO Orders (Custumer_id, Product_id, Quantity, total_amount)
VALUES ('C01','P01',2,9198);

INSERT INTO Orders 
VALUES ('C02','P02','28/05/2020',1,3299);