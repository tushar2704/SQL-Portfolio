# Sales_Report_DB
# Schema & Tables
# © 2023 Tushar Aggarwal. All rights reserved.
# Importing required Libraries
import sqlite3
import datetime
import random
#/* ======================= TABLES ========================*/
# Creating the tables
create_sales_table = '''CREATE TABLE sales (
                        sale_id INTEGER PRIMARY KEY,
                        sale_date DATE,
                        customer_id INTEGER,
                        product_id INTEGER,
                        quantity INTEGER,
                        unit_price DECIMAL(10, 2),
                        total_price DECIMAL(10, 2),
                        FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
                        FOREIGN KEY (product_id) REFERENCES products(product_id)
                     )'''

create_products_table = '''CREATE TABLE products (
                            product_id INTEGER PRIMARY KEY,
                            product_name TEXT,
                            unit_cost DECIMAL(10, 2)
                         )'''

create_customers_table = '''CREATE TABLE customers (
                            customer_id INTEGER PRIMARY KEY,
                            first_name TEXT,
                            last_name TEXT,
                            email TEXT,
                            phone TEXT
                         )'''

#Inserting sample data into the tables
insert_products_data = '''INSERT INTO products (product_name, unit_cost) VALUES (?, ?)'''

insert_sales_data = '''INSERT INTO sales (sale_date, customer_id, product_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?, ?)'''

insert_customers_data = '''INSERT INTO customers (first_name, last_name, email, phone) VALUES (?, ?, ?, ?)'''

#Data for the products and customers tables
products = [('Product A', 50.00), ('Product B', 25.00), ('Product C', 75.00), ('Product D', 40.00), ('Product E', 60.00)]

customers = [
    ('John', 'Doe', 'johndoe@example.com', '555-1234'),
    ('Jane', 'Doe', 'janedoe@example.com', '555-5678'),
    ('Bob', 'Smith', 'bobsmith@example.com', '555-9012'),
    ('Alice', 'Jones', 'alicejones@example.com', '555-3456'),
    ('David', 'Brown', 'davidbrown@example.com', '555-7890'),
    ('Emily', 'Davis', 'emilydavis@example.com', '555-2345'),
    ('Frank', 'Wilson', 'frankwilson@example.com', '555-6789'),
    ('Grace', 'Lee', 'gracelee@example.com', '555-1234'),
    ('Henry', 'Chen', 'henrychen@example.com', '555-5678'),
    ('Isabel', 'Garcia', 'isabelgarcia@example.com', '555-9012')
]

# Start and end dates for generating sales data
start_date = datetime.date(2022, 1, 1)
end_date = datetime.date(2022, 12, 31)

# Connecting to the database and creating the tables
with sqlite3.connect('sales.db') as conn:
    # Create the tables
    conn.execute(create_sales_table)
    conn.execute(create_products_table)
    conn.execute(create_customers_table)

    # Inserting data into the products table
    for product in products:
        conn.execute(insert_products_data, product)

    # Insert data into the customers table
    for customer in customers:
                conn.execute(insert_customers_data, customer)

    # Insert  data into the sales table
    for i in range(1000):
        sale_date = start_date + datetime.timedelta(days=random.randint(0, 364))
        customer_id = random.randint(1, len(customers))
        product_id = random.randint(1, len(products))
        quantity = random.randint(1, 10)
        unit_price = products[product_id-1][1]
        total_price = quantity * unit_price
        conn.execute(insert_sales_data, (sale_date, customer_id, product_id, quantity, unit_price, total_price))

    # Committing the changes
    conn.commit()

    print("Sales DB created")

































