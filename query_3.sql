SELECT
    g.subject_id,
    s.group_id,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON g.student_id = s.id
WHERE g.subject_id = 1
GROUP BY g.subject_id, s.group_id;