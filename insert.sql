INSERT INTO customer (customer_name, customer_phone, email) VALUES
('Steve','708755433','steve@gmail.com'),
('John', '708755433','john@hotmail.com'),
('Jack','708755433', 'always@jillhouse.com');

INSERT INTO movie (movie_name, movie_rating) VALUES
('KEVIN THE KILLER', 'R'),
('SHOHA THE GREAT 2', 'PG');

INSERT INTO concession (concession_food, concession_price) VALUES
('Popcorn', 6.99),
('Candy', 2.99),
('ICEE', 3.99);

INSERT INTO ticket (ticket_num, customer_id,movie_id) VALUES
('10', 1, 2),
('9', 2, 2),
('10', 3, 1);

INSERT INTO customer_concession(customer_id, concession_id) VALUES
(1,2),
(2,3),
(2,1),
(3,1);

INSERT INTO inventory(concession_id, quantity) VALUES
(1, 100),
(2, 50),
(3, 30);