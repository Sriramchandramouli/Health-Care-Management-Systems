DELIMITER $$
CREATE TRIGGER `after_test_insert`
AFTER INSERT ON `health_care_management`.`test`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'test');
	END$$
DELIMITER ;
