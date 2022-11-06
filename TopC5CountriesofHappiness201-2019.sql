--Updating Tables with Years 
--2015
select * from dbo.[2015]

Alter table  dbo.[2015]
 add Year15 int 

 Update dbo.[2015]
 set Year15 = 2015
--2016
 select * from dbo.[2016]
 Alter table  dbo.[2016]
 add Year16 int 

 Update dbo.[2016]
 set Year16 = 2016
 
 --2017

  select * from dbo.[2017]
 Alter table  dbo.[2017]
 add Year17 int 
 
 Update dbo.[2017]
 set Year17 = 2017


 ---2018

  select * from dbo.[2018]
 Alter table  dbo.[2018]
 add Year18 int 

 Update dbo.[2018]
 set Year18 = 2018


 ---2019

 select * from dbo.[2019]
 Alter table  dbo.[2019]
 add Year19 int 

 Update dbo.[2019]
 set Year19 = 2019

  select * from dbo.[2019]
    select * from dbo.[2018]
	  select * from dbo.[2017]
	    select * from dbo.[2016]
		 select * from dbo.[2015]



		 ---Find the top 5 counties with Happiness  Score  for 2015,2016,2017,2018,2019
Create  View  dbo.TopC5CountriesofHappiness
as
	with myCTE as (
	
	
	Select   a.Country CountryofHappiness,Row_Number () Over ( partition by a.[Happiness Score] order by a.Country desc) as rn ,a.[Happiness Score] Score2015,a.Year15 y2015,b.[Happiness Score] Score2016 ,b.Year16 y2016,c.Happiness#Score Score2017 ,c.year17 y2017,d.Score Score2018,d.Year18 y2018 ,e.Score Score2019,e.Year19 y2019
	
		from dbo.[2015] a 
	 join dbo.[2016] b on b.Country=a.Country 
	 join dbo.[2017] c on c.Country=a.Country
	 join dbo.[2018] d on d.[Country or region]=a.Country
	 join dbo.[2019] e on e.[Country or region]=a.Country   
	 
	 --order by   a.[Happiness Score] desc) 
	                                                        )

select top  5* from MyCte
where rn=1 
Order by Score2015 desc


select * from dbo.TopC5CountriesofHappiness


		