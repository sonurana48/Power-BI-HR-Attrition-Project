-- 1. Open the database
use sqlbatch7;

-- 2. View the entire startups table
select * from startups;

-- 3. View unique state values
select distinct STATE from startups;

-- 3. View only RND and PROFIT column'
select RND, PROFIT from startups;

-- 4. Filtering operation with WHERE clause
/* a. Filter startups from New York */
select * from startups
where STATE='New York';

/* b. Filter startups with profit is 
greater than 150000 */
select * from startups
where PROFIT>150000;

/* c. Filter the states starting with C */
select * from startups 
where STATE like 'C%';

/* d. Filter the states ending with k */
select * from startups 
where STATE like '%k';

/* e. Filter out startups starting with Fl */
select * from startups
where state like 'fl%';

/* Filter out profit between 100000 and 150000 */
select * from startups
where PROFIT between 100000 and 150000;

-- 5. SQL AND, OR, NOT
/* Find out startups with profit more
1.5 Lakhs and belongs to Florida */
select * from startups 
where PROFIT>150000 and STATE='Florida';

/* Find out startups with profit more
1.5 Lakhs and belongs to California or New york */
select * from startups
where PROFIT>150000 and (STATE='California' or STATE='New York');

/* Find out startups whose state is NOT California */
select * from startups
where NOT State = 'California';

select * from startups
where PROFIT>150000 and NOT STATE='Florida';

-- 5. Aggregation operations Count
/* Find out how many distinct states are there */
select count(distinct STATE) from startups; 

select count(distinct STATE) as StateCount from startups;

/* How many startups from New York */
select count(STATE) as countNY from startups
where STATE='New York';

/* Find out total RND spend of every startup */
select sum(RND) as TotRND from startups;

/* Find out total RND Spend and PROFIT from florida */
select sum(RND) as flRND,sum(PROFIT) as flPROFIT from startups
where STATE='Florida';

/* Find out average RND and avergage PROFIT for 
california or florida */
select avg(RND) , avg(PROFIT) from startups 
where STATE='California' or 'Florida';




