--1.How many olympics games have been held?
select count(distinct games) as total_olympic_games 
from athlete_events;

--2.List down all Olympics games held so far.
select distinct games 
from athlete_events 
order by 1;

--3.Mention the total no of nations who participated in each olympics game?
select games, count(distinct noc) 
from athlete_events
group by games 
order by 2;

--4.Which year saw the highest and lowest no of countries participating in olympics?
(select games, count(distinct noc) as participant from athlete_events group by games order by 2 asc limit 1)
union all
(select games, count(distinct noc) as participant from athlete_events group by games order by 2 desc limit 1);

--5. Which nation has participated in all of the olympic games.
with t1 as (select count (distinct games) as total_num_games from athlete_events),
			  
t2 as (select distinct noc as country, games from athlete_events order by 2),

t3 as (select country,count(1) as involvement from t2 group by country)

select * from t3 
join t1 on t1.total_num_games=t3.involvement;

--6. Identify the sport which was played in all summer olympics.
with t1 as
(select count(distinct games) as total_games
from athlete_events where season = 'Summer'),

t2 as
(select distinct games, sport
from athlete_events where season = 'Summer'),

t3 as
(select sport, count(1) as no_of_games
from t2 group by sport)

select *   from t3
join t1 on t1.total_games = t3.no_of_games;

--7. Which Sports were just played only once in the olympics.
with t1 as (select sport, count(distinct games) as frequency from athlete_events  group by sport order by 2 asc)
select sport from t1 where t1.frequency = 1;

--8. Fetch the total no of sports played in each olympic games.
select games, count(distinct sport) from athlete_events group by games order by 2 desc;

--9. Fetch oldest athletes to win a gold medal
with t1 as (select distinct name as fullname, cast(case when age = 'NA' then '0' else age end as int) as age
			from athlete_events where medal ='Gold'),
			
	t2 as (select * , dense_rank() over(order by age desc) as list from t1)
	select * from t2 where list=1;
	
--10. Find the Ratio of male and female athletes participated in all olympic games.
with t1 as (select count(*) as Mnum from athlete_events  group by sex)
select cast(min(Mnum) * 1.00 / max(Mnum) as decimal(2,2)) as result from t1;

--11. Fetch the top 5 athletes who have won the most gold medals.
with t1 as (
	select name , count(1) as total_medals
	from athlete_events 
	where medal ='Gold'
	group by name
	order by 2 desc),

t2 as (
	select *, dense_rank() over(order by total_medals desc ) as rnk 
	from t1)
	
select * from t2
	where rnk<=5;

--12. Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).
with t1 as (
	select name , count(1) as total_medals
	from athlete_events 
	where medal !='NA'
	group by name
	order by 2 desc),

t2 as (
	select *, dense_rank() over(order by total_medals desc ) as rnk 
	from t1)
	
select * from t2
	where rnk<=5;

--13. Fetch the top 5 most successful countries in olympics. Success is defined by no of medals won.
with t1 as (select region,count(1) as total_medal from athlete_events 
	join noc_regions on noc_regions.noc = athlete_events.noc  
	where medal != 'NA' 
	group by region),
	

	t2 as (select * , dense_rank() over(order by total_medal desc) as rnk from t1)
select region,total_medal from t2 where rnk<=5;


--14. List down total gold, silver and bronze medals won by each country.
select 	country,
		coalesce(Gold, 0) as Gold,
    	coalesce(Silver, 0) as Silver,
    	coalesce(Bronze, 0) as Bronze
	from crosstab ('select region as country, medal, count(*) as total_medals  from athlete_events 
				join noc_regions on noc_regions.noc = athlete_events.noc
				where medal != ''NA''
				group by region,medal
				order by 1,2',
				'values (''Bronze''), (''Gold''), (''Silver'')')
				
		as result (country varchar, Bronze bigint,Gold bigint, Silver bigint)
	order by 2 desc;

--15. List down total gold, silver and bronze medals won by each country corresponding to each olympic games.
select game_region,
	coalesce(Gold, 0) as Gold,
	coalesce(Silver, 0) as Silver,
	coalesce(Bronze, 0) as Bronze 
from crosstab('select concat(games,''-'', region) as game_region,medal,count(*)  as total_medals
	from athlete_events
	join noc_regions on noc_regions.noc = athlete_events.noc
	where medal!=''NA''
	group by game_region,medal
	order by 1,2','values (''Bronze''), (''Gold''), (''Silver'')')
as result (game_region varchar, Bronze bigint,Gold bigint, Silver bigint);



--16. Identify which country won the most gold, most silver and most bronze medals in each olympic games.

with t1 as(
	select 	substring(games_country , 1, position( ' - ' in games_country) -1 ) as games,
			substring(games_country , position(' - ' in games_country ) + 3) as country,


			coalesce(Gold, 0) as Gold,
			coalesce(Silver, 0) as Silver,
			coalesce(Bronze, 0) as Bronze
		from crosstab ('select concat(games,'' - '',noc_regions.region) as games_country, medal, count(*) as total_medals  from athlete_events 
						join noc_regions on noc_regions.noc = athlete_events.noc
						where medal != ''NA''
						group by games,region,medal
						order by 1,2',
					   'values (''Bronze''), (''Gold''), (''Silver'')')

			as result (games_country varchar, Bronze bigint,Gold bigint, Silver bigint)
		order by 1 asc)
select 	distinct games,
		concat(max(gold) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by gold desc)) as Gold_country,		
		concat(max(silver) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by silver desc)) as Silver_country,
		concat(max(bronze) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by bronze desc)) as Bronze_country
		from t1 order by games;

--17.Identify which country won the most gold,most silver, most bronze medals and the most medals in each olympic games.
with t1 as(
	select 	substring(games_country , 1, position( ' - ' in games_country) -1 ) as games,
			substring(games_country , position(' - ' in games_country ) + 3) as country,			
			coalesce(Gold, 0) as Gold,
			coalesce(Silver, 0) as Silver,
			coalesce(Bronze, 0) as Bronze
		from crosstab ('select concat(games,'' - '',noc_regions.region) as games_country, medal, count(*) as total_medals  from athlete_events 
						join noc_regions on noc_regions.noc = athlete_events.noc
						where medal != ''NA''
						group by games,region,medal
						order by 1,2',
					   'values (''Bronze''), (''Gold''), (''Silver'')')

			as result (games_country varchar, Bronze bigint,Gold bigint, Silver bigint)
		order by 1 asc),

t2 as (select games, country,sum(gold+silver+bronze) as totals from t1 group by games,country order by 1,2),

t3 as (select t1.games,t1.country,t1.gold,t1.silver,t1.bronze,t2.totals 
	   from t1 join t2 on t1.games = t2.games and t1.country =t2.country )

select 	distinct games,
		concat(max(gold) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by gold desc)) as Gold_country,		
		concat(max(silver) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by silver desc)) as Silver_country,
		concat(max(bronze) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by bronze desc)) as Bronze_country,
		concat(max(totals) over(partition by games), ' / ' ,
		first_value(country) over(partition by games order by totals desc)) as YearWinner
		from t3 order by games	