--Dropping shark_attack table if it already exists
DROP TABLE shark_attacks

--Creates shark_attacks table
CREATE TABLE shark_attacks (
	case_num varchar(100), 
	attack_date varchar(65), 
	attack_year decimal, 
	attack_type varchar(100), 
	attack_country varchar(100), 
	attack_state varchar(100), 
	attack_location varchar(100), 
	activity varchar(100)
)

--Showing shark_attacks table
select * from shark_attacks

--Creating a new table containing values from the original table 
create table occurence_table
as 
select attack_state, count (attack_state) as occurences
from shark_attacks
group by attack_state

--Showing occurence table
select * from occurence_table

--Dropping ice_cream table if it already exists
DROP TABLE ice_cream

CREATE TABLE ice_cream (
	attack_location varchar(100),
	number_of_attacks int,
	latitude decimal,
	longitude decimal,
	ice_cream int
)

select * from ice_cream

create table ice_cream_shark_attack
as  
SELECT shark_attacks.attack_date, shark_attacks.attack_year, shark_attacks.attack_type, shark_attacks.attack_state, shark_attacks.attack_location, shark_attacks.activity, ice_cream.number_of_attacks, ice_cream.latitude, ice_cream.longitude, ice_cream.ice_cream
FROM shark_attacks
LEFT JOIN ice_cream ON
shark_attacks.attack_location = ice_cream.attack_location;
