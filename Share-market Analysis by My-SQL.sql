use assignment;

/*Table of Bajaj Auto*/

CREATE TABLE `bajaj_auto` (
  `Date1` date NOT NULL,
  `Open_Price` float(24,8) DEFAULT NULL,
  `High_Price` float(24,8) DEFAULT NULL,
  `Low_Price` float(24,8) DEFAULT NULL,
  `Close_Price` float(24,8) DEFAULT NULL,
  `WAP` float(24,8) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(24,8) DEFAULT NULL,
  `Deliverable_Quantity` float(24,8) DEFAULT NULL,
  `Percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(24,8) DEFAULT NULL,
  `Spread_Close_Open` float(24,8) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci PACK_KEYS=0;

/*20DMV & 50DMV for BajajAuto */

select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from bajaj_auto;


create table bajaj1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from bajaj_auto;

select * from bajaj1

CREATE TABLE `bajaj1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*update position for bajaj1 */

 update bajaj1 
 set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
 where Date >= '2015-01-01'
 
 /* Table of eicher Motor*/
 CREATE TABLE `eicher_motors` (
  `Date1` date NOT NULL,
  `Open_Price` float(20,2) DEFAULT NULL,
  `High_Price` float(20,2) DEFAULT NULL,
  `Low_Price` float(20,2) DEFAULT NULL,
  `Close_Price` float(20,2) DEFAULT NULL,
  `WAP` float(20,8) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(20,2) DEFAULT NULL,
  `Deliverable_Quantity` float(20,2) DEFAULT NULL,
  `percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(20,2) DEFAULT NULL,
  `Spread_Close_Open` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*20DMV & 50DMV for eicher*/

select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from eicher_motors;

create table eicher1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from eicher_motors;

CREATE TABLE `eicher1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 

select * from eicher1

/* update position for eicher */

update eicher1 
 set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
 where Date >= '2015-01-01'

/* Hero Motorcorp*/
CREATE TABLE `hero_motocorp` (
  `Date1` date NOT NULL,
  `Open_Price` float(20,2) DEFAULT NULL,
  `High_Price` float(20,2) DEFAULT NULL,
  `Low_Price` float(20,2) DEFAULT NULL,
  `Close_Price` float(20,2) DEFAULT NULL,
  `WAP` float(20,2) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(20,2) DEFAULT NULL,
  `Deliverable_Quantity` float(20,2) DEFAULT NULL,
  `percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(20,2) DEFAULT NULL,
  `Spread_Close_Open` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*20DMV & 50DMV */
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from hero_motocorp;

create table hero1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from hero_motocorp;

CREATE TABLE `hero1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 */ 

select * from hero1
/*update position for hero1*/

update hero1 
 set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
 where Date >= '2015-01-01'
 
 /* Infosys*/
 CREATE TABLE `infosys` (
  `Date1` date NOT NULL,
  `Open_Price` float(20,2) DEFAULT NULL,
  `High_Price` float(20,2) DEFAULT NULL,
  `Low_Price` float(20,2) DEFAULT NULL,
  `Close_Price` float(20,2) DEFAULT NULL,
  `WAP` float(20,2) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(20,2) DEFAULT NULL,
  `Deliverable_Quantity` float(20,2) DEFAULT NULL,
  `percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(20,2) DEFAULT NULL,
  `Spread_Close_Open` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*20DMV & 50DMV */
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from infosys;


create table infosys1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from infosys;


CREATE TABLE `infosys1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 */ 

select * from infosys1
/* update position */

update infosys1
 set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
 where Date >= '2015-01-01'
  
  /* TCS*/
  CREATE TABLE `tcs` (
  `Date1` date NOT NULL,
  `Open_Price` float(20,2) DEFAULT NULL,
  `High_Price` float(20,2) DEFAULT NULL,
  `Low_Price` float(20,2) DEFAULT NULL,
  `Close_Price` float(20,2) DEFAULT NULL,
  `WAP` float(20,2) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(20,2) DEFAULT NULL,
  `Deliverable_Quantity` float(20,2) DEFAULT NULL,
  `percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(20,2) DEFAULT NULL,
  `Spread_Close_Open` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


 /*20DMV & 50DMV */
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from tcs;

create table tcs1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from tcs;

CREATE TABLE `tcs1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 */ 

select * from tcs1

/* update tcs */

update tcs1
set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
where Date >= '2015-01-01'
 
 /* TVs*/
 CREATE TABLE `tvs_motors` (
  `Date1` date NOT NULL,
  `Open_Price` float(20,2) DEFAULT NULL,
  `High_Price` float(20,2) DEFAULT NULL,
  `Low_Price` float(20,2) DEFAULT NULL,
  `Close_Price` float(20,2) DEFAULT NULL,
  `WAP` float(20,2) DEFAULT NULL,
  `No_Shares` int(11) DEFAULT NULL,
  `No_Trades` int(11) DEFAULT NULL,
  `Total_Turnover` float(20,2) DEFAULT NULL,
  `Deliverable_Quantity` float(20,2) DEFAULT NULL,
  `percentage_Deli_Qty_Traded_Qty` int(11) DEFAULT NULL,
  `Spread_Hig_Low` float(20,2) DEFAULT NULL,
  `Spread_Close_Open` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`Date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*20DMV & 50DMV */
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from tvs_motors;


create table tvs1
select Date1 as `Date`, 
  Close_Price as `Close Price`, 
       avg(Close_Price) over (order by Date1 rows between 19 preceding and current row) as `20 Day MA`,
       avg(Close_Price) over (order by Date1 rows between 49 preceding and current row) as `50 Day MA`
from tvs_motors;

CREATE TABLE `tvs1` (
  `Date` date NOT NULL,
  `Close Price` float(24,8) DEFAULT NULL,
  `20 Day MA` float(24,8) DEFAULT NULL,
  `50 Day MA` float(24,8) DEFAULT NULL,
  `position` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 

select * from tvs1
/* update tvs1 */

update tvs1
 set position = if(`20 Day MA` > `50 Day MA`, 1, 0)
 where Date >= '2015-01-01'
 
 /*Create a master table*/
 
create  table Master_Stock
select b.date1 as 'Date',b.Close_Price as 'Bajaj',c.Close_Price as 'TCS',d.Close_Price as 'TVS',
e.Close_Price as 'Infosys',f.Close_Price as 'Eicher',g.Close_Price as 'Hero'
from bajaj_auto b,tcs c,tvs_motors d, infosys e,eicher_motors f,hero_motocorp g
where b.date1=c.date1 and b.date1=d.date1 and b.date1=e.date1 and b.date1=f.date1 and b.date1=g.date1a;

select * from Master_Stock;
/*Create Bajaj2 */

 create table bajaj2
select `Date`,`Close Price`, 
  CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from bajaj1
 
select * from bajaj1
select * from bajaj2
 
  
/*Create eicher2 */

create table eicher2
select `Date`,`Close Price`, 
CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from eicher1 
 
 select * from eicher1
 select * from eicher2
 
  /*Create hero2 */
create table hero2
select `Date`,`Close Price`, 
  CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from hero1 
 
select * from hero1
select * from hero2
 
/*Create infosys2 */

create table infosys2
select `Date`,`Close Price`, 
  CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from infosys1 
 
 select * from infosys1
 select * from infosys2
 
/*Create tcs2 */
 
create table tcs2
select `Date`,`Close Price`, 
  CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from tcs1 
 
 select * from tcs1
 select * from tcs2
 
 
/*Create tvs2 */
 
create table tvs2
select `Date`,`Close Price`, 
  CASE (position - LAG(position,1,0) over(order by `Date`))
   when 1 then 'B'
   when -1 then 'S'
   when 0 then 'H'
END as `Signal`
 from tvs1 
 
 select * from tvs1
 select * from tvs2
 
/*Create UDF for CalculateSignal*/
 
DELIMITER $$
CREATE FUNCTION CalculateSignal(dd Date)
returns varchar(4) deterministic
BEGIN
declare sign varchar(4);
SELECT `Signal` into sign from bajaj2
where `Date`=dd;
return sign;
END $$
DELIMITER ;

select CalculateSignal("2015-12-17") 
/*Query Result: 'B' */

select * from bajaj2