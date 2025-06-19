SELECT 
    (SELECT name FROM person WHERE id = person_order.id) AS person_name,
    CASE 
        WHEN (SELECT name FROM person WHERE id = person_order.id) = 'Denis' THEN true
        ELSE false
    END AS check_name
FROM person_order;
