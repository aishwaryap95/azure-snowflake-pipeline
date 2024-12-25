create schema silver
use riverstonedist_db.silver

CREATE TABLE IF NOT EXISTS silver.customer (
    customer_id INT,
    name STRING,
    email STRING,
    country STRING,
    customer_type STRING,
    registration_date DATE,
    age INT,
    gender STRING,
    total_purchases INT,

    last_updated_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS silver.product (
      product_id INT,
      name STRING,
      category STRING,
      brand STRING,
      price FLOAT,
      stock_quantity INT,
      rating FLOAT,
      is_active BOOLEAN,
      
      last_updated_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS silver.orders (
      customer_id INT,
      payment_method STRING,
      product_id INT,
      quantity INT,
      store_type STRING,
      total_amount DOUBLE,
      transaction_date DATE,
      transaction_id STRING,
      
      last_updated_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
