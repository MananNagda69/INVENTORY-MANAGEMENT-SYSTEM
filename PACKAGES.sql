CREATE OR REPLACE EDITIONABLE PACKAGE CUSTOMER_PKG
AS

PROCEDURE INSERT_CUSTOMER
    (
    p_customer_id IN CUSTOMER.customer_id%TYPE,
    p_cus_f_name IN CUSTOMER.cus_f_name%TYPE,
    p_cus_l_name IN CUSTOMER.cus_l_name%TYPE,
    p_cus_dob IN CUSTOMER.cus_dob%TYPE,
    p_cus_since IN  CUSTOMER.cus_since%TYPE,
    p_cus_gender  IN CUSTOMER.cus_gender%TYPE,
    p_cus_contact_no IN CUSTOMER.cus_contact_no%TYPE,
    p_cus_alternate_no IN CUSTOMER.cus_alternate_no%TYPE,
    p_cus_email_id IN CUSTOMER.cus_email_id%TYPE,
    p_cus_address_1 IN CUSTOMER.cus_address_1%TYPE,
    p_cus_address_2 IN CUSTOMER.cus_address_2%TYPE,
    p_cus_city IN CUSTOMER.cus_city%TYPE,
    p_cus_state IN CUSTOMER.cus_state%TYPE,
    p_cus_country IN CUSTOMER.cus_country%TYPE,
    p_cus_zip IN CUSTOMER.cus_zip%TYPE);

PROCEDURE UPDATE_CUSTOMER(
    p_customer_id IN CUSTOMER.customer_id%TYPE,
    p_cus_f_name IN CUSTOMER.cus_f_name%TYPE,
    p_cus_l_name IN CUSTOMER.cus_l_name%TYPE,
    p_cus_dob IN CUSTOMER.cus_dob%TYPE,
    p_cus_since IN CUSTOMER.cus_since%TYPE,
    p_cus_gender  IN CUSTOMER.cus_gender%TYPE,
    p_cus_contact_no IN CUSTOMER.cus_contact_no%TYPE,
    p_cus_alternate_no IN CUSTOMER.cus_alternate_no%TYPE,
    p_cus_email_id IN CUSTOMER.cus_email_id%TYPE,
    p_cus_address_1 IN CUSTOMER.cus_address_1%TYPE,
    p_cus_address_2 IN CUSTOMER.cus_address_2%TYPE,
    p_cus_city IN CUSTOMER.cus_city%TYPE,
    p_cus_state IN CUSTOMER.cus_state%TYPE,
    p_cus_country IN CUSTOMER.cus_country%TYPE,
    p_cus_zip IN CUSTOMER.cus_zip%TYPE);
    
PROCEDURE DELETE_CUSTOMER
               ( p_customer_id IN CUSTOMER.customer_id%TYPE);

END CUSTOMER_PKG;

CREATE OR REPLACE EDITIONABLE PACKAGE ADMIN_PKG
AS
PROCEDURE INSERT_ADMIN
(
                    p_ADMIN_ID IN ADMIN.ADMIN_ID%TYPE,
                    p_ADMIN_F_NAME IN ADMIN.ADMIN_F_NAME%TYPE,
                    p_ADMIN_L_NAME IN ADMIN.ADMIN_L_NAME%TYPE,
                    p_ADMIN_DOB IN ADMIN.ADMIN_DOB%TYPE,
                    p_ADMIN_SINCE	IN ADMIN.ADMIN_SINCE%TYPE,
                    p_ADMIN_EMAIL_ID	IN ADMIN.ADMIN_EMAIL_ID%TYPE,
                    p_ADMIN_CONTACT_NO IN ADMIN.ADMIN_CONTACT_NO%TYPE
);

PROCEDURE UPDATE_ADMIN
(
                    p_ADMIN_ID IN ADMIN.ADMIN_ID%TYPE,
                    p_ADMIN_F_NAME IN ADMIN.ADMIN_F_NAME%TYPE,
                    p_ADMIN_L_NAME IN ADMIN.ADMIN_L_NAME%TYPE,
                    p_ADMIN_DOB IN ADMIN.ADMIN_DOB%TYPE,
                    p_ADMIN_SINCE	IN ADMIN.ADMIN_SINCE%TYPE,
                    p_ADMIN_EMAIL_ID	IN ADMIN.ADMIN_EMAIL_ID%TYPE,
                    p_ADMIN_CONTACT_NO IN ADMIN.ADMIN_CONTACT_NO%TYPE
);

PROCEDURE DELETE_ADMIN
(p_ADMIN_id IN ADMIN.ADMIN_id%TYPE);


END ADMIN_PKG;


CREATE OR REPLACE PACKAGE CUSTOMER_TRANSACTION_PKG 
AS
PROCEDURE CUSTOMER_TRANSACTION_PRO
(               P_ORDER_NUMBER	IN CUSTOMER_TRANSACTION.ORDER_NUMBER%TYPE,
                P_ORDER_CUS_ID	IN CUSTOMER_TRANSACTION.ORDER_CUS_ID%TYPE,
                P_ORDER_DATE	IN CUSTOMER_TRANSACTION.ORDER_DATE%TYPE ,
                P_ORDER_PAYMENT_METHOD	IN CUSTOMER_TRANSACTION.ORDER_PAYMENT_METHOD%TYPE
);

PROCEDURE CUSTOMER_PRODUCT
(                           p_SALE_ID NUMBER,
                            p_ORDER_NUMBER NUMBER,
                            p_SALE_STOCK_ID NUMBER,
                            p_ORDER_QTY NUMBER
                            
);

END CUSTOMER_TRANSACTION_PKG ;
