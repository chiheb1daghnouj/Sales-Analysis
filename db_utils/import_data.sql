/* importing geo_location data */
COPY geo_location
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_geolocation_dataset.csv'
WITH (FORMAT CSV, HEADER);



/* importing customers data */
COPY customers
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_customers_dataset.csv'
WITH (FORMAT CSV, HEADER);


/* importing sellers data */
COPY sellers
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_sellers_dataset.csv'
WITH (FORMAT CSV, HEADER);



/* importing products data */
COPY products
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_products_dataset.csv'
WITH (FORMAT CSV, HEADER);


/* importing orders data */
COPY orders
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_orders_dataset.csv'
WITH (FORMAT CSV, HEADER);

/* importing order payments data */
COPY order_payments
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_order_payments_dataset.csv'
WITH (FORMAT CSV, HEADER);


/* importing order reviews data */
COPY order_reviews
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_order_reviews_dataset.csv'
WITH (FORMAT CSV, HEADER);

/* importing order items data */
COPY order_items
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/olist_order_items_dataset.csv'
WITH (FORMAT CSV, HEADER);

/* importing product translation */
COPY product_translation
FROM '/home/chiheb/PycharmProjects/portfolio/Sales Analysis/data/product_category_name_translation.csv'
WITH (FORMAT CSV, HEADER);
