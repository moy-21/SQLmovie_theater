DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(13),
    email VARCHAR(100)

);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    movie_rating VARCHAR(6)

);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    concession_food VARCHAR(50),
    concession_price INTEGER
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    ticket_num VARCHAR(10),
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    date_ TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_ID),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

DROP TABLE IF EXISTS customer_concession CASCADE;
CREATE TABLE customer_concession(
    customer_id INTEGER NOT NULL,
    concession_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_ID),
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id)
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    concession_id INTEGER NOT NULL UNIQUE,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id)
);
