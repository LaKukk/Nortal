-- select 'Oh no, an SQL just to keep Liquibase happy. ' ||
--        '#hiddenErrors #worksOnMyMachine' from (values(0));

-- 4. Migrate work log times from REPAIR_JOB table to WORK_LOG table
INSERT INTO WORK_LOG(START_TIME, END_TIME, REF_REPAIR_JOB, MECHANIC, DESCRIPTION)
SELECT START_TIME, END_TIME, ID, 'Mike Mechan' AS MECHANIC, DESCRIPTION
FROM REPAIR_JOB
WHERE 1 = 1;

-- 5. Migrate parts from REPAIR_JOB table to the new SPARE_PART table
