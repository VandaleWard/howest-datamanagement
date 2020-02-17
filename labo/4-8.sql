use artemis;
-- 4.8
SELECT DISTINCT Familienaam, Voornaam, Gemeente, InDienst
FROM tblwerknemers
WHERE year(InDienst) = 1993
ORDER BY Indienst ASC;

SELECT Naam, Gemeente
FROM tblklanten
Where Gemeente = "Leuven"
ORDER BY Naam ASC;

SELECT Familienaam, Voornaam, Geslacht
FROM tblwerknemers
WHERE Geslacht = 2 AND Gemeente = "Leuven";

SELECT Familienaam, Voornaam, Geslacht
FROM tblwerknemers
WHERE Geslacht = 1 AND Gemeente NOT IN ("Kessel-lo, Herent, Leuven");

SELECT Klantnummer, Naam
FROM tblklanten
WHERE saldo > 175
ORDER BY Naam ASC;

SELECT Klantnummer, Naam
FROM tblklanten
WHERE Naam REGEXP "^Van"
ORDER BY Naam ASC;

SELECT upper(Gemeente) as "GEMEENTE", upper(Familienaam) as "FAMILIENAAM"
FROM tblwerknemers
WHERE Gemeente NOT IN ("Leuven", "Herent", "Peer", "Genk") AND Functie = "Vertegenwoordiger"
ORDER BY Gemeente;

SELECT Productnaam, Voorraad, InBestelling, Bestelpunt,
Voorraad-InBestelling AS "Dringende-Tekorten"
FROM tblproducten
WHERE Voorraad-InBestelling < 0 OR Voorraad - InBestelling < Bestelpunt
ORDER BY Voorraad-InBestelling ASC;

SELECT DISTINCT concat(upper(Bedrijf), " uit ", upper(Land)) AS "BEDRIJF en LAND"
FROM tblleveranciers
WHERE Land NOT IN ("Spanje", "Verenigd Koninkrijk")
ORDER BY bedrijf
LIMIT 5;

SELECT DISTINCT Land
FROM tblleveranciers
ORDER BY Land;
