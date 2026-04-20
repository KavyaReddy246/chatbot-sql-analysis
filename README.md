# 🤖 Chatbot Conversation Analysis (SQL Project)

A SQL-based data analysis project to evaluate chatbot performance and user interaction patterns.

---

## 📋 Overview

This project focuses on analyzing chatbot interactions to understand user behavior, conversation patterns, and chatbot performance.

It transforms raw chatbot data into actionable insights using SQL by analyzing response time, resolution rate, sentiment, and user interaction trends.

---

## 🎯 Key Objectives

- Analyze chatbot performance using response time and resolution metrics  
- Identify worst-performing intents and repeated user issues  
- Understand user behavior through conversation and intent patterns  
- Evaluate sentiment impact on chatbot performance  
- Detect slow and unresolved conversations  
- Analyze language distribution and user interaction trends 

## 🏗️ Project Workflow

### 🔹 Phase 1 – Data Understanding
- Explored chatbot dataset and identified key fields  
- Understood columns like intent, timestamp, response time, sentiment, and resolution  
- Checked data quality and structure  

### 🔹 Phase 2 – SQL Analysis
- Analyzed total conversations and usage trends  
- Studied intent distribution to identify common user queries  
- Measured response time and identified slow-performing interactions  
- Calculated resolution rate and analyzed unresolved conversations  

### 🔹 Phase 3 – Performance Analysis
- Identified worst-performing intents  
- Detected repeated issues and failure patterns  
- Analyzed peak usage hours and user behavior trends  

### 🔹 Phase 4 – Advanced Insights
- Evaluated sentiment impact on chatbot performance  
- Analyzed language distribution across conversations  
- Used window functions for deeper analysis and pattern detection  

### 🔹 Phase 5 – Insights & Findings
- Derived key insights from chatbot interactions  
- Identified areas for improvement in chatbot performance  
- Provided data-driven recommendations  

## 📊 Key Results

- Analyzed overall chatbot conversations to understand usage patterns  
- Identified worst-performing intents with low resolution rates  
- Detected slow response times affecting chatbot efficiency  
- Found unresolved conversations highlighting failure areas  
- Identified repeated user issues across key intents  
- Observed impact of sentiment on chatbot performance  
- Analyzed language distribution in user interactions  
- Applied window functions for deeper performance insights 

## 📈 Main Insights

- Certain intents show lower resolution rates, indicating areas where the chatbot struggles  
- Slow response times are strongly linked to unresolved conversations  
- Repeated user issues highlight gaps in chatbot handling and knowledge coverage  
- Peak usage patterns suggest high demand during specific hours  
- Negative sentiment is more common in unresolved or delayed interactions  
- Some intents generate higher user dissatisfaction compared to others  
- Language distribution shows diverse user interaction patterns  
- Overall performance indicates opportunities to improve chatbot efficiency and response quality  

## 🧰 Tech Stack

- SQL (Google BigQuery) – Data analysis and querying  
- Excel – Data handling and preprocessing  
- CSV Dataset – Source data for analysis  

## 🖥️ How to Run

1. Open Google BigQuery  
2. Create a dataset and upload the chatbot data (CSV file)  
3. Open the `analysis_queries.sql` file from this repository  
4. Copy and execute the queries in BigQuery  
5. View results and analyze chatbot performance metrics  

## 📂 Project Structure
```
│
├── sql/ # SQL queries
│ └── analysis_queries.sql
│
├── data/ # Dataset
│ └── BI_Chatbot_Interactions.csv
│
├── images/ # Screenshots / outputs
│ └── query_results.png
│
└── README.md # Project documentation
```

## 🧠 Key Learning Outcomes

- Gained hands-on experience in SQL-based data analysis  
- Learned to analyze chatbot and customer interaction data  
- Improved ability to identify patterns and performance issues  
- Developed skills in writing efficient queries using joins and window functions  
- Translated raw data into meaningful business insights  

## 🏁 Final Result

A complete SQL-based chatbot analysis project that provides insights into user behavior, chatbot performance, and areas for improvement, helping drive better decision-making.
