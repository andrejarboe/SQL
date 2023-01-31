-- using NASA astronaut data from: https://gist.github.com/pamelafox/b98e03caca7d1ec14394a90ec1512cff
-- 




-- calculates the average, maximum, and minimum number of space flights per astronaut
select 
    avg(Space_Flights), 
    max(Space_Flights),
    min(Space_Flights)
from astronauts;
-- select avg(Space_Flight_hr) from astronauts;
-- select avg(Space_Walks) from astronauts;

-- calculates the average number of space flights per astronaut by their military rank, and only includes those with at least 2 space flights
select 
    Military_Rank, 
    avg(Space_Flights), 
    max(Space_Flights),
    min(Space_Flights)
from astronauts 
group by Military_Rank
having min(Space_Flights) >= 2;

-- groups astronauts by their undergraduate major and shows 50 results
select 
    name,
    Undergraduate_Major 
from astronauts
group by Undergraduate_Major limit 50;

-- categorizes the undergraduate majors of astronauts into "Engineering" or "Other" and shows the count of each category
select count(*),
    case
        when Undergraduate_Major like "%engineering%"then "Engineering"
        else "Other"
    end as major
from astronauts
group by major;

-- groups astronauts by their number of space flights, who have engineering major and are female
select
    name,
    Space_Flights,
    gender
from astronauts
where Undergraduate_Major like "%engineering%" and gender = "Female"
group by Space_Flights;