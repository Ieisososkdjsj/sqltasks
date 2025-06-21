DELETE FROM person_order
WHERE order_date = DATE '2022-02-25' AND menu_id IN (
    SELECT id FROM menu WHERE pizza_name = 'greek pizza');
DELETE FROM menu
WHERE pizza_name = 'greek pizza';
