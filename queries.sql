SELECT * FROM appointments;
SELECT * FROM billing;
SELECT * FROM hospitalstaff;
SELECT * FROM malpracticecases;
SELECT * FROM medicalhistory;
SELECT * FROM medications;
SELECT * FROM patients;
SELECT * FROM doctors;

-- Question 1:
-- Find the names of all patients who were admitted in February 2025 and were treated by an active doctor.


-- WITH ps_ds_records AS (
-- 	SELECT 
-- 	ps.first_name,
-- 	ps.last_name,
-- 	gender,
-- 	birth_date,
-- 	date_admitted,
-- 	ds.first_name AS dr_fname,
-- 	ds.last_name AS dr_lname,
-- 	is_active
-- 	FROM patients AS ps
-- 	INNER JOIN doctors AS ds
-- 	ON ps.doctor_id = ds.doctor_id
-- )


-- SELECT * 
-- FROM ps_ds_records
-- WHERE is_active = true
-- AND EXTRACT(MONTH FROM date_admitted) = 2
-- AND EXTRACT(YEAR FROM date_admitted) = 2025;















-- Question 2:
-- List the total number of appointments each doctor has, along with their names and specializations.



-- WITH doctors_records AS (
-- 	SELECT 
-- 	first_name,
-- 	last_name,
-- 	COUNT(*) AS total_appointments
-- 	FROM doctors AS ds
-- 	INNER JOIN appointments AS appts
-- 	ON ds.doctor_id = appts.doctor_id
-- 	GROUP BY first_name, last_name
-- ),
-- specs AS (
-- 	SELECT 
-- 	first_name,
-- 	last_name,
-- 	specialization
-- 	FROM doctors
-- )




-- SELECT 
-- ds.first_name,
-- ds.last_name,
-- total_appointments,
-- specialization
-- FROM doctors_records AS ds
-- INNER JOIN specs AS sps
-- ON ds.first_name = sps.first_name
-- AND ds.last_name = sps.last_name







-- Question 3:
-- Find the average billing amount for patients who are deceased.


-- SELECT 
-- ROUND(AVG(amount),2) AS avg_amount
-- FROM patients AS ps
-- INNER JOIN billing AS bg
-- ON ps.patient_id = bg.patient_id
-- WHERE is_deceased = true;













-- Question 4:
-- List all patients who have been prescribed more than one medication.




-- SELECT 
-- first_name,
-- last_name,
-- COUNT(*) AS total_medications
-- FROM patients AS ps
-- INNER JOIN medications AS ms
-- ON ps.patient_id = ms.patient_id
-- GROUP BY first_name,last_name
-- HAVING COUNT(*) > 1;






-- Question 5:
-- Find the names of patients who have had at least one malpractice case filed against their doctor.

-- SELECT 
-- ps.first_name,
-- ps.last_name,
-- COUNT(*) AS total_ags
-- FROM patients AS ps
-- INNER JOIN doctors AS ds
-- ON ps.doctor_id = ds.doctor_id
-- INNER JOIN malpracticecases AS ms
-- ON ms.patient_id = ps.patient_id
-- AND ms.doctor_id = ds.doctor_id
-- GROUP BY ps.first_name,
-- ps.last_name













-- Question 6:
-- Find the top 3 doctors with the highest total billing amounts for their patients, along with the total amount.





-- SELECT 
-- ds.first_name,
-- ds.last_name,
-- SUM(amount) AS total_billings
-- FROM patients AS ps
-- INNER JOIN doctors AS ds
-- ON ps.doctor_id = ds.doctor_id
-- INNER JOIN billing AS bg
-- ON bg.patient_id = ps.patient_id
-- GROUP BY ds.first_name,ds.last_name
-- ORDER BY SUM(amount) DESC
-- LIMIT 3;






-- Question 7:
-- Find the patient(s) with the longest stay in the hospital.

-- SELECT 
-- first_name,
-- last_name,
-- COALESCE(TO_CHAR(AGE(date_discharged, date_admitted), ' DD "days"'), 'Still at hospital') 
-- AS hospital_stay
-- FROM patients
-- ORDER BY COALESCE(TO_CHAR(AGE(date_discharged, date_admitted), ' DD "days"'), 'Still at hospital') DESC









-- Question 8:
-- Find the doctor(s) who have treated the most deceased patients.


-- SELECT
-- ds.first_name,
-- ds.last_name,
-- COUNT(*) AS total_treated_patients
-- FROM doctors AS ds
-- INNER JOIN patients AS ps
-- ON ds.doctor_id = ps.doctor_id
-- WHERE is_deceased = true
-- GROUP BY ds.first_name,ds.last_name
-- ORDER BY COUNT(patient_id) DESC






-- Question 9:
-- Find the patient(s) who have the highest total billing amount.



-- SELECT 
-- first_name, 
-- last_name,
-- SUM(amount) AS total_amount
-- FROM patients AS ps
-- INNER JOIN billing AS bg
-- ON ps.patient_id = bg.patient_id
-- GROUP BY first_name, last_name
-- ORDER BY SUM(amount) DESC








-- Question 10:
-- Find the month with the highest number of appointments.



-- SELECT 
-- TO_CHAR(appointment_date, 'Month') AS month_name,
-- COUNT(*) AS total_appts
-- FROM appointments
-- GROUP BY TO_CHAR(appointment_date, 'Month') 
-- ORDER BY COUNT(*) DESC









-- Question 11:
-- Find the patient(s) who have been prescribed the most medications.


-- SELECT 
-- first_name,
-- last_name,
-- COUNT(*) AS total_medications
-- FROM patients AS ps
-- INNER JOIN medications AS ms
-- ON ps.patient_id = ms.patient_id
-- GROUP BY first_name, last_name
-- ORDER BY COUNT(*) DESC











-- Question 12:
-- Find the doctor(s) who have the highest average billing amount per patient.

-- SELECT 
-- ds.first_name,
-- ds.last_name,
-- ROUND(AVG(amount),2) AS avg_billing
-- FROM doctors AS ds
-- INNER JOIN patients AS ps
-- ON ds.doctor_id = ps.doctor_id
-- INNER JOIN billing AS bg
-- ON bg.patient_id = ps.patient_id
-- GROUP BY ds.first_name,
-- ds.last_name
-- ORDER BY ROUND(AVG(amount),2) DESC





-- Question 13:
-- Find the patient(s) who have the most appointments.

-- SELECT 
-- first_name,
-- last_name,
-- COUNT(appts.patient_id) AS total_appts
-- FROM appointments AS appts
-- INNER JOIN patients AS ps
-- ON appts.patient_id = ps.patient_id
-- GROUP BY first_name,last_name
-- ORDER BY COUNT(appts.patient_id) DESC





-- Question 14:
-- Find the patient(s) who have been admitted more than once.



-- SELECT 
-- ps.first_name,
-- ps.last_name,
-- COUNT(appts.patient_id) AS total_admitted
-- FROM appointments AS appts
-- INNER JOIN patients AS ps
-- ON appts.patient_id = ps.patient_id
-- GROUP BY ps.first_name, ps.last_name
-- HAVING COUNT(appts.patient_id) > 1
-- ORDER BY total_admitted DESC;






-- Question 15:
-- Find the doctor(s) who have the highest number of malpractice cases.



-- SELECT 
-- first_name,
-- last_name,
-- COUNT(ds.doctor_id) AS total_ms_cases
-- FROM malpracticecases AS ms
-- INNER JOIN doctors AS ds
-- ON ds.doctor_id = ms.doctor_id
-- GROUP BY first_name,last_name
-- ORDER BY COUNT(ds.doctor_id) DESC







-- Question 16:
-- Find the patient(s) who have the highest total billing amount for unpaid bills.

-- SELECT 
-- first_name, 
-- last_name,
-- SUM(amount) AS total_unpaid_bills
-- FROM patients AS ps
-- INNER JOIN billing AS bg 
-- ON ps.patient_id = bg.patient_id
-- WHERE status = 'Unpaid'
-- GROUP BY first_name, last_name
-- ORDER BY SUM(amount) DESC;


