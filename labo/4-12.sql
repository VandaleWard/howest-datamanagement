use artemis;
-- 4.12
SELECT OrderID,Leverdatum
FROM tblorders
WHERE Leverdatum IS NULL;

SELECT avg(timestampdiff(day,Orderdatum, Leverdatum)) as "Gemiddelde leverduur"
FROM tblorders;

SELECT OrderID, Klantnummer, dayname(Leverdatum) AS "Day of the week"
FROM tblOrders
WHERE dayname(Leverdatum) NOT IN ("Monday", "Friday");

SELECT OrderID, Klantnummer,
dayname(Leverdatum) AS "Day of the week",
dayofweek(Leverdatum ) AS "day Index"
FROM tblOrders
WHERE Leverdatum IS NOT NULL
ORDER BY dayofweek(Leverdatum), OrderID;

SELECT count(WerknemerID) AS "Aantal vrouwelijke werknemers",
avg(timestampdiff(YEAR, Geboortedatum, NOW())) AS "Gemiddelde leeftijd"
FROM tblwerknemers
WHERE Geslacht = 2;

SELECT count(WerknemerID) AS "Aantal vrouwelijke werknemers",
round(avg(timestampdiff(YEAR, Geboortedatum, NOW())), 1) AS "Gemiddelde leeftijd"
FROM tblwerknemers
WHERE Geslacht = 2;