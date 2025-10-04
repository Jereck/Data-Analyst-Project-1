# Chinook SQL Project

## Introduction
This project uses data from the [Chinook Database](https://github.com/lerocha/chinook-database), a sample dataset that simulates a digital music store.  
The purpose of this project is to strengthen my SQL skills as I begin my journey into data analysis and data science. I focused on writing queries to answer realistic business questions and extract actionable insights from relational data.  


## Dataset Overview
The Chinook database includes several related tables such as:
- **Customers**: customer details
- **Invoices**: purchases and billing info
- **InvoiceLines**: individual tracks sold
- **Tracks**: songs with album/genre/artist links
- **Albums**: album information
- **Artists**: music artists
- **Employees**: sales support staff
- **Playlists**: curated track groupings  


## Tools & Skills Used
- **PostgreSQL** for querying  
- **Joins** (INNER, LEFT, self joins)  
- **Aggregations** (`SUM`, `COUNT`, `AVG`)  
- **Subqueries & CTEs** for organizing logic  
- **Window functions** (ranking, running totals)  
- **Data cleaning/formatting** with SQL functions  


## My Process
1. Begin by exploring each table to understand the data and values available  
2. Identify potential business questions that can be answered with the data  
3. Start with simple queries to build familiarity, then progress toward more complex analysis using joins, CTEs, and window functions 


## Example Business Questions Answered
- Who are the top 5 artists by total sales revenue?  
- What genres generate the most revenue in the U.S.?  
- Which customers are the highest spenders?  
- Which employees bring in the most sales?  
- What are the most popular playlists and tracks?  


## How to Run This Project
1. Install PostgreSQL  
2. Download and set up the [Chinook Database](https://github.com/lerocha/chinook-database) in your PostgreSQL instance  
3. Clone this repository  
4. Run queries in `chinook_queries.sql` (or open in pgAdmin/psql)  


## Results & Insights
Some key takeaways from my analysis include:  
- Rock is the most purchased genre, accounting for nearly half of all track sales  
- USA customers generated the highest revenue overall  
- The top 5 customers account for ~20% of total revenue  
- Employee Jane Peacock consistently ranks as the top sales rep  

