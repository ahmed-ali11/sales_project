
# sales_project
![Capture](https://github.com/ahmed-ali11/sales_project/assets/153124099/a94c8d0e-f297-44a9-96de-e3f149f14a88)

## About

#### This project aims to explore the Sales data to understand top performing products, sales trend of of different products, customer behaviour. The aims is to study how sales strategies can be improved and optimized. The dataset was obtained from [Kaggle Sales Report](https://www.kaggle.com/datasets/ahmedali209/sales-dataset)

## Purpose of This Project
#### The major aim of thie project is to gain insight into the sales data to understand the different factors that affect sales of the different categories.

## About The Data
#### The dataset was obtained from the [Kaggle](https://www.kaggle.com/datasets/ahmedali209/sales-dataset) This dataset contains sales transactions from a three different categories, respectively Furniture, Office Supplies, Technology. The data contains 2 tables which are cst_data and order_data these tables have 17 columns and 9994 rows.

## Business Questions to Answer
### Generic Questions:
1. How many unique cities does the data have?
2. How many unique categories does the data have?
   
### Product:
1. How many unique sub-category does the data have?
2. What is the highest-selling category?
3. What is the highest-selling sub-category?
4. What is the total sales by Segment?
5. What is the city with the largest revenue?
6. What is the most selling product?
9. Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales.


### Sales
1. What is the number of orders made per month, and which month has the highest number of orders?
2. Which of the ship mode brings in the most revenue?
3. Which Region has the lowest sales?
4. What is the average pay for the customers in California, New York, and Texas?

### Customer
1. How many unique customer types does the data have?
2. What segment of the customer has the highest count of orders?

   
## Findings:
- Although some departments has higher sales, on average others can be best. It shows us, some departments has effect on sales on some seasons like Thanksgiving.
- It is same for stores, means that some areas has higher seasonal sales.
- Stores has 3 types as A, B and C according to their sizes. Almost half of the stores are bigger than 150000 and categorized as A. According to type, sales of the stores are changing.
- As expected, holiday average sales are higher than normal dates.
- Top 4 sales belongs to Christmas, Thankgiving and Black Friday times. Interestingly, 22th week of the year is the 5th best sales. It is end of May and the time when schools are closed.
- Christmas holiday introduces as the last days of the year. But people generally shop at 51th week. So, when we look at the total sales of holidays, Thankgiving has higher sales between them which was assigned by Walmart. But, when we look at the data we can understand it is not a good idea to assign Christmas sales in data to last days of the year. It must assign 51th week.
- January sales are significantly less than other months. This is the result of November and December high sales. After two high sales month, people prefer to pay less on January.
- CPI, temperature, unemployment rate and fuel price have no pattern on weekly sales.
##### More detailed finding can be found in notebooks with explorations.

## Future Improvements:
- Data will be made more stationary with different techniques.
- More detailed feature engineering and feature selection will be done.
- More data can be found to observe holiday effects on sales and different holidays will be added like Easter, Halloween and Come Back to School times.
- Markdown effects on model will be improved according to department sales.
- Different models can be build for special stores or departments.
- Market basket analysis can be done to find higher demand items of departments.

### In this project, I used Looker Studio to design an interactive dashboard. [_Let's take a look_.](https://lookerstudio.google.com/u/0/reporting/20ae0877-d174-41f7-9063-fa156f558106/page/wAYmD)
