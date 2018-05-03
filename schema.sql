CREATE TABLE product (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  INDEX (name)
);

CREATE TABLE price_per_quantity (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  min_quantity INT NOT NULL,
  price FLOAT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES product(id),
  INDEX(min_quantity),
  INDEX(price)
);

INSERT INTO product VALUES (null, 'Earphones');
INSERT INTO product VALUES (null, 'Memory Card');
INSERT INTO product VALUES (null, 'Hammer');

INSERT INTO price_per_quantity VALUES(null, 1, 1, 500);
INSERT INTO price_per_quantity VALUES(null, 1, 11, 485);
INSERT INTO price_per_quantity VALUES(null, 1, 51, 475);
INSERT INTO price_per_quantity VALUES(null, 1, 201, 450);

INSERT INTO price_per_quantity VALUES(null, 2, 1, 1000);
INSERT INTO price_per_quantity VALUES(null, 2, 51, 950);
INSERT INTO price_per_quantity VALUES(null, 2, 201, 900);

INSERT INTO price_per_quantity VALUES(null, 3, 1, 250);
INSERT INTO price_per_quantity VALUES(null, 3, 6, 240);
INSERT INTO price_per_quantity VALUES(null, 3, 51, 230);
INSERT INTO price_per_quantity VALUES(null, 3, 201, 220);