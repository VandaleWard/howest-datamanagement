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
where nederlandsenaam like '%thee%';

#2
select *
from tblproducten
where nederlandsenaam like '%vlees%' or nederlandsenaam like '%kaas%';

#3
select *
from tblproducten
where (nederlandsenaam like '%vlees%' or nederlandsenaam like '%kaas%')
and prijsPerEenheid < 32;

#4
select concat(naam, ' uit ', gemeente) as "Klantnaam", gemeente
from tblklanten
where naam like 'Vander%';

#5
select concat(naam, ' uit ', gemeente) as "Klantnaam", gemeente
from tblklanten
where naam like 'Vander%t';

#6
select *
from tblklanten
where straat like '%dorp%';

#7
select *
from tblleveranciers
where bedrijf like '%an%' or bedrijf like '%foot%';

-- oefeningen op regexp
#1
select productnummer, productnaam
from tblproducten
where productnaam regexp '^chef.*mix$';

#2
select productnaam
from tblproducten
where productnaam regexp binary 'c'
order by productnaam;

#3
select productnaam
from tblproducten
where productnaam regexp binary '[cyB]'
order by productnaam;

#4
select *
from tblklanten
where saldo regexp '^.{4}$';

#5
select *
from tblbtwtarief
where btwpercentage regexp '[0-9]\.[0-9]{2}';

-- oefeningen op sorteren
#1
select *
from tblklanten
where type regexp '[wt]'
order by naam;

#2
select *
from tblklanten
where type regexp '[wt]'
order by type desc;

#3
select saldo, klantnummer, gemeente
from tblklanten
where saldo != 0
order by saldo desc;

#4
select concat(familienaam, voornaam) as 'Naam', geboortedatum
from tblwerknemers
order by geboortedatum;


-- oefeningen op select queries
#1
select familienaam, voornaam, gemeente, indienst
from tblwerknemers
where year(inDienst) = '1993';

#2
select *
from tblklanten
where gemeente like 'Leuven'
order by naam;

#3
select familienaam, voornaam, gemeente, geslacht
from tblwerknemers
where geslacht = 2 and gemeente like 'Leuven';


