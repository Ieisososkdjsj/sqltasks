SELECT 
    menu.pizza_name AS pizza_name,
    menu.price AS price,
    pizzeria.name AS pizzeria_name
FROM menu
LEFT JOIN person_order ON menu.id = person_order.menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person_order.menu_id IS NULL
ORDER BY pizza_name, price;
