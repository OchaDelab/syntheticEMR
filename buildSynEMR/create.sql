-------------------------------------------
-- Create synEMR database for sqlite--
-------------------------------------------
\set database_name synEMR;

-------------------------------------------
-- Create the tables for synEMR --
-------------------------------------------

DROP TABLE IF EXISTS patient;
CREATE TABLE patient
(
    patient_id TEXT NOT NULL,
    age INTEGER,
    gender TEXT,
    bmi REAL,
    PRIMARY KEY(patient_id)
);
DROP TABLE IF EXISTS date;
CREATE TABLE date
(
    patient_id TEXT NOT NULL,
    date INTEGER,
    hospitalization_date TEXT,
    discharge_date TEXT,
    PRIMARY KEY(patient_id)
);
DROP TABLE IF EXISTS surgery;
CREATE TABLE surgery
(
  patient_id TEXT NOT NULL,
  surgery_date TEXT,
  dpc_k TEXT,
  PRIMARY KEY(patient_id)
);
DROP TABLE IF EXISTS drug;
CREATE TABLE drug
(
    patient_id TEXT NOT NULL,
    medication_date TEXT,
    total_drug INTEGER,
    medical_classification TEXT,
    PRIMARY KEY(patient_id,medication_date,total_drug,medical_classification)
);
DROP TABLE IF EXISTS injury_illness;
CREATE TABLE injury_illness
(
    patient_id TEXT NOT NULL,
    hospitalization_date TEXT,
    icd_10 TEXT,
    PRIMARY KEY(patient_id)
);
DROP TABLE IF EXISTS inspection;
CREATE TABLE inspection
(
    patient_id text NOT NULL,
    inspection_date TEXT,
    inspection_name TEXT,
    inspection_results REAL,
    inspection_unit TEXT,
    total_inspection INTEGER,
    PRIMARY KEY(patient_id,inspection_date,inspection_name,inspection_results,inspection_unit,total_inspection)
);
DROP TABLE IF EXISTS treatment;
CREATE TABLE treatment
(
    treatment_id TEXT NOT NULL,
    patient_id text NOT NULL,
    treatment_date TEXT,
    receptor_code TEXT,
    PRIMARY KEY(treatment_id)
);
DROP TABLE IF EXISTS vital_sign;
CREATE TABLE vital_sign
(
    patient_id text NOT NULL,
    vital_sign_date TEXT,
    vital_sign_name TEXT,
    vital_sign_results REAL,
    vital_sign_unit TEXT,
    PRIMARY KEY(patient_id,vital_sign_date,vital_sign_name,vital_sign_results,vital_sign_unit)
);
