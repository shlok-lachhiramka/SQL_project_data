SELECT
    job_id,
    job_title,
    name AS company_name,
    salary_year_avg
FROM job_postings_fact jpf
LEFT JOIN company_dim ON
    jpf.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;