USE artemis;
SELECT Klantnummer, Naam, Type
FROM tblklanten
WHERE gemeente = "Tienen";

SELECT productnaam
FROM tblproducten
WHERE Categorienummer = 1;

SELECT naam, postnr
FROM tblklanten
WHERE Postnr = 3600 OR Postnr = 9000;

SELECT naam, Saldo
FROM tblklanten
WHERE Type = "P" AND Saldo > 0 AND Gemeente = "Tienen";

SELECT naam, gemeente
FROM tblklanten
WHERE Gemeente = "Leuven" OR Gemeente = "Herent";

SELECT Naam, Straat, concat(Postnr, " ", Gemeente) as `Gemeente`
FROM tblklanten
WHERE Type = "W" OR Type = "T" ;

SELECT WerknemerID, concat(Familienaam, " ", Voornaam) as `Volledige naam`, Geboortedatum
FROM tblwerknemers
WHERE Geboortedatum < "1951-01-01";