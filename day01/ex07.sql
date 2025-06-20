SELECT 
    person_order.order_date AS order_date,
    CONCAT(person.name, ' (', person.age, ')') AS person_info
FROM 
    person_order 
JOIN 
    person  ON person_order.person_id = person.id
ORDER BY 
    person_order.order_date ASC, 
    person.name ASC;
