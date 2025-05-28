# syntheticEMR

**syntheticEMR** is a synthetic electronic medical record dataset consisting of 8 relational tables. It is designed to simulate real-world EMR data and support data analysis, research, and educational use.
The sqlite database file is **syntheticEMR.db**.

---

## Table Overview

### (1) `patient`

Contains basic demographic and physical data for each patient.

| Column       | Description                        |
|--------------|------------------------------------|
| `patient_id` | Unique identifier for each patient |
| `age`        | Age of the patient                 |
| `gender`     | Gender of the patient              |
| `bmi`        | Body Mass Index (BMI)              |

---

### (2) `date`

Tracks days when any medical order occurred during hospitalization.

| Column                | Description                                      |
|------------------------|--------------------------------------------------|
| `patient_id`           | Same as in `patient` table                       |
| `date`                 | Dates when any medical order was issued          |
| `hospitalization_date`| Admission date (YYYY-MM-DD)                      |
| `discharge_date`       | Discharge date (YYYY-MM-DD)                      |

---

### (3) `surgery`

Details of surgeries performed during hospitalization.

| Column       | Description                                                  |
|--------------|--------------------------------------------------------------|
| `patient_id` | Same as in `patient` table                                   |
| `surgery_date` | Date of surgery                                             |
| `dpc_k`      | Surgery identifier combining DPC and K codes                 |

---

### (4) `drug`

Information on drugs administered during hospitalization.

| Column               | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `patient_id`         | Same as in `patient` table                                                  |
| `medication_date`    | Date the drug was administered                                              |
| `total_drug`         | Total quantity administered                                                 |
| `medical_classification` | Drug classification code ([ENG](https://www.kegg.jp/brite/br08301), [JPN](https://www.kegg.jp/brite/jp08301.keg)) |

---

### (5) `injury_illness`

Primary diagnosis that led to hospitalization.

| Column               | Description                          |
|----------------------|--------------------------------------|
| `patient_id`         | Same as in `patient` table           |
| `hospitalization_date` | Same as in `date` table            |
| `icd_10`             | ICD-10 code of primary diagnosis (e.g., I209) |

---

### (6) `inspection`

Laboratory test results during hospitalization.

| Column              | Description                                               |
|---------------------|-----------------------------------------------------------|
| `patient_id`        | Same as in `patient` table                                |
| `inspection_date`   | Date of inspection                                        |
| `inspection_name`   | Name of the inspection (e.g., WBC, RBC, PLT)              |
| `inspection_results`| Result value of the inspection                            |
| `inspection_unit`   | Unit of the result                                        |
| `total_inspection`  | Total number of inspections during hospitalization        |

---

### (7) `treatment`

Medical treatments excluding drugs, inspections, and vital sign measurements.

| Column         | Description                                                                                                      |
|----------------|------------------------------------------------------------------------------------------------------------------|
| `treatment_id` | Unique identifier for each treatment record                                                                     |
| `patient_id`   | Same as in `patient` table                                                                                       |
| `treatment_date` | Date treatment was provided                                                                                    |
| `receptor_code`| Treatment code ([Medical Fee Schedule](https://shinryohoshu.mhlw.go.jp/shinryohoshu/kaitei/doKaiteiR06/), [Master Table](https://shinryohoshu.mhlw.go.jp/shinryohoshu/downloadMenu/sFile)) |

---

### (8) `vital_sign`

Vital signs recorded during hospitalization.

| Column               | Description                         |
|----------------------|-------------------------------------|
| `patient_id`         | Same as in `patient` table          |
| `vital_sign_date`    | Date of measurement                 |
| `vital_sign_name`    | Name of the measured vital sign     |
| `vital_sign_results` | Measured value                      |
| `vital_sign_unit`    | Unit of the measurement             |

---

## License

This synthetic dataset is provided for research and education purposes. It contains no real patient data.
