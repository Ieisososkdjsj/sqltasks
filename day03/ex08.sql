INSERT INTO menu (pizzeria_id, pizza_name, price)
VALUES (
  (SELECT id FROM pizzeria WHERE name = 'Dominos'), 'sicilian pizza', 900);
