# 🚕 UrbanCab Fare Analysis & Power BI Dashboard

An end-to-end **Data Analytics project** analyzing urban cab rides to understand fare patterns, ride demand, vehicle performance, revenue, and supply-demand trends.

The project combines **Python, SQL, PostgreSQL, and Power BI** to transform raw ride data into meaningful business insights.

---

## 📌 Project Overview

UrbanCab ride data contains information about trips, fares, vehicle types, ride requests, driver availability, traffic levels, and demand-supply conditions.

The main objective of this project is to answer business questions such as:

* What are the overall revenue and average fare?
* Which vehicle types generate the most revenue?
* When is ride demand highest?
* How does distance affect the final fare?
* Which cities have the highest ride activity?
* How does demand compare between weekdays and weekends?
* Which periods show higher demand-supply pressure?

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                                   |
| ------------------- | ----------------------------------------- |
| 🐍 Python           | Data cleaning & exploratory data analysis |
| 🐼 Pandas           | Data manipulation                         |
| 🔢 NumPy            | Numerical analysis                        |
| 📊 Matplotlib       | Data visualization                        |
| 📈 Seaborn          | Statistical visualization                 |
| 🗄️ PostgreSQL      | Database analysis                         |
| 💻 SQL              | Business queries & aggregations           |
| 📊 Power BI         | Interactive dashboard                     |
| 📓 Jupyter Notebook | Python analysis                           |

---

## 📂 Dataset

The dataset contains **1,000 urban cab ride records** with fields including:

* User_ID
* Driver_Name
* City
* Ride_Date
* Hour_of_Day
* Day_of_Week
* Distance_km
* Traffic_Level
* Type_of_vehicle
* No_of_active_drivers
* Ride_Requests
* Demand_Supply_Ratio
* Trip_Duration
* Base_Fare
* Surge_Multiplier
* Final_Fare

Additional fields were created during analysis for:

* Time Period
* Day Type

---

## 🔍 Project Workflow

### 1. Data Understanding

* Loaded the dataset using Pandas
* Examined rows, columns, data types, and descriptive statistics
* Checked missing values
* Checked duplicate records
* Reviewed numerical distributions

### 2. Data Cleaning

* Handled missing driver names
* Converted and validated relevant data types
* Checked duplicate records
* Investigated potential numerical outliers using the IQR method
* Created additional analytical features

### 3. Exploratory Data Analysis

Performed analysis on:

* Fare distribution
* Distance vs Final Fare
* Revenue by vehicle type
* Average fare by vehicle type
* Ride demand by hour
* Day-of-week demand
* Weekday vs weekend demand
* Driver availability
* Demand-supply ratio
* City-level ride activity

---

## 💰 Fare Analysis

Analyzed the relationship between:

**Distance → Base Fare → Surge Multiplier → Final Fare**

Key visualizations include:

* Final Fare distribution
* Distance vs Final Fare
* Average fare by vehicle type
* Fare per KM
* Fare categories

---

## 🚘 Vehicle Performance Analysis

Vehicle types were compared using:

* Total revenue
* Average fare
* Ride volume
* Revenue per ride

This provides multiple perspectives instead of evaluating vehicle performance using only revenue.

---

## 🕐 Demand & Operations Analysis

Analyzed ride demand across:

* Hour of the day
* Day of the week
* Weekday vs weekend
* Peak periods
* Driver availability
* Demand-supply ratio

These analyses help identify periods where demand and available supply may differ.

---

## 🗄️ SQL Analysis

PostgreSQL was used to perform business-oriented SQL analysis.

Example analyses include:

```sql
-- Total Revenue
SELECT SUM("Final_Fare") AS total_revenue
FROM postgrespg;
```

```sql
-- Average Fare
SELECT AVG("Final_Fare") AS avg_fare
FROM postgrespg;
```

```sql
-- Revenue by Vehicle Type
SELECT
    "Type_of_vehicle",
    SUM("Final_Fare") AS total_revenue
FROM postgrespg
GROUP BY "Type_of_vehicle"
ORDER BY total_revenue DESC;
```

Other SQL analyses include:

* Peak-hour ride demand
* Top cities by ride count
* Average fare by vehicle
* Revenue by fare category
* City revenue ranking

---

## 📊 Power BI Dashboard

The Power BI dashboard converts the analysis into an interactive business-reporting solution.

### Dashboard Areas

**Demand & Operations**

* Hourly ride demand
* Day-of-week demand
* Peak periods
* Demand-supply analysis
* Driver availability

**Fare & Customer Analysis**

* Total revenue
* Average fare
* Fare distribution
* Distance vs fare
* Fare per KM
* Vehicle-wise fare analysis

### Dashboard Features

* KPI cards
* Interactive charts
* Slicers
* Trend analysis
* Category comparisons
* Business-focused visual storytelling

---

## 📁 Project Files

```text
UrbanCab-Fare-Analysis/
│
├── 📊 UrbanCabFare.pbix
├── 📓 UrbanCabFare-analysis.ipynb
├── 🗄️ UrbanCabFare-analysis.sql
├── 📄 UrbanCabFare.csv
├── 📖 README.md
├── 📋 requirements.txt
└── 🚫 .gitignore
```

---

## 📈 Key Skills Demonstrated

**Data Analysis**

* Data Cleaning
* Exploratory Data Analysis
* Data Validation
* Outlier Analysis
* Feature Engineering

**Python**

* Pandas
* NumPy
* Matplotlib
* Seaborn

**SQL**

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE Statements
* CTEs

**Business Intelligence**

* Power BI
* KPI Development
* Dashboard Design
* Data Visualization
* Business Insights

**Database**

* PostgreSQL
* SQL-based Business Analysis

---

## 🎯 Business Value

This project demonstrates how raw transportation data can be transformed into actionable analytical insights by combining:

**Raw Data → Python EDA → SQL Analysis → Power BI Dashboard → Business Insights**

---

## 👨‍💻 Author

**Siril K S**

Aspiring Data Analyst | Python | SQL | Power BI | PostgreSQL

📌 GitHub: `github.com/sirilks`

📌 LinkedIn: `linkedin.com/in/sirilks`

---

⭐ If you find this project useful, feel free to explore the repository and dashboard.
