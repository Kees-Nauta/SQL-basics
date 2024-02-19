CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height INTEGER,
    city VARCHAR(40),
    favorite_color VARCHAR(20)
);


INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('jim', '110', 40, 'provo', 'red'),
 ('jem', '3', 51, 'provo', 'red'),
 ('jam', '60', 61, 'orem', 'blue'),
 ('jom', '2077', 60, 'provo', 'blue'),
 ('jum', '7', 20, 'provo', 'red');

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY age ASC;

SELECT * FROM person WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color NOT IN ('red', 'blue');

SELECT * FROM person WHERE favorite_color IN ('orange', 'green');

SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');