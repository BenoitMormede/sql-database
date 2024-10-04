# sql-database
Iron Hack Week 4 Project


[Presentation slides](https://docs.google.com/presentation/d/1yyBl1ezamA5_1PUsWv1r5kydr0_GJvJvMRxgpDZGdlM/edit#slide=id.g3083f8e9340_8_0)

Welcome to The Happiness Movement Project.
By Benoit, Diego, Henning, Nancy, Olivier 

# **Happiness Analysis Project**
### **Overview**
This project is a contribution to the growing global movement of understanding the factors that drive happiness. By analyzing various socio-economic and governance indicators alongside happiness scores, the goal is to better inform government policies and initiatives that aim to improve the well-being of populations. The core idea is to examine how factors such as governance quality, economic stability, household size, and work-life balance influence happiness levels across different countries. The insights drawn from this analysis can serve as a valuable resource for governments and policymakers in crafting policies that promote higher levels of happiness and overall life satisfaction.

### **Objective**
The objective of this project is to understand which factors have the most significant impact on happiness and to provide governments and organizations with data-driven insights. The key variables explored include:
- Economic Indicators (GDP per capita, inflation)
- Governance Indicators (political stability, government effectiveness)
- Household Size
- Average Weekly Working Hours
- Happiness Score (sourced from the World Happiness Report)
  
### **Data Sources**
The following datasets were used in this project:
1. **World Happiness Report** (Kaggle): Happiness score data across various countries.
2. **World Bank**: Governance and economic indices such as political stability, regulatory quality, and GDP per capita.
3. **United Nations**: Average household size data.
4. **International Labour Organization (ILO)**: Average working hours per week for different countries.
   
### **Steps for Data Preparation and Analysis**
1. **Data Collection**:
    - The happiness score dataset was obtained from Kaggle (World Happiness Report 2022).
    - Governance and economic indicators were sourced from the World Bank database, including political stability, regulatory quality, and GDP per capita.
    - Household size data was collected from the United Nations database.
    - Average working hours per week data was obtained from the International Labour Organization (ILO).
      
2. **Data Cleaning in Python**:
    - Each dataset was cleaned to ensure consistent values across the various columns. Missing or inconsistent values were handled appropriately.
    - Country names were standardized across all datasets to ensure smooth merging during analysis.
    - Duplicate entries, if any, were removed and values were checked for accuracy.
      
3. **Data Export to SQL**:
    - Once the datasets were cleaned, they were exported into an SQL database. Each dataset was stored in a separate table: happiness data, governance indicators, economic indices, household size, and working hours.
    - Each table was carefully structured to ensure consistent columns, with the "Country" column serving as the key for merging the tables.
      
5. **Merging in SQL**:
    - The happiness score was merged with each of the other datasets in SQL to create comprehensive tables that allow for the analysis of happiness against governance, economics, household size, and working hours.
    - SQL JOIN operations were used to combine the datasets based on the "Country" column, ensuring that each country had a corresponding happiness score and the associated indicators.
      
6. **Data Export and Visualization in Python**:
    - After merging the tables in SQL, they were exported back into Python for visualization and analysis.
    - Scatter plots were created to visualize the relationships between happiness and various factors:
        - **Happiness vs. GDP Per Capita**
        - **Happiness vs. Governance Quality**
        - **Happiness vs. Household Size**
        - **Happiness vs. Average Working Hours**
    - These plots were used to observe correlations and trends, providing insights into how different factors contribute to national happiness.
      
### **Key Findings**:
- **Economic Factors**: There is a positive correlation between GDP per capita and happiness, though the relationship shows diminishing returns after a certain income level.
- **Governance**: Countries with higher governance quality, measured by indicators like political stability and government effectiveness, report higher happiness levels.
- **Household Size**: Smaller household sizes are often associated with higher happiness scores, particularly in wealthier nations.
- **Work-Life Balance**: Shorter average working hours tend to correlate with higher happiness scores, highlighting the importance of work-life balance for well-being.
  
### **Impact and Policy Implications**:
This analysis aims to provide insights into how various factors influence happiness, with the ultimate goal of informing better government policies. By understanding the importance of governance quality, economic stability, and work-life balance, governments can develop targeted policies that enhance the happiness of their populations. Some recommendations for policy interventions include:
- Promoting flexible work environments to improve work-life balance.
- Strengthening governance institutions to foster political stability and accountability.
- Ensuring equitable access to healthcare, education, and economic resources to improve the overall quality of life.
  
### **Conclusion**:
The data-driven approach in this project offers a comprehensive look at the complex factors that contribute to happiness. By analyzing key variables such as governance, economy, and social structures, this project adds valuable insights to the ongoing conversation about happiness and well-being. The findings underscore the importance of a balanced approach that considers both material wealth and socio-political factors in promoting long-term happiness.
