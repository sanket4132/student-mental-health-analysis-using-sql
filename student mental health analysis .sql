CREATE TABLE StudentMentalHealth (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(100),
    SleepDuration FLOAT,
    StressLevel VARCHAR(20),
    MentalHealthAffected VARCHAR(5)
);
INSERT INTO StudentMentalHealth (Age, Gender, Department, SleepDuration, StressLevel, MentalHealthAffected)
VALUES
(21, 'Male', 'Computer Science', 5.5, 'High', 'Yes'),
(20, 'Female', 'IT', 7.0, 'Low', 'No'),
(22, 'Male', 'Electronics', 6.5, 'Medium', 'No'),
(19, 'Female', 'Computer Science', 4.0, 'High', 'Yes'),
(21, 'Other', 'Management', 8.0, 'Low', 'No');

#1) count how many student are effected
select MentalHealthAffected,count(*) AS count
from StudentMentalHealth 
group by  MentalHealthAffected;

#2) Average sleep duration of affected vs. not affected

select MentalHealthAffected,avg(SleepDuration) as avgsleep
from StudentMentalHealth 
group by MentalHealthAffected;

#3) Number of students in each stress level
select StressLevel , count(*) as count
from StudentMentalHealth 
group by StressLevel;

 #4) Department-wise affected students
SELECT Department, COUNT(*) AS AffectedCount
FROM StudentMentalHealth
WHERE MentalHealthAffected = 'Yes'
GROUP BY Department;

#"Most students reporting high stress and sleep duration under 6 hours also/
#reported being affected by mental health issues — especially in Computer Science."



