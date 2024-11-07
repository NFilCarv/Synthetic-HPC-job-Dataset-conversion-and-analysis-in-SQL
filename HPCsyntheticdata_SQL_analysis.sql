-- SQLite
SELECT name FROM sqlite_master WHERE type='table';

SELECT * FROM hpc_data LIMIT 5;

PRAGMA table_info(hpc_data);

SELECT COUNT(*) FROM hpc_data;

SELECT DISTINCT qos FROM hpc_data;

SELECT MAX(run_time) FROM hpc_data;

SELECT MIN(run_time) FROM hpc_data;

SELECT num_cores_req, COUNT(*) FROM hpc_data GROUP BY num_cores_req;

SELECT * FROM hpc_data ORDER BY mean_power ASC;

SELECT * FROM hpc_data WHERE num_gpus_req = 0 AND num_cores_req < 4;

SELECT mem_req, AVG(run_time) 
FROM hpc_data 
GROUP BY mem_req;

SELECT num_gpus_req, COUNT(*) FROM hpc_data GROUP BY num_gpus_req;

SELECT priority, COUNT(*)
FROM hpc_data
GROUP BY priority
HAVING COUNT(*) > 1;

SELECT * FROM hpc_data 
WHERE run_time IN (0, (SELECT MAX(run_time) FROM hpc_data));
