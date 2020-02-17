use artemis;
-- 4.4.9
SELECT productnummer, productnaam
FROM tblproducten
WHERE Productnaam REGEXP "^chef" AND productnaam REGEXP "mix$";

SELECT productnummer, productnaam
FROM tblproducten
WHERE Productnaam REGEXP BINARY "c+"
ORDER BY Productnaam;

SELECT productnummer, productnaam
FROM tblproducten
WHERE Productnaam REGEXP BINARY "[c,y,B]"
ORDER BY Productnaam;

SELECT *
FROM tblklanten
WHERE Saldo REGEXP ".{4}";

SELECT BTWPercentage
FROM tblbtwtarief
-- WHERE BTWPercentage REGEXP "[\d.\d\d]";
WHERE BTWPercentage REGEXP "^.{1}\..{2}$";