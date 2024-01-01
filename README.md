# sales_project
## About

#### This project aims to explore the Sales data to understand top performing products, sales trend of of different products, customer behaviour. The aims is to study how sales strategies can be improved and optimized. The dataset was obtained from [Kaggle Sales Report](https://www.kaggle.com/datasets/ahmedali209/sales-dataset)

## Purpose of This Project
#### The major aim of thie project is to gain insight into the sales data to understand the different factors that affect sales of the different categories.

## About The Data
#### The dataset was obtained from the [Kaggle](https://www.kaggle.com/datasets/ahmedali209/sales-dataset) This dataset contains sales transactions from a three different categories, respectively Furniture, Office Supplies, Technology. The data contains 2 tables which are cst_data and order_data these tables have 17 columns and 9994 rows.

## Business Questions to Answer
### Generic Questions:
1. How many unique cities does the data have?
2. In which city is each branch?
### Product:
1. How many unique product lines does the data have?
2. What is the most common payment method?
3. What is the most selling product line?
4. What is the total revenue by month?
5. What month had the largest COGS?
6. What product line had the largest revenue?
7. What is the city with the largest revenue?
8. What product line had the largest VAT?
9. Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
10. Which branch sold more products than average product sold?
11. What is the most common product line by gender?
12. What is the average rating of each product line?

### Sales
1. Number of sales made in each time of the day per weekday
2. Which of the customer types brings the most revenue?
3. Which city has the largest tax percent/ VAT (Value Added Tax)?
4. Which customer type pays the most in VAT?

### Customer
1. How many unique customer types does the data have?
2. How many unique payment methods does the data have?
3. What is the most common customer type?
4. Which customer type buys the most?
5. What is the gender of most of the customers?
6. What is the gender distribution per branch?
7. Which time of the day do customers give most ratings?
8. Which time of the day do customers give most ratings per branch?
9. Which day fo the week has the best avg ratings?
10. Which day of the week has the best average ratings per branch?

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
