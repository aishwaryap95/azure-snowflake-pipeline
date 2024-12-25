--1st section starts = Storage integration with azure storage account

CREATE OR REPLACE STORAGE INTEGRATION azure_riverstonedist_integration
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = AZURE
ENABLED = TRUE
AZURE_TENANT_ID = '..'
STORAGE_ALLOWED_LOCATIONS =
('azure://riverstonediststg.blob.core.windows.net/landing/');

DESCRIBE INTEGRATION azure_riverstonedist_integration

--clicked on consent link to establish connection from ADLS to snowflake
--``nycw9rsnowflakepacint``_1734837515964 = AZURE_MULTI_TENANT_APP_NAME


--2nd section starts = Create external stage
use riverstonedist_db.bronze

CREATE OR REPLACE STAGE adls_stage
STORAGE_INTEGRATION = azure_riverstonedist_integration
URL = 'azure://riverstonediststg.blob.core.windows.net/landing/' 

ls @adls_stage


