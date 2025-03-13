CREATE TABLE Doctors (
    doctor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(100),
    hire_date DATE,
    is_active BOOLEAN DEFAULT TRUE, -- TRUE means active, FALSE means left
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    gender VARCHAR(10),
    diagnosis VARCHAR(255),
    date_admitted DATE,
    date_discharged DATE,
    is_deceased BOOLEAN,
    doctor_id INT REFERENCES Doctors(doctor_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_date TIMESTAMP,
    reason VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE HospitalStaff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(100),
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE MalpracticeCases (
    case_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    case_details TEXT,
    case_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE MedicalHistory (
    history_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    record_date DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE Medications (
    medication_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE Billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    bill_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(50), -- e.g., Paid, Unpaid, Pending
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);