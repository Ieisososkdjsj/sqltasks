SELECT person_order.person_id
FROM person_order
LEFT JOIN person_visits ON person_order.person_id = person_visits.person_id AND person_visits.visit_date = '2022-01-07'
WHERE person_order.order_date = '2022-01-07' AND person_visits.person_id IS NULL;
