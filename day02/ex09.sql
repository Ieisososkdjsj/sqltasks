SELECT name
FROM person
WHERE gender = 'female' AND id IN (
    SELECT person_id
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    WHERE pizza_name = 'pepperoni pizza'
  )
  AND id IN (
    SELECT person_id
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    WHERE pizza_name = 'cheese pizza'
  )
ORDER BY name ASC;
