# Instahyre
Introduction - Instahyre job analysis is a project to know the number of jobs available at a particular location with job titles for relevant skills. We created a job portal so that job seekers, as well as employers, can find the job available based on skills like Python, SQL java etc. and the job location.

Problem aimed to solve- The creation of the job portal by using the data taken from web scrapping of the Instahyre website. It helps job seekers to see the holistic view of the number of vacancies, their location and job profile in one place. This involves several steps.
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/94734fe1-e60c-498a-8557-749d0ec26564)

Data description:
1. Since the data had only the job title, company name, establishment year, skills and HR details, the first thing to do was normalise of data to create it into smaller tables by creating a primary and foreign key.
2. There are three tables. Company with class, all company details, jobs
3. Company were to be divided into class, so used K-cluster to divide the company on the basis of their size.
4. Using of NTLK library to enable miss-spell searching.

Creation of Insights:
We used all the useful tools from Python to SQL to analyse the data to generate meaningful insights.
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/60251143-e9a6-46af-a0fa-c731e30a9d59)
First, we scrapped the data using the Selenium library and saved the files in CSV format.
Second, using Excel and power bi to create the schema.
Third, SQL generates meaningful insights, as shared below.
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/a5b0bdb1-8af7-4faf-b4b6-334af76b8634)
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/21168497-271f-4dfe-a171-4bcaa4a31303)
The fifth step is hosting by using a flask and creating the job portal that looks like it.
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/cce01fe9-3ecf-4a4a-9cb4-68387da63aef)
To see the general view of the opening.
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/f5f2c00c-fd0e-4a36-81dd-2c008f1044ca)

Challenges faced:
![image](https://github.com/Dataanthusiast/Instahyre/assets/128246911/4d418d35-9dfc-4b65-872c-2231c981d46f)


