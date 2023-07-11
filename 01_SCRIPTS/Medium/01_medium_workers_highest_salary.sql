-- Workers With The Highest Salaries --

SELECT
    t.worker_title
FROM
    worker AS w
    INNER JOIN title AS t
    ON w.worker_id = t.worker_ref_id
WHERE
    w.salary = (
    SELECT
        MAX(salary)
    FROM
        worker
    );