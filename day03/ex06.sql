SELECT 
    m1.pizza_name AS pizza_name, 
    pz1.name AS pizzeria_name_1, 
    pz2.name AS pizzeria_name_2,
    m1.price AS price
FROM menu m1
JOIN pizzeria pz1 ON m1.pizzeria_id = pz1.id
JOIN menu m2 ON m1.pizza_name = m2.pizza_name AND m1.price = m2.price
JOIN pizzeria pz2 ON m2.pizzeria_id = pz2.id
WHERE pz1.id < pz2.id
ORDER BY pizza_name;
