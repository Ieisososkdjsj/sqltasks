SELECT
    person.name, order_date AS action_date
FROM person_order, person
ORDER BY action_date ASC, person.name DESC;
