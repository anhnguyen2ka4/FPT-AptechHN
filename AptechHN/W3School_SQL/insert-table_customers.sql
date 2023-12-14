USE Customers_table
GO

SET IDENTITY_INSERT customers ON;

INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(1,'Alfres Futterkiste','Maria Ander','Obere Str. 57','Berlin'  ,'12250','Germany')
INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(2,'Anbert Anhxtanh'   ,'Anhxtanh'   ,'Wall Street'  ,'New York','65404','American')
INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(3,'Ho Chi Minh' ,'Bac Ho'   ,'Nam Dan'  ,'Nghe An','100000','Viet Nam')
INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(4,'Lep-ton-xtoi'   ,'Lep'   ,'Babylon Garden'  ,'Ai Captian','404','Ai Cap')
INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(5,'Error and Bug'   ,'Fix Bug'   ,'Programming'  ,'Code','99999','Database')
INSERT INTO customers(customer_id,customer_name,contact_name,c_address,city,postal_code,country) VALUES(6,'Roman'   ,'kaka'   ,'Sideres'  ,'Shang hai','686868','China')

SET IDENTITY_INSERT customers OFF;