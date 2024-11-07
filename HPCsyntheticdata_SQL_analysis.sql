-- SQLite
SELECT name FROM sqlite_master WHERE type='table';

SELECT * FROM hpc_data LIMIT 5;

PRAGMA table_info(hpc_data);

SELECT COUNT(*) FROM hpc_data;