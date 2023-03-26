---------------CREATE USER-----------------

create user JUNIOR_ADMIN identified by Parkerhill#13;
create user INVENTORY_MANAGER identified by Parkerhill#13;
create user SUPPLIER identified by Parkerhill#13;
create user CUSTOMER identified by Parkerhill#13;

-------------GRANT PERMISSION TO USER-----------------------
GRANT CONNECT , CREATE SESSION TO JUNIOR_ADMIN;
GRANT CONNECT , CREATE SESSION TO INVENTORY_MANAGER;
GRANT CONNECT , CREATE SESSION TO SUPPLIER;
GRANT CONNECT , CREATE SESSION TO CUSTOMER;

alter user JUNIOR_ADMIN quota 5M on data;
alter user INVENTORY_MANAGER quota 5M on data;

----------------JUNION ADMIN---------------------------------
GRANT UPDATE, SELECT ON CUSTOMER TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON ADMIN TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON SUPPLIERS TO JUNIOR
GRANT UPDATE, SELECT ON STOCK TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON PRODUCT_SALE TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON CUSTOMER_TRANSACTION TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON SUPPLIER_TRANSACTION TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON RETURN_TRANSACTION TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON RETURN_PRODUCT_SALE TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON CUSTOMER_INFORMATION TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON CUSTOMER_TRANSACTION_HISTORY TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON PRODUCT_SALE_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON RETURN_TRANSACTION_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON RETURN_SALE_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON ADMIN_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON STOCK_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON SUPPLIER_VIEW TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON DAILY_SALES_REPORT TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON MONTHLY_SALES_REPORT TO JUNIOR_ADMIN;
GRANT UPDATE, SELECT ON TOP_SELLING_PRODUCT_REPORT TO JUNIOR_ADMIN;


---------------INVENTORY MANAGER-------------------------------

GRANT UPDATE ON CUSTOMER TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON STOCK TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON PRODUCT_SALE TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON CUSTOMER_TRANSACTION TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON SUPPLIER_TRANSACTION TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON RETURN_TRANSACTION TO INVENTORY_MANAGER;
GRANT UPDATE, SELECT ON RETURN_PRODUCT_SALE TO INVENTORY_MANAGER;
GRANT SELECT ON PRODUCT_SALE_VIEW TO INVENTORY_MANAGER;
GRANT SELECT ON RETURN_TRANSACTION_VIEW TO INVENTORY_MANAGER;
GRANT SELECT ON RETURN_SALE_VIEW TO INVENTORY_MANAGER;
GRANT SELECT ON STOCK_VIEW TO INVENTORY_MANAGER;
GRANT SELECT ON SUPPLIER_VIEW TO INVENTORY_MANAGER;
GRANT SELECT ON MONTHLY_SALES_REPORT TO INVENTORY_MANAGER;
GRANT SELECT ON TOP_SELLING_PRODUCT_REPORT TO INVENTORY_MANAGER;


---------------------SUPPLIER---------------------------------

GRANT SELECT ON SUPPLIERS TO SUPPLIER;
GRANT SELECT ON STOCK TO SUPPLIER;
GRANT SELECT ON PRODUCT_SALE TO SUPPLIER;
GRANT SELECT ON SUPPLIER_TRANSACTION TO SUPPLIER;
GRANT SELECT ON SUPPLIER_VIEW TO SUPPLIER;

-------------------CUSTOMER----------------------------------

GRANT SELECT ON STOCK TO CUSTOMER;
GRANT SELECT ON PRODUCT_SALE TO CUSTOMER;
GRANT SELECT ON CUSTOMER_TRANSACTION TO CUSTOMER;
GRANT SELECT ON RETURN_TRANSACTION TO CUSTOMER;
GRANT SELECT ON RETURN_PRODUCT_SALE TO CUSTOMER;
GRANT SELECT ON CUSTOMER_INFORMATION TO CUSTOMER;
GRANT SELECT ON CUSTOMER_TRANSACTION_HISTORY TO CUSTOMER;
GRANT SELECT ON RETURN_TRANSACTION_VIEW TO CUSTOMER;
GRANT SELECT ON TOP_SELLING_PRODUCT_REPORT TO CUSTOMER;
