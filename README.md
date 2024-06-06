
EN cours--------------

-All these query have been for job posting remote or located in France as a Data Analyst to be more helpful for me in my job hunting.
-I have also look at a higher sample 30 ove the 5 use by Luke Barousse in his course .


# Introduction
Bblbllblbl
blbllblblbl
lblblblb

SQL queries ? Check them out here : [project_sql folder](/project_sql/)
# Background

ksjdks
### The questions I wanted to answer through my SQL queries were:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:

- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.

# The Analysis
qlskdjqsldql
### 1. Top Paying Data Analyst Jobs
slkdlskdl
```sql
SELECT 
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type ,
    salary_year_avg,
    job_posted_date
FROM 
    job_postings_fact
    LEFT JOIN company_dim AS company ON job_postings_fact.company_id = company.company_id
WHERE
    job_title_short LIKE 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    (
            job_location = 'Anywhere' OR
            job_location = 'France'
        )
ORDER BY
    salary_year_avg DESC
LIMIT 30
;
```
here breakdown  lskdl:

### 2. Skills for Top Paying Jobs
sdkfsdjfk
### 3. In-Demand Skills for Data Analysts
sdfsdkf
### 4. Skills Based on Salary
sdfs
### 5. Most Optimal Skills to Learn
sdfs

# What I Learned


Throughout this adventure, I've turbocharged my SQL toolkit with some serious firepower:

- **🧩 Complex Query Crafting:** Mastered the art of advanced SQL, merging tables like a pro and wielding WITH clauses for ninja-level temp table maneuvers.
- **📊 Data Aggregation:** Got cozy with GROUP BY and turned aggregate functions like COUNT() and AVG() into my data-summarizing sidekicks.
- **💡 Analytical Wizardry:** Leveled up my real-world puzzle-solving skills, turning questions into actionable, insightful SQL queries.
# Conclusion
### Insights
sqjdhqs
### Closing Thoughts
dqksjdk