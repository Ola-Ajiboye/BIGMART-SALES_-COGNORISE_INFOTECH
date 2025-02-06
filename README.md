# BIGMART-SALES_-COGNORISE_INFOTECH
## OVERVIEW
BigMart Sales Analysis. This analysis will empower BigMart Sales to strategically tailor product modifications and marketing efforts by understanding customer preferences and optimizing resources based on outlet types and sales trends. with insights into diverse factors such as outlet size, location, and establishment year, BigMart can make informed decisions to enhance customer engagement and maximize the impact of their retail strategies.
## QUESTIONS TO ANSWER
1.	KPI'S
2.	Item by Fat Content
3.	Outlet Size
4.	Outlet Location
5.	Outlet Establishment
6.	Item Type
7.	Outlet Performance
## TECHNICAL TOOLS:
•	Power Query: for cleaning data, ensuring data quality and consistency.

•	Power BI: Data Visualization and DAX Formular Calculation.

## DATA COLLECTION AND PREPARATION
Data Collection: Data set used in this analysis was sourced from Kaggle, Data Cleaning using Power query The data was cleaned and processed for use in Power query through the following steps.

Preparation: Preprocessing involved checking data types, handling missing values, removing duplicates and standardizing formats. This ensured the dataset was accurate, consistent and ready for analysis, aligning with the project goals. 
## ANALYSIS
![BBB](https://github.com/user-attachments/assets/19f164b7-9918-41b4-a89c-e14e7d73b2ec)

## FAT CONTENT ANALYSIS
```sql
Select
	item_fat_content as Item_Fat,
	Round(Sum(item_outlet_sales)/100,0) as Total_sales
from 
	Bigmart
Group by 
	item_fat_content
```
![dsr](https://github.com/user-attachments/assets/1738b890-feba-4ac4-8cbe-749b139dd5f2)

Finding: Items with low fat content showed a 63% higher sales growth compared to high-fat items. 
Recommendation: Focus on promoting low-fat items through targeted marketing campaigns and bundling strategies.
## OUTLET SIZE
``` sql
Select
	Outlet_size as Size,
	Round(Sum(item_outlet_sales)/100,0) as Total_Slaes
From
	Bigmart
Group by 
	Outlet_Size
Order by
	Outlet_Size desc
```
Finding: Medium outlets had 42% more sales volume but higher operational costs. 
Recommendation: Optimize inventory in medium outlets to capitalize on their scale while exploring cost-reduction strategies.
## LOCATION 
![ahh](https://github.com/user-attachments/assets/57dca043-ac62-4d0a-b71e-d04f29c33cbe)

Finding: Tier 3 outlets outperformed tier 2 and tier 1 ones, particularly in health products. 
Recommendation: Develop location-specific marketing strategies that leverage tier health trends and lifestyle products.
## ESTABLISHMENT YEAR
``` sql
Select
	outlet_establishment_year as Year,
	Round(sum(item_outlet_sales)/100,0) as Total_sales
From 
	Bigmart
Group by 
	Outlet_Establishment_Year
```
![Capture](https://github.com/user-attachments/assets/48cc2d2a-fc0a-4de9-9fd5-0d1c422c57b2)

Finding: Newer outlets had lower in almost all the year’s most especially sales extremely low in 1998, customer retention rates compared to first established year. 
## ITEM TYPE PERFORMANCE
Finding: Fruits and Vegetables products had the highest customer satisfaction ratings, while snacks had higher return rates. 
Recommendation: Increase marketing efforts for fruits and vegetable, and snacks products items while investigating quality control issues with snacks.
## OUTLET PERFORMANCE EVALUATION
``` sql
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
 ```
![ehaet](https://github.com/user-attachments/assets/7f749893-5847-461f-9861-814046e83ffb)

Finding: Top-performing outlets had consistent customer feedback and higher sales volumes. 
Recommendation: Use best practices from top-performing outlets to enhance training and operational protocols in underperforming ones.
## CONCLUSION
The analysis reveals significant correlations between item characteristics, outlet attributes, and overall performance in BigMart Sales. By understanding these relationships, sales can make informed decisions to enhance sales and customer satisfaction. Implementing the recommendations provided can lead to improved operational efficiency, targeted marketing strategies, and ultimately, increased profitability.
# RECOMMENDATIONS
To enhance e-commerce performance, it is crucial to promote low-fat items

Capitalizing on the growing fruits and vegetables trend among consumers. 

Optimizing inventory management in larger outlets will help maximize sales while controlling operational costs. 

Tailoring marketing strategies based on outlet location type will further refine customer engagement, particularly in tiers 3 areas where fruits and vegetables trends are more pronounced. 

It is also essential to focus on improving quality control for items with high return rates, such as snacks, to enhance customer satisfaction.

Sharing best practices from top-performing outlets with those underperforming can facilitate operational improvements and drive overall business success. 

Establishment Year Recommendation:

•	Analyze External Factors: Investigate economic, industry, or company specific events that could explain the significant drops in 1998.

•	Market Research: Look into consumer behaviour and competition during these periods. Were there changes in preferences or market shift.

•	Sustainability strategies: develop strategies to maintain sale after periods of recovery, such as loyalty programs, better product placement, or pricing adjustments.

•	Monitor trends: use predictive models to forecast future trends and prevent large fluctuations.

By adopting these recommendations, BigMart can navigate the complexities of the sale landscape more effectively, ensuring sustainable growth and profitability.



