# Employee Attrition Risk Analysis Dashboard

## Project Overview

Employee attrition is one of the biggest challenges faced by organizations because replacing experienced employees is costly and time-consuming. This project analyzes employee attrition data to identify high-risk employees, understand the factors influencing attrition, and estimate the financial impact of employee turnover.

The project combines Python, SQL, Excel, and Power BI to perform data cleaning, risk scoring, data analysis, and interactive dashboard creation.

---

## Problem Statement

Organizations often struggle to identify employees who are likely to leave before attrition occurs. Without early identification, companies experience increased recruitment costs, productivity loss, and knowledge loss.

This project helps HR teams:

- Identify employees at high risk of attrition
- Analyze the major factors influencing attrition
- Estimate replacement costs
- Support proactive employee retention strategies

---

## Project Workflow

1. Data Collection (IBM HR Analytics Dataset)
2. Data Cleaning using Python
3. Risk Score Calculation
4. Risk Tier Classification
5. SQL Data Analysis
6. Dashboard Development using Power BI
7. Business Insights and Recommendations

---

## Tools & Technologies

| Category | Tool |
|----------|------|
| Programming | Python |
| Libraries | Pandas, NumPy |
| Database | SQL |
| Data Visualization | Power BI |
| Data Preparation | Microsoft Excel |

---

## Features

- Employee Risk Score Calculation
- Employee Risk Tier Classification
- Department-wise Attrition Analysis
- Overtime-based Attrition Analysis
- Job Satisfaction Analysis
- Work-Life Balance Analysis
- Environment Satisfaction Analysis
- Distance From Home Analysis
- Promotion Impact Analysis
- Estimated Employee Replacement Cost
- Interactive Dashboard Filters
- High-Risk Employee Identification

---

## Dashboard Preview

### Employee Overview Dashboard

This dashboard provides an executive-level overview of employee attrition and highlights key workforce metrics for decision-making.

**Key Metrics**

- Total Employees
- High-Risk Employees
- Estimated Replacement Cost
- High-Risk Employees by Department
- Attrition Rate by Risk Tier
- Attrition Rate by Overtime
- Interactive Filters (Department, Risk Tier, Overtime)

![Employee Overview Dashboard](Dashboard_Screenshot.png)

---

### Risk Factor Validation Dashboard

This dashboard validates the major factors contributing to employee attrition by analyzing employee satisfaction, work-life balance, promotion history, commuting distance, and other HR metrics.

**Key Metrics**

- Attrition Rate by Job Satisfaction
- Attrition Rate by Work-Life Balance
- Attrition Rate by Environment Satisfaction
- Attrition Rate by Years Since Last Promotion
- Attrition Rate by Distance From Home
- High-Risk Employee Details (Risk Score & Replacement Cost)
- Interactive Filters (Department, Risk Tier, Overtime)

![Risk Factor Validation Dashboard](Risk_Validation_Screenshot.png)

---

## Risk Score Methodology

A custom Risk Score was developed to estimate the likelihood of employee attrition.

Risk factors considered include:

- Overtime
- Job Satisfaction
- Work-Life Balance
- Environment Satisfaction
- Business Travel
- Distance From Home
- Years Since Last Promotion

Employees were classified into:

| Risk Tier | Description |
|-----------|-------------|
| Low | Low probability of leaving |
| Medium | Moderate probability of leaving |
| High | High probability of leaving |

---

## Business Insights

- Employees working overtime show significantly higher attrition rates.
- Low Job Satisfaction is strongly associated with employee attrition.
- Poor Work-Life Balance increases the likelihood of employees leaving.
- Employees who have not received promotions for several years tend to have higher attrition.
- Certain departments contain a larger concentration of high-risk employees.
- High-risk employees contribute substantially to replacement costs, emphasizing the importance of proactive retention strategies.

---

## Business Recommendation

Organizations should focus on:

- Improving employee work-life balance
- Reducing excessive overtime
- Increasing employee engagement
- Providing timely promotions and career growth opportunities
- Monitoring high-risk employees through HR analytics dashboards
- Prioritizing retention strategies for employees with high replacement costs

---

## Repository Contents

- Employee_Attrition_Dashboard.pbix
- Employee_Attrition_Analysis.xlsx
- employee_risk_final.csv
- employee_attrition_analysis.sql
- Dashboard_Screenshot.png
- Risk_Validation_Screenshot.png
- README.md

---

## Future Improvements

- Machine Learning-based Attrition Prediction
- Predictive Risk Alerts
- Department-wise HR KPI Dashboard
- Real-time Dashboard Integration
- Employee Retention Recommendation System

---

## Author

**Atchaya ADR**

Electronics and Communication Engineering (Honours)

Aspiring Data Analyst

Skills: Python | SQL | Excel | Power BI
