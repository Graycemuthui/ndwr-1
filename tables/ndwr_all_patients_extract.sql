CREATE TABLE IF NOT EXISTS ndwr_all_patients_extract (
    `PKV` INT NOT NULL,
    `PatientID` INT NOT NULL,
    `PatientPK` INT NOT NULL,
    `SiteCode` INT NOT NULL,
    `FacilityName` VARCHAR(100) NULL,
    `Gender` VARCHAR(10) NULL,
    `DOB` DATETIME NULL,
    `RegistrationDate` DATETIME NOT NULL,
    `RegistrationAtCCC` DATETIME NOT NULL,
    `RegistrationAtPMTCT` DATETIME NULL,
    `RegistrationAtTBClinic` DATETIME NULL,
    `PatientSource` VARCHAR(100) NULL,
    `Region` VARCHAR(100) NULL,
    `District` VARCHAR(100) NULL,
    `Village` VARCHAR(100) NULL,
    `ContactRelation` VARCHAR(250) NULL,
    `LastVisit` DATETIME NULL,
    `MaritalStatus` VARCHAR(100) NULL,
    `EducationLevel` VARCHAR(50) NULL,
    `DateConfirmedHIVPositive` DATETIME NULL,
    `PreviousARTExposure` VARCHAR(50) NULL,
    `PreviousARTStartDate` DATETIME NULL,
    `Emr` VARCHAR(50) NULL,
    `Project` VARCHAR(50) NULL,
    `FacilityID` INT NULL,
    `StatusAtCCC` VARCHAR(100) NULL,
    `StatusAtPMTCT` VARCHAR(100) NULL,
    `StatusAtTBClinic` VARCHAR(100) NULL,
    `SatelliteName` VARCHAR(100) NULL,
    `arv_first_regimen_start_date` DATE NULL,
    `rtc_date` DATE NULL,
    `arv_first_regimen` VARCHAR(200) NULL,
    `arv_start_date` DATE NULL,
    `cur_arv_meds` VARCHAR(200) NULL,
    `cur_arv_line_strict` VARCHAR(250) NULL,
    `Inschool` VARCHAR(100) NULL,
    `KeyPopulationType` VARCHAR(100) NULL,
    `Orphan` VARCHAR(100) NULL,
    `PatientResidentCounty` VARCHAR(100) NULL,
    `PatientResidentLocation` VARCHAR(100) NULL,
    `PatientResidentSubCounty` VARCHAR(100) NULL,
    `PatientResidentSubLocation` VARCHAR(100) NULL,
    `PatientResidentVillage` VARCHAR(100) NULL,
    `PatientResidentWard` VARCHAR(100) NULL,
    `PatientType` VARCHAR(100) NULL,
    `PopulationType` VARCHAR(100) NULL,
    `TransferInDate` DATETIME NULL,
    `DateCreated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
     INDEX patient_patient_id (PatientID),
     INDEX patient_patient_pk (PatientPK),
     INDEX patient_facility_id (FacilityID),
     INDEX patient_site_code (SiteCode),
     INDEX patient_date_created (DateCreated),
     INDEX patient_patient_facility (PatientID,FacilityID),
     INDEX patient_rtc (PatientID,rtc_date),
     INDEX patient_reg_start (PatientID,arv_first_regimen_start_date),
     INDEX patient_arv_start (PatientID,arv_first_regimen_start_date),
     INDEX patient_transfer_in (PatientID,arv_start_date)
);