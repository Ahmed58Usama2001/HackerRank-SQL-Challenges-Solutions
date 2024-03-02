select country.continent,avg(city.population)
from city inner join COUNTRY on city.CountryCode= COUNTRY.Code
group by country.continent