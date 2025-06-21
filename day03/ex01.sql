SELECT menu.id AS menu_id
FROM menu LEFT JOIN person_order on menu.id = person_order.menu_id
WHERE person_order.menu_id IS NULL
ORDER BY person_order.menu_id;
