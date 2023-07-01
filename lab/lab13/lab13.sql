.read data.sql


CREATE TABLE average_prices AS
  SELECT category, round(sum(MSRP) / count(category), 0) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) FROM inventory GROUP BY item;


CREATE TABLE shopping_list AS
  SELECT name, store FROM products, lowest_prices
    WHERE MSRP / rating in (
      SELECT min(MSRP / rating) FROM products GROUP BY category
    ) and name = item;


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) FROM stores, shopping_list
    WHERE shopping_list.store = stores.store;

