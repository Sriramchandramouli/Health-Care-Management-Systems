DELIMITER $$
CREATE TRIGGER `after_out_patient_insert`
AFTER INSERT ON `health_care_management`.`out_patient`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'out_patient');
	END$$
DELIMITER ;
