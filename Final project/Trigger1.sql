DELIMITER $$
CREATE TRIGGER `after_room_insert`
AFTER INSERT ON `health_care_management`.`room`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'room');
	END$$
DELIMITER ;