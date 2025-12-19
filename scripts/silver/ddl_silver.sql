DROP TABLE IF EXISTS crm_cust_info;
create table silver.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
-- (correcting spelling error from material to marital)
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date date,
dwh_create_date datetime2 default getdate()
);

DROP TABLE IF EXISTS silver.crm_prd_info;
create table silver.crm_prd_info(
prd_id int,
cat_id nvarchar(50),
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt date,
prd_end_dt date,
dwh_create_date datetime2 default getdate()
);

DROP TABLE IF EXISTS silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details (
    sls_ord_num      nvarchar(50),
    sls_prd_key      nvarchar(50),
    sls_cust_id      int,
    sls_order_dt     date,
    sls_ship_dt      date,
    sls_due_dt       date,
    sls_sales        int,
    sls_quantity     int,
    sls_price        int,
    dwh_create_date datetime2 default getdate()
);
DROP TABLE IF EXISTS silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12 (
    CID    Varchar(100),
    BDATE  DATE,
    GEN    VARCHAR(10),
    dwh_create_date datetime2 default getdate()
);
DROP TABLE IF EXISTS erp_loc_a101;
CREATE TABLE silver.erp_loc_a101 (
    CID    VARCHAR(50),
    CNTRY  VARCHAR(50),
    dwh_create_date datetime2 default getdate()
);
DROP TABLE IF EXISTS erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2 (
    ID           VARCHAR(20),
    CAT          VARCHAR(50),
    SUBCAT       VARCHAR(50),
    MAINTENANCE  VARCHAR(50),
    dwh_create_date datetime2 default getdate()
);
