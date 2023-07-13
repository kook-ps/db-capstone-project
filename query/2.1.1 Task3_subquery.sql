SELECT MenuName
FROM littlelemondb.menus
WHERE MenuID = ANY(SELECT MenuID FROM orders WHERE quantity > 2);