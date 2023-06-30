SELECT count(distinct(Company)) FROM capston.`company (2)`;
ALTER TABLE `company (2)` RENAME company;
ALTER TABLE `jobs (1)` RENAME job;

select * from company;
select * from job;

select count(distinct(job_id)) from company order by 1;
select count(distinct(job_id)) from job order by 1;

-- 1. Top 10 companies which highest job openings:-- 
Select 
Company, count(job_id) Total_job_count 
from company 
group by 1 order by Total_job_count desc limit 10;

-- 2. Employee capacity-wise total count of companies and the job openings
SELECT 
Emp_count as No_of_Employee_Category ,
count(distinct(Company)) as Company, count(distinct(Job_id)) as 
Number_of_jobs_opportunity 
FROM company GROUP BY 1
ORDER BY 3 desc;

-- 3. Which location has the most job openings - company wise count - in descresing order will make a chart .
select 
Location, count(distinct(job_id)) Total_job_opportunity 
from job group by 1 
order by 2 desc;

-- 4 What are the most common skills required by companies - count of skills can work 
SELECT 
Skills, count(company) Count_of_companies
from  company
group by 1
order by 2 desc;


-- 5.Which company has the highest number of job openings like showing the job distributions in chart with location.
SELECT Company,
Location,
count(job.job_id) Count_of_jobs 	
from job join company on job.job_ID = company.Job_id
group by 1,2
order by 3 desc;

-- 6.How many job opening are there are available in a particular location 
Select 
Location, count(job_id) Count_of_jobs
from job
group by 1
order by 2 desc;

-- 7. What is the distribution of job openings by job title? - like pie chart can work here to show the count in percentage over all.
Select Job_title,
count(Job_id) Count_of_jobs, avg(Job_id)
Average_number_of_job_Openings
from job
group by 1
order by 2 desc;

-- 8. What is the distribution of job openings by HR representative?
SELECT
HR, count(Job_title) as Total_no_of_job_title
from job
group by 1
order by 2 desc;


--  9. List of job openings by HR representative?-- 
SELECT
HR, group_concat( DISTINCT(Job_title)
) as List_of_job_handled
FROM job
group by 1;

-- 10. Which job titles have the most job openings?

Select Job_title,
count(Job_id) as Total_job_openings
from job
group by 1
order by 2 desc;

-- --11 To know the job openings of different companies and list the job titles for each company.
Select
Company,
count(job.job_id) as Total_Job_Openings,
group_concat(Job_Title) List_of_job_titles
from job join company 
on job.job_id=company.job_id
group by 1;

-- 12 Group concatenation of the job locations and list the companies for each location:
Select
Location,
count(company.company_id) as Total_Companies_count,
group_concat(Company) List_of_Company
from job join company 
on job.job_id=company.job_id
group by 1;












