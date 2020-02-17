use artemis;
-- 4.4.6
SELECT *
FROM tblProducten
WHERE nederlandsenaam LIKE "%thee%";

SELECT *
FROM tblproducten
WHERE nederlandsenaam LIKE "%vlees%" or NederlandseNaam LIKE "%kaas%";

SELECT nederlandsenaam, productnaam, concat(prijspereenheid, "€") as "Prijs Per Eenheid"
FROM tblproducten
WHERE (nederlandsenaam LIKE "%vlees%" or NederlandseNaam LIKE "%kaas%")
AND PrijsPerEenheid < 32
ORDER BY prijspereenheid;

SELECT concat(naam, " uit ", Gemeente) as "Klantnaam"
FROM tblklanten
WHERE naam LIKE "Vander%"
ORDER BY naam;

SELECT concat(naam, " uit ", Gemeente) as "Klantnaam"
FROM tblklanten
WHERE naam LIKE "Vander%t"
ORDER BY naam;

SELECT concat(naam, " uit ", Gemeente) as "Klantnaam", Straat
FROM tblklanten
WHERE straat LIKE "%dorp%"
ORDER BY straat;

SELECT * 
FROM tblleveranciers
WHERE bedrijf LIKE "%an%" or bedrijf LIKE "%foot%";