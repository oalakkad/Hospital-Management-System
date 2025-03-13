
INSERT INTO Doctors (doctor_id, first_name, last_name, specialization, hire_date, is_active)
VALUES
(1, 'John', 'Smith', 'Oncology', '2010-05-15', TRUE),
(2, 'Jane', 'Doe', 'General Medicine', '2012-08-20', TRUE),
(3, 'Michael', 'Brown', 'Cardiology', '2015-03-10', TRUE),
(4, 'Emily', 'Johnson', 'Pulmonology', '2018-11-05', TRUE),
(5, 'Chris', 'Davis', 'Endocrinology', '2019-07-22', FALSE), -- Left
(6, 'Sarah', 'Wilson', 'Neurology', '2014-09-12', TRUE),
(7, 'David', 'Martinez', 'Orthopedics', '2016-02-18', TRUE),
(8, 'Laura', 'Garcia', 'Pediatrics', '2017-06-30', TRUE),
(9, 'James', 'Anderson', 'Dermatology', '2013-04-25', FALSE), -- Left
(10, 'Linda', 'Thomas', 'Psychiatry', '2011-12-10', TRUE),
(11, 'Robert', 'Lee', 'Radiology', '2018-08-14', TRUE),
(12, 'Patricia', 'Harris', 'Gastroenterology', '2019-01-05', TRUE),
(13, 'William', 'Clark', 'Urology', '2017-09-20', TRUE),
(14, 'Elizabeth', 'Lewis', 'Ophthalmology', '2016-05-15', TRUE),
(15, 'Daniel', 'Walker', 'Emergency Medicine', '2015-11-30', FALSE); -- Left


INSERT INTO Patients (patient_id, first_name, last_name, birth_date, gender, diagnosis, date_admitted, date_discharged, is_deceased, doctor_id)
VALUES
(1, 'John', 'Doe', '1985-06-15', 'Male', 'Cancer', '2025-02-01', '2025-02-15', FALSE, 1),
(2, 'Jane', 'Smith', '1990-03-22', 'Female', 'Fever', '2025-03-01', '2025-03-05', FALSE, 2),
(3, 'Michael', 'Johnson', '1978-07-30', 'Male', 'Heart Disease', '2025-01-10', '2025-01-20', FALSE, 3),
(4, 'Emily', 'Davis', '2000-09-17', 'Female', 'Pneumonia', '2025-02-10', '2025-02-18', FALSE, 4),
(5, 'Chris', 'Brown', '1965-11-12', 'Male', 'Cancer', '2025-02-05', NULL, TRUE, 5),
(6, 'Olivia', 'Wilson', '1995-04-02', 'Female', 'Broken Leg', '2025-03-02', '2025-03-10', FALSE, 1),
(7, 'Ethan', 'Moore', '2003-01-29', 'Male', 'Appendicitis', '2025-03-05', '2025-03-10', FALSE, 2),
(8, 'Sophia', 'Taylor', '1989-12-10', 'Female', 'Asthma', '2025-02-15', '2025-02-22', FALSE, 3),
(9, 'Daniel', 'Anderson', '1973-05-06', 'Male', 'Diabetes', '2025-01-25', '2025-02-05', FALSE, 4),
(10, 'Isabella', 'Thomas', '2001-08-18', 'Female', 'Migraine', '2025-02-28', '2025-03-05', FALSE, 5),
(11, 'Lucas', 'Martinez', '1992-06-25', 'Male', 'Fever', '2025-03-03', '2025-03-07', FALSE, 1),
(12, 'Mason', 'Garcia', '1980-10-02', 'Male', 'Back Pain', '2025-02-12', '2025-02-19', FALSE, 2),
(13, 'Lily', 'Rodriguez', '1997-04-22', 'Female', 'Cancer', '2025-02-18', '2025-02-25', TRUE, 3),
(14, 'James', 'Martinez', '1992-11-30', 'Male', 'Hypertension', '2025-01-28', '2025-02-07', FALSE, 4),
(15, 'Charlotte', 'Lee', '1982-05-12', 'Female', 'Diabetes', '2025-02-14', '2025-02-22', FALSE, 5),
(16, 'Mia', 'Gonzalez', '1998-08-04', 'Female', 'Cold', '2025-03-01', '2025-03-03', FALSE, 1),
(17, 'Amelia', 'Harris', '1984-02-28', 'Female', 'Sore Throat', '2025-02-10', '2025-02-15', FALSE, 2),
(18, 'Benjamin', 'Clark', '1976-01-09', 'Male', 'Cancer', '2025-02-10', NULL, TRUE, 3),
(19, 'Harper', 'Young', '2002-03-21', 'Female', 'Asthma', '2025-02-18', '2025-02-25', FALSE, 4),
(20, 'Alexander', 'King', '1970-07-30', 'Male', 'Cough', '2025-02-14', '2025-02-20', FALSE, 5),
(21, 'Sophia', 'Adams', '1990-01-14', 'Female', 'Cold', '2025-02-20', '2025-02-25', FALSE, 1),
(22, 'Ella', 'Nelson', '2001-06-18', 'Female', 'Fever', '2025-03-02', '2025-03-05', FALSE, 2),
(23, 'Aiden', 'Carter', '1993-09-10', 'Male', 'Pneumonia', '2025-02-05', '2025-02-13', FALSE, 3),
(24, 'Matthew', 'Collins', '1981-04-02', 'Male', 'Heart Disease', '2025-01-18', '2025-01-30', FALSE, 4),
(25, 'Chloe', 'Bailey', '1995-02-16', 'Female', 'Migraine', '2025-02-05', '2025-02-11', FALSE, 5),
(26, 'Zoe', 'Cooper', '1988-11-07', 'Female', 'Cancer', '2025-01-25', NULL, TRUE, 1),
(27, 'Wyatt', 'Roberts', '2003-12-13', 'Male', 'Asthma', '2025-03-01', '2025-03-03', FALSE, 2),
(28, 'Julian', 'Wright', '1974-09-04', 'Male', 'Heart Attack', '2025-02-10', '2025-02-20', FALSE, 3),
(29, 'Liam', 'Walker', '1989-06-05', 'Male', 'Cold', '2025-02-22', '2025-02-28', FALSE, 4),
(30, 'Evelyn', 'Perez', '1996-03-14', 'Female', 'Pneumonia', '2025-03-05', '2025-03-10', FALSE, 5);



INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, reason)
VALUES
(1, 1, 1, '2025-02-01 10:00:00', 'Routine Checkup'),
(2, 2, 2, '2025-03-01 11:00:00', 'Fever'),
(3, 3, 3, '2025-01-10 09:30:00', 'Heart Disease Follow-up'),
(4, 4, 4, '2025-02-10 14:00:00', 'Pneumonia Treatment'),
(5, 5, 5, '2025-02-05 16:00:00', 'Cancer Treatment'),
(6, 6, 1, '2025-03-02 10:30:00', 'Broken Leg Cast Removal'),
(7, 7, 2, '2025-03-05 12:00:00', 'Appendicitis Surgery'),
(8, 8, 3, '2025-02-15 13:00:00', 'Asthma Checkup'),
(9, 9, 4, '2025-01-25 15:00:00', 'Diabetes Management'),
(10, 10, 5, '2025-02-28 11:30:00', 'Migraine Consultation'),
(11, 11, 1, '2025-03-03 09:00:00', 'Fever Follow-up'),
(12, 12, 2, '2025-02-12 10:00:00', 'Back Pain Treatment'),
(13, 13, 3, '2025-02-18 14:30:00', 'Cancer Treatment'),
(14, 14, 4, '2025-01-28 16:00:00', 'Hypertension Checkup'),
(15, 15, 5, '2025-02-14 12:30:00', 'Diabetes Follow-up'),
(16, 16, 1, '2025-03-01 09:30:00', 'Cold Treatment'),
(17, 17, 2, '2025-02-10 11:00:00', 'Sore Throat Consultation'),
(18, 18, 3, '2025-02-10 13:30:00', 'Cancer Treatment'),
(19, 19, 4, '2025-02-18 15:00:00', 'Asthma Follow-up'),
(20, 20, 5, '2025-02-14 10:00:00', 'Cough Treatment'),
(21, 21, 1, '2025-02-20 12:00:00', 'Cold Follow-up'),
(22, 22, 2, '2025-03-02 14:00:00', 'Fever Consultation'),
(23, 23, 3, '2025-02-05 16:30:00', 'Pneumonia Treatment'),
(24, 24, 4, '2025-01-18 09:00:00', 'Heart Disease Follow-up'),
(25, 25, 5, '2025-02-05 11:30:00', 'Migraine Treatment'),
(26, 26, 1, '2025-01-25 13:00:00', 'Cancer Treatment'),
(27, 27, 2, '2025-03-01 15:30:00', 'Asthma Checkup'),
(28, 28, 3, '2025-02-10 10:00:00', 'Heart Attack Follow-up'),
(29, 29, 4, '2025-02-22 12:00:00', 'Cold Treatment'),
(30, 30, 5, '2025-03-05 14:00:00', 'Pneumonia Follow-up');



INSERT INTO HospitalStaff (staff_id, first_name, last_name, role, hire_date)
VALUES
(1, 'Alice', 'Johnson', 'Nurse', '2018-05-15'),
(2, 'Bob', 'Williams', 'Receptionist', '2019-08-20'),
(3, 'Charlie', 'Brown', 'Lab Technician', '2020-03-10'),
(4, 'Diana', 'Miller', 'Pharmacist', '2017-11-05'),
(5, 'Eva', 'Davis', 'Nurse', '2019-07-22'),
(6, 'Frank', 'Garcia', 'Janitor', '2016-09-12'),
(7, 'Grace', 'Rodriguez', 'Nurse', '2018-02-18'),
(8, 'Henry', 'Martinez', 'Security Guard', '2017-06-30'),
(9, 'Ivy', 'Hernandez', 'Lab Technician', '2019-04-25'),
(10, 'Jack', 'Lopez', 'Receptionist', '2020-12-10'),
(11, 'Karen', 'Gonzalez', 'Nurse', '2018-08-14'),
(12, 'Leo', 'Wilson', 'Pharmacist', '2019-01-05'),
(13, 'Mona', 'Anderson', 'Nurse', '2017-09-20'),
(14, 'Nina', 'Thomas', 'Lab Technician', '2016-05-15'),
(15, 'Oscar', 'Taylor', 'Janitor', '2015-11-30'),
(16, 'Paul', 'Moore', 'Security Guard', '2018-07-22'),
(17, 'Quincy', 'Jackson', 'Nurse', '2019-03-10'),
(18, 'Rachel', 'White', 'Receptionist', '2020-06-30'),
(19, 'Steve', 'Harris', 'Lab Technician', '2017-04-25'),
(20, 'Tina', 'Clark', 'Pharmacist', '2018-12-10');



INSERT INTO MalpracticeCases (case_id, patient_id, doctor_id, case_details, case_date)
VALUES
(1, 5, 5, 'Misdiagnosis of cancer stage', '2025-02-10'),
(2, 13, 3, 'Delayed treatment leading to death', '2025-02-20'),
(3, 18, 3, 'Surgical error during cancer treatment', '2025-02-15'),
(4, 26, 1, 'Incorrect medication dosage', '2025-01-30'),
(5, 5, 5, 'Failure to monitor patient condition', '2025-02-12'),
(6, 13, 3, 'Lack of follow-up after treatment', '2025-02-22'),
(7, 18, 3, 'Anesthesia error during surgery', '2025-02-18'),
(8, 26, 1, 'Miscommunication in treatment plan', '2025-02-01'),
(9, 5, 5, 'Inadequate post-operative care', '2025-02-14'),
(10, 13, 3, 'Failure to diagnose complications', '2025-02-25');


INSERT INTO MedicalHistory (history_id, patient_id, record_date, diagnosis, treatment, notes)
VALUES
(1, 1, '2025-02-01', 'Cancer', 'Chemotherapy', 'Patient responded well to treatment.'),
(2, 2, '2025-03-01', 'Fever', 'Antipyretics', 'Fever resolved within 2 days.'),
(3, 3, '2025-01-10', 'Heart Disease', 'Beta-blockers', 'Patient stable on medication.'),
(4, 4, '2025-02-10', 'Pneumonia', 'Antibiotics', 'Lung function improved.'),
(5, 5, '2025-02-05', 'Cancer', 'Radiation Therapy', 'Patient passed away due to complications.'),
(6, 6, '2025-03-02', 'Broken Leg', 'Cast Application', 'Bone healing as expected.'),
(7, 7, '2025-03-05', 'Appendicitis', 'Surgery', 'Appendectomy successful.'),
(8, 8, '2025-02-15', 'Asthma', 'Inhalers', 'Symptoms under control.'),
(9, 9, '2025-01-25', 'Diabetes', 'Insulin Therapy', 'Blood sugar levels stable.'),
(10, 10, '2025-02-28', 'Migraine', 'Painkillers', 'Headaches reduced in frequency.'),
(11, 11, '2025-03-03', 'Fever', 'Antipyretics', 'Fever resolved.'),
(12, 12, '2025-02-12', 'Back Pain', 'Physical Therapy', 'Pain reduced by 50%.'),
(13, 13, '2025-02-18', 'Cancer', 'Chemotherapy', 'Patient passed away due to complications.'),
(14, 14, '2025-01-28', 'Hypertension', 'ACE Inhibitors', 'Blood pressure under control.'),
(15, 15, '2025-02-14', 'Diabetes', 'Metformin', 'Blood sugar levels stable.'),
(16, 16, '2025-03-01', 'Cold', 'Antihistamines', 'Symptoms resolved.'),
(17, 17, '2025-02-10', 'Sore Throat', 'Antibiotics', 'Infection cleared.'),
(18, 18, '2025-02-10', 'Cancer', 'Chemotherapy', 'Patient passed away due to complications.'),
(19, 19, '2025-02-18', 'Asthma', 'Inhalers', 'Symptoms under control.'),
(20, 20, '2025-02-14', 'Cough', 'Cough Syrup', 'Cough resolved.'),
(21, 21, '2025-02-20', 'Cold', 'Antihistamines', 'Symptoms resolved.'),
(22, 22, '2025-03-02', 'Fever', 'Antipyretics', 'Fever resolved.'),
(23, 23, '2025-02-05', 'Pneumonia', 'Antibiotics', 'Lung function improved.'),
(24, 24, '2025-01-18', 'Heart Disease', 'Beta-blockers', 'Patient stable on medication.'),
(25, 25, '2025-02-05', 'Migraine', 'Painkillers', 'Headaches reduced in frequency.'),
(26, 26, '2025-01-25', 'Cancer', 'Chemotherapy', 'Patient passed away due to complications.'),
(27, 27, '2025-03-01', 'Asthma', 'Inhalers', 'Symptoms under control.'),
(28, 28, '2025-02-10', 'Heart Attack', 'Stent Placement', 'Patient recovering well.'),
(29, 29, '2025-02-22', 'Cold', 'Antihistamines', 'Symptoms resolved.'),
(30, 30, '2025-03-05', 'Pneumonia', 'Antibiotics', 'Lung function improved.');



INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, start_date, end_date)
VALUES
(1, 1, 'Paclitaxel', '100mg', '2025-02-01', '2025-02-15'),
(2, 2, 'Paracetamol', '500mg', '2025-03-01', '2025-03-05'),
(3, 3, 'Metoprolol', '50mg', '2025-01-10', '2025-01-20'),
(4, 4, 'Amoxicillin', '500mg', '2025-02-10', '2025-02-18'),
(5, 5, 'Cisplatin', '75mg', '2025-02-05', '2025-02-12'),
(6, 6, 'Ibuprofen', '400mg', '2025-03-02', '2025-03-10'),
(7, 7, 'Cefazolin', '1g', '2025-03-05', '2025-03-10'),
(8, 8, 'Albuterol', '2 puffs', '2025-02-15', '2025-02-22'),
(9, 9, 'Insulin', '10 units', '2025-01-25', '2025-02-05'),
(10, 10, 'Sumatriptan', '50mg', '2025-02-28', '2025-03-05'),
(11, 11, 'Paracetamol', '500mg', '2025-03-03', '2025-03-07'),
(12, 12, 'Naproxen', '250mg', '2025-02-12', '2025-02-19'),
(13, 13, 'Paclitaxel', '100mg', '2025-02-18', '2025-02-25'),
(14, 14, 'Lisinopril', '10mg', '2025-01-28', '2025-02-07'),
(15, 15, 'Metformin', '500mg', '2025-02-14', '2025-02-22'),
(16, 16, 'Cetirizine', '10mg', '2025-03-01', '2025-03-03'),
(17, 17, 'Amoxicillin', '500mg', '2025-02-10', '2025-02-15'),
(18, 18, 'Cisplatin', '75mg', '2025-02-10', '2025-02-18'),
(19, 19, 'Albuterol', '2 puffs', '2025-02-18', '2025-02-25'),
(20, 20, 'Dextromethorphan', '15mg', '2025-02-14', '2025-02-20'),
(21, 21, 'Cetirizine', '10mg', '2025-02-20', '2025-02-25'),
(22, 22, 'Paracetamol', '500mg', '2025-03-02', '2025-03-05'),
(23, 23, 'Amoxicillin', '500mg', '2025-02-05', '2025-02-13'),
(24, 24, 'Metoprolol', '50mg', '2025-01-18', '2025-01-30'),
(25, 25, 'Sumatriptan', '50mg', '2025-02-05', '2025-02-11'),
(26, 26, 'Paclitaxel', '100mg', '2025-01-25', '2025-02-01'),
(27, 27, 'Albuterol', '2 puffs', '2025-03-01', '2025-03-03'),
(28, 28, 'Aspirin', '81mg', '2025-02-10', '2025-02-20'),
(29, 29, 'Cetirizine', '10mg', '2025-02-22', '2025-02-28'),
(30, 30, 'Amoxicillin', '500mg', '2025-03-05', '2025-03-10');



INSERT INTO Billing (bill_id, patient_id, bill_date, amount, status)
VALUES
(1, 1, '2025-02-15', 1500.00, 'Paid'),
(2, 2, '2025-03-05', 200.00, 'Paid'),
(3, 3, '2025-01-20', 1200.00, 'Paid'),
(4, 4, '2025-02-18', 800.00, 'Paid'),
(5, 5, '2025-02-12', 2500.00, 'Unpaid'), -- Deceased patient
(6, 6, '2025-03-10', 500.00, 'Paid'),
(7, 7, '2025-03-10', 3000.00, 'Paid'),
(8, 8, '2025-02-22', 150.00, 'Paid'),
(9, 9, '2025-02-05', 400.00, 'Paid'),
(10, 10, '2025-03-05', 100.00, 'Paid'),
(11, 11, '2025-03-07', 200.00, 'Paid'),
(12, 12, '2025-02-19', 600.00, 'Paid'),
(13, 13, '2025-02-25', 3500.00, 'Unpaid'), -- Deceased patient
(14, 14, '2025-02-07', 300.00, 'Paid'),
(15, 15, '2025-02-22', 450.00, 'Paid'),
(16, 16, '2025-03-03', 100.00, 'Paid'),
(17, 17, '2025-02-15', 250.00, 'Paid'),
(18, 18, '2025-02-18', 5000.00, 'Unpaid'), -- Deceased patient
(19, 19, '2025-02-25', 200.00, 'Paid'),
(20, 20, '2025-02-20', 150.00, 'Paid'),
(21, 21, '2025-02-25', 100.00, 'Paid'),
(22, 22, '2025-03-05', 200.00, 'Paid'),
(23, 23, '2025-02-13', 1200.00, 'Paid'),
(24, 24, '2025-01-30', 1800.00, 'Paid'),
(25, 25, '2025-02-11', 300.00, 'Paid'),
(26, 26, '2025-02-01', 4000.00, 'Unpaid'), -- Deceased patient
(27, 27, '2025-03-03', 150.00, 'Paid'),
(28, 28, '2025-02-20', 2500.00, 'Paid'),
(29, 29, '2025-02-28', 100.00, 'Paid'),
(30, 30, '2025-03-10', 800.00, 'Paid');
