-- 1 Afficher toutes les données des clients  ----
SELECT * FROM Customer 

-- 2 Afficher le nom_du_produit et la catégorie pour les produits dont le prix est compris entre 5000 et 10000 ----
SELECT Product_name, Category FROM Product WHERE Price between 5000 and 10000

-- 3 Affichez toutes les données des produits triés par ordre décroissant de prix. -----
SELECT * FROM Product ORDER BY Price DESC

-- 4 Afficher le nombre total de commandes, le montant moyen, le montant total le plus élevé et le montant total inférieur. ---- 
     -- Pour chaque Product_id, afficher le nombre de commandes ---- 
SELECT AVG(total_amount) AS "MT MOYEN" FROM orders
SELECT MAX(total_amount) AS "MONTANT ELEVE" FROM orders
SELECT MIN(total_amount) AS "MONTANT INFERIEUR" FROM orders
SELECT COUNT(orders.Product_id) as "TOTAL ORDER" FROM orders INNER JOIN Product on (orders.Product_id = Product.Product_id)

-- 5 Afficher le customer_id qui a plus de 2 commandes  
SELECT o.Customer_id FROM Orders o GROUP BY o.Customer_id HAVING COUNT(o.Customer_id) > 2

-- 6 Pour chaque mois de l'année 2020, affichez le nombre de commandes
SELECT MONTH(o.OrderDate) AS MOIS, COUNT(o.Customer_id) AS "NR COMMANDE" FROM orders o WHERE YEAR(o.OrderDate) = 2020 GROUP BY MONTH(o.OrderDate)

-- 7 Pour chaque commande, affichez le nom_produit, le nom_client et la date de la commande
SELECT p.Product_name, c.Customer_name, o.OrderDate FROM orders o 
INNER JOIN Customer c on (o.Customer_id=c.Customer_id) 
INNER JOIN Product p on (o.Product_id=p.Product_id)

-- 8 Afficher toutes les commandes passées il y a trois mois 
SELECT * FROM Orders WHERE MONTH(NOW()) - 3

-- 9 Afficher les clients (customer_id) qui n'ont jamais commandé de produit
SELECT * FROM Customer c WHERE c.Customer_id NOT IN (SELECT o.Customer_id FROM Orders o INNER JOIN Customer c ON (o.Customer_id = c.Customer_id))