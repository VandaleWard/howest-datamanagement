use artemis;
-- oefening 4.4.4
SELECT klantnummer, Naam, Straat,
concat(Postnr, " ", Gemeente)
FROM tblKlanten;

SELECT klantnummer, Naam, Straat,
concat(Postnr, " & ", Gemeente)
FROM tblKlanten
-- WHERE saldo >= 150 AND saldo =< 300;
WHERE saldo BETWEEN 150 AND 300;

SELECT concat(Familienaam, " ", Voornaam) as "Naam",
Geboortedatum
FROM tblWerknemers
WHERE month(Geboortedatum) in (7,8);

SELECT concat(Familienaam, " ", Voornaam) as "Naam",
Geboortedatum
FROM tblWerknemers
WHERE month(Geboortedatum) not in (7,8);

SELECT concat(Familienaam, " ", Voornaam) as "Naam",
Geboortedatum
FROM tblWerknemers
WHERE Geboortedatum between "1960-01-01" AND "1966-01-28"
ORDER BY Geboortedatum;

SELECT klantnummer, Naam, Straat,
concat(Postnr, " ", Gemeente)
FROM tblKlanten
WHERE Gemeente IN ("Leuven", "Herent", "Kessel-lo", "Heverlee");

SELECT klantnummer, Naam, Straat,
concat(Postnr, " ", Gemeente)
FROM tblKlanten
WHERE Gemeente NOT IN ("Leuven", "Herent", "Kessel-lo", "Heverlee");

SELECT concat(Nederlandsenaam, "(",Productnaam,")") as Naam,
categorienummer
FROM tblProducten
WHERE categorienummer IN (1,2,3,4,8)
ORDER BY categorienummer, nederlandsenaam;