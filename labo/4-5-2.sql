use artemis;
-- 4.5.2
SELECT Type, Naam, Gemeente
from tblKlanten
WHERE Type IN ("W", "T")
ORDER BY Type, naam;

SELECT Type, Naam, Gemeente
from tblKlanten
WHERE Type IN ("W", "T")
ORDER BY Type DESC, naam;

SELECT concat(saldo, " €") AS Schulden,
klantnummer, Gemeente
FROM tblklanten
WHERE Saldo > 0
ORDER BY saldo DESC;

SELECT concat(Familienaam, " ", Voornaam) AS Naam,
geboortedatum
FROM tblwerknemers
ORDER BY Geboortedatum ASC;