CREATE TABLE dione_txn_details (ID  SERIAL NOT NULL, WALLET_ID TEXT NOT NULL, created_at TIMESTAMP WITH TIME ZONE, Merchant TEXT NOT NULL, Description TEXT NOT NULL, User_Age INTEGER, update_at TIMESTAMP WITH TIME ZONE, PRIMARY KEY (ID));


--Sample data (we can move to mock.sql)
INSERT INTO dione_txn_details (WALLET_ID,created_at,Merchant,Description,User_Age,update_at) VALUES ('XYZ001',now(),'Lucky','Grocery',32,now());