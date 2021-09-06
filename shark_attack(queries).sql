DROP TABLE shark_attacks

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

select * from shark_attacks

select attack_state, count (attack_state) as occurences
from shark_attacks
group by attack_state

Create Table shark_attacks2 (
	
	
)

Insert into shark_attacks2(state, occurences)
Select attack_state from TableName


alter table shark_attacks
add column occurences varchar