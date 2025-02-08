DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS products CASCADE;


CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    discounted_price FLOAT,
    actual_price FLOAT,
    discount_percentage FLOAT,
    rating FLOAT,
    rating_count INT,
    about_product TEXT,
    img_link TEXT,
    product_link TEXT
);

CREATE TABLE reviews (
    review_id VARCHAR(50) PRIMARY KEY,
    product_id VARCHAR(50) REFERENCES products(product_id) ON DELETE CASCADE,
    user_id VARCHAR(50),
    user_name TEXT,
    review_title TEXT,
    review_content TEXT
);