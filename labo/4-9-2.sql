use artemis;
-- 4.9.2
SELECT count(klantnummer) AS "Aantal klanten",
sum(Saldo) AS "Saldo"
FROM tblklanten
WHERE ondernemingsnr IS NOT NULL;

SELECT count(OrderID) AS "Aantal orders"
FROM tblOrders
WHERE Orderdatum BETWEEN "2006-08-06" AND "2006-08-07";

SELECT avg(prijspereenheid * 1.1) AS "Gemiddelde prijs per eenheid"
FROM tblProducten;

SELECT count(werknemerID) AS "Aantal vertegenwoordigers"
FROM tblwerknemers
WHERE Functie = "Vertegenwoordiger" AND InDienst < "1993-01-01";

SELECT timestampdiff(year, min(geboortedatum), max(geboortedatum)) AS "Verschil in jaren"
FROM tblWerknemers
WHERE gemeente = "Leuven";

SELECT count(OrderID) AS "Aantal orders"
FROM tblOrders
WHERE Orderdatum BETWEEN "2005-01-01" AND "2006-01-01";

SELECT avg(Brutowedde) AS "Gemiddelde brutowedde"
FROM tblWerknemers;

SELECT count(WerknemerID) AS "Aantal mannen"
FROM tblWerknemers
WHERE geslacht = 1;

SELECT max(prijspereenheid) - min(prijspereenheid) AS "Verschil"
FROM tblProducten;

SELECT count(klantnummer) AS "Aantal klanten"
FROM tblklanten
WHERE Gemeente = "Brussel";