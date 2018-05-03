# CHEAPEST PRODUCT(s)
SELECT name from product, price_per_quantity WHERE product.id = price_per_quantity.product_id AND price = (SELECT MIN(price) FROM price_per_quantity);
# MOST EXPENSIIVE PRODUCT(s)
SELECT name from product, price_per_quantity WHERE product.id = price_per_quantity.product_id AND price = (SELECT MAX(price) FROM price_per_quantity);

#Per item price for 75 memory cards
SELECT price FROM price_per_quantity, product WHERE product.name = 'Memory Card' AND product_id = product.id AND 75 >= min_quantity ORDER BY min_quantity DESC LIMIT 1;
#Per item price for 6 hammers cards
SELECT price FROM price_per_quantity, product WHERE product.name = 'Hammer' AND product_id = product.id AND 6 >= min_quantity ORDER BY min_quantity DESC LIMIT 1;
