CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE inventory (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
item_name TEXT UNIQUE NOT NULL,
category TEXT,
stock_level INT DEFAULT 0,
reorder_point INT DEFAULT 5,
price NUMERIC,
supplier_email TEXT
);

CREATE TABLE order_logs (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
item_name TEXT,
category TEXT,
price NUMERIC,
action TEXT CHECK (action IN ('inbound', 'outbound')),
quantity INT,
timestamp TIMESTAMP DEFAULT NOW()
);

CREATE TABLE product_manuals (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
content TEXT,
embedding VECTOR(1536)
);
