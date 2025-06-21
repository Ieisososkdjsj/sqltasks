SELECT DISTINCT  pz.name AS pizzeria_name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'female'AND pz.name NOT IN (
     SELECT pz2.name
     FROM person_order po2
     JOIN person p2 ON p2.id = po2.person_id
     JOIN menu m2 ON m2.id = po2.menu_id
     JOIN pizzeria pz2 ON pz2.id = m2.pizzeria_id
     WHERE p2.gender = 'male'
  )
UNION
SELECT DISTINCT pz.name AS pizzeria_name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'male' AND pz.name NOT IN (
     SELECT pz2.name
     FROM person_order po2
     JOIN person p2 ON p2.id = po2.person_id
     JOIN menu m2 ON m2.id = po2.menu_id
     JOIN pizzeria pz2 ON pz2.id = m2.pizzeria_id
     WHERE p2.gender = 'female'
  )
ORDER BY pizzeria_name;
