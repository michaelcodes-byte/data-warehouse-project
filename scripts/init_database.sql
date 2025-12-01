/*
=================================================================
Create schemas
=================================================================
script purpose:
  This script creates a new database named "DataWarehouse"
  It also creates 3 others named bronze, silver, and gold
*/

CREATE SCHEMA Data_Warehouse;
use data_warehouse;
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
