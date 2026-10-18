CREATE TABLE reps (
    rep_id INTEGER PRIMARY KEY,
    rep_name VARCHAR(50),
    region VARCHAR(20),
    monthly_target INTEGER
);

CREATE TABLE products (
    item VARCHAR(50) PRIMARY KEY,
    category VARCHAR(20),
    unit_price INTEGER
);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    city VARCHAR(30),
    region VARCHAR(20),
    age INTEGER,
    rep_id INTEGER,
    FOREIGN KEY (rep_id) REFERENCES reps(rep_id)
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    item VARCHAR(50),
    quantity INTEGER,
    amount INTEGER,
    status VARCHAR(20),
    order_month VARCHAR(7),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (item) REFERENCES products(item)
);
