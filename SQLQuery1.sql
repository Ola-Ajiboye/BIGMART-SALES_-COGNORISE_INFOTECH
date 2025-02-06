Select * from Bigmart

--TOTAL SALES

Select 
	Round(Sum(item_outlet_sales)/100,0) As Total_Sales
From 
	bigmart

--AVERAGE SALES

Select
	Round(avg(item_outlet_sales)/100,0) as Avearge_Sales
From 
	Bigmart

--NO SOLD ITEMS

Select 
	Count(item_identifier) as No_items_sold
From 
	Bigmart

--FAT CONTENT

Select
	item_fat_content as Item_Fat,
	Round(Sum(item_outlet_sales)/100,0) as Total_sales
from 
	Bigmart
Group by 
	item_fat_content

-- ITEM TYPE
Select
	Item_Type as Item_type,
	Round(Sum(item_outlet_sales)/100,0) as Total_sales
from 
	Bigmart
Group by 
	Item_Type
Order by 
	sum(item_outlet_sales) desc

-- FAT OUTLET
Select
	Item_Type as Item_type,
	Round(Sum(item_outlet_sales)/100,0) as Total_sales
from 
	Bigmart
Group by 
	Item_Type
Order by 
	sum(item_outlet_sales) desc

-- FAT BY OUTLET

Select 
	Outlet_Location_Type as Outlet,
	count(item_fat_content) as Fat
From 
	Bigmart
Group by 
	Outlet_Location_Type
Order by 
	Fat desc

--OUTLET ESTABLISHMENT YEAR

Select
	outlet_establishment_year as Year,
	Round(sum(item_outlet_sales)/100,0) as Total_sales
From 
	Bigmart
Group by 
	Outlet_Establishment_Year

-- TOTAL SALES BY OUTLET
Select
	Outlet_Location_Type as Location,
	Round(Sum(item_outlet_sales)/100,0) as Total_Sales
From
	Bigmart
Group by
	Outlet_Location_Type
Order by
	Outlet_Location_Type desc

-- OUTLET SIZE
Select
	Outlet_size as Size,
	Round(Sum(item_outlet_sales)/100,0) as Total_Slaes
From
	Bigmart
Group by 
	Outlet_Size
Order by
	Outlet_Size desc

--TABLES

Select
	Outlet_Type as Outlet_Type,
	Round(Sum(Item_Outlet_Sales)/100,0) as Total_sales,
	Round(avg(Item_outlet_sales)/100,0) as Avg_sales,
	count(Item_identifier) as No_items_Sold
From
	Bigmart
Group by
	Outlet_Type
Order by
	Outlet_type 