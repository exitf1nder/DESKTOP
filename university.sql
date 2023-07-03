SELECT DISTINCT university_name, COUNT(full_name) as count_students
FROM universities
JOIN students USING(university_id)
WHERE year = 2020
GROUP BY university_name, count_students
