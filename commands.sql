CREATE DATABASE tasty_bytes_dbt_db;
CREATE SCHEMA tasty_bytes_dbt_db.integrations;
CREATE OR REPLACE SCHEMA tasty_bytes_dbt_db.dev;
CREATE OR REPLACE SCHEMA tasty_bytes_dbt_db.prod;

CREATE WAREHOUSE tasty_bytes_dbt_wh WAREHOUSE_SIZE = SMALL;

ALTER SCHEMA tasty_bytes_dbt_db.dev SET LOG_LEVEL = 'INFO';
ALTER SCHEMA tasty_bytes_dbt_db.dev SET TRACE_LEVEL = 'ALWAYS';
ALTER SCHEMA tasty_bytes_dbt_db.dev SET METRIC_LEVEL = 'ALL';

ALTER SCHEMA tasty_bytes_dbt_db.prod SET LOG_LEVEL = 'INFO';
ALTER SCHEMA tasty_bytes_dbt_db.prod SET TRACE_LEVEL = 'ALWAYS';
ALTER SCHEMA tasty_bytes_dbt_db.prod SET METRIC_LEVEL = 'ALL';