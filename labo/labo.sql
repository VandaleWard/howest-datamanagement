# Oefening 1
use artemis;

select Productnummer, Productnaam, concat (prijspereenheid,' €') as 'VerkoopPrijs',
	concat(PrijsPerEenheid*Voorraad, ' stuks') as 'VoorraadWaarde', voorraad
    FROM tblproducten
    ORDER BY voorraadwaarde DESC;


SELECT naam, straat, postnr, saldo
from tblklanten
where saldo > 100;

-- dit is een comment

-- oefeningen op where:

#1

select klantnummer, naam, type, gemeente
from tblKlanten
where gemeente = "Tienen";

#2

select productnaam 
from tblproducten
where categorienummer = '1'; -- where categorienummerm = 1; lukt ook

#3
select naam
from tblKlanten
where postnr = 3600;

select naam
from tblKlanten
where postnr = 9000;

#4
select naam, saldo, type
from tblklanten
where type = 'p' and postnr = 3300 and saldo != 0;


#5
select naam, gemeente
from tblklanten
where gemeente = 'Leuven' or gemeente = 'Herent';

#6
select naam, straat, concat(gemeente, postnr) as 'Gemeente'
from tblklanten
where type = 'T' or type = 'W';

#7
select werknemerid, concat(familienaam, voornaam) as 'Volledige Naam', geboortedatum
from tblwerknemers
where geboortedatum < '1950-01-01';


-- Oefeningen op operatoren
#1
select klantnummer, naam, straat, concat(postnr, gemeente) as 'Postnr & Gemeente'
from tblklanten;

#2 
select klantnummer, naam, straat, concat(postnr, gemeente) as 'Postnr & Gemeente', saldo
from tblklanten
where saldo between 150 and 300
order by saldo desc;
-- of:
select klantnummer, naam, straat, concat(postnr, gemeente) as 'Postnr & Gemeente', saldo
from tblklanten
where saldo >= 150 and saldo <= 300
order by saldo desc;

#3
select *
from tblwerknemers
where month(geboortedatum) between 6 and 7;
-- of:
select *
from tblwerknemers
where month(geboortedatum) >= 6 and month(geboortedatum) <= 7;

select *
from tblwerknemers
where month(geboortedatum) not between 6 and 7;

#5
select *
from tblwerknemers
where geboortedatum between '1960-01-01' and '1966-01-27';

#6
select *
from tblklanten
where gemeente in ('Leuven', 'Herent',  'Kessel-Lo', 'Heverlee');

#7
select *
from tblklanten
where gemeente not in ('Leuven', 'Herent',  'Kessel-Lo', 'Heverlee');


#8
select *
from tblproducten
where categorienummer in (1, 2, 3, 4, 8)
order by categorienummer, nederlandsenaam;


-- oefeningen op like
#1
select *
from tblproducten
where nederlandsenaam like '%thee'

#2




