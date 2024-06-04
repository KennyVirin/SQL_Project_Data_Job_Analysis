/*

    Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries.
- Why? Aims to highlight the top-paying opportunities for Data Analysts, offering insights into employment options 
  and location flexibility.

*/

--The top 30 highest-paying Data Analyst roles with non null yearly salary, that are available remotely or in France
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
