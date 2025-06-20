SELECT
    menu.pizza_name AS pizza_name,
    pizzeria.name AS pizzeria_name,
    menu.price AS price
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu.pizza_name IN ('Margherita', 'pepperoni')
ORDER BY pizza_name, pizzeria_name;
