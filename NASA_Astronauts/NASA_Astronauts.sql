-- using NASA astronaut data from: https://gist.github.com/pamelafox/b98e03caca7d1ec14394a90ec1512cff
-- 



select 
    avg(Space_Flights), 
    max(Space_Flights),
    min(Space_Flights)
from astronauts;
-- select avg(Space_Flight_hr) from astronauts;
-- select avg(Space_Walks) from astronauts;

select 
    Military_Rank, 
    avg(Space_Flights), 
    max(Space_Flights),
    min(Space_Flights)
from astronauts 
group by Military_Rank
having min(Space_Flights) >= 2;

select 
    name,
    Undergraduate_Major
    
from astronauts
group by Undergraduate_Major limit 50;

select count(*),
    case
        when Undergraduate_Major like "%engineering%"then "Engineering"
        else "Other"
    end as major
from astronauts
group by major;

select
    name,
    Space_Flights,
    gender
from astronauts
where Undergraduate_Major like "%engineering%" and gender = "Female"
group by Space_Flights;