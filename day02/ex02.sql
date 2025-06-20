SELECT
    COALESCE(person.name, '-') AS person_name,
    COALESCE(TO_CHAR(person_visits.visit_date, 'YYYY-MM-DD'), '-') AS visit_date,
    COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM person
FULL JOIN person_visits ON person.id = person_visits.person_id
    AND person_visits.visit_date BETWEEN DATE '2022-01-01' AND DATE '2022-01-03'
FULL JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE person_visits.visit_date IS NULL OR person_visits.visit_date BETWEEN DATE '2022-01-01' AND DATE '2022-01-03'
ORDER BY person_name, visit_date, pizzeria_name;
