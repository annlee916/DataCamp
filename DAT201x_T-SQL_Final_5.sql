Q4.
select country, contacttitle, count(contacttitle) as [Count],
case when GROUPING_ID(country, contacttitle) = 0 then ''
else 'Subtotal for '+ country
end as Legend
from customers
group by Rollup(country, contacttitle)


Q5.
Select 'Average Unit Price' as [Per Category], * from 
(
SELECT CategoryID, UnitPrice as UnitPrice
FROM Products

) as SourceTable
pivot 
(
AVG(UnitPrice)
for CategoryID in ( [1], [2], [3], [4], [5], [6], [7], [8])  
)AS PivotTable


Q6. 
insert into dbo.Region (RegionID, RegionDescription) values (5, 'Space');



SELECT * FROM Region WHERE RegionID = (select max(regionid) from Region)

Q7.
update Region
set RegionDescription = UPPER(RegionDescription);

select * from Region;