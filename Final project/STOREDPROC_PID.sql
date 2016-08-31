-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_tot_bill`(IN v_p_id INTEGER(11),IN v_table VARCHAR(50))
BEGIN

#To Check whether the loop finished execution or not
DECLARE v_finished INTEGER DEFAULT 0;

#To calculate total amount temporarily
DECLARE v_total_amt INTEGER(25) DEFAULT 0;

#To store all the needed info
DECLARE v_charges FLOAT;
DECLARE v_room_tariff INTEGER(11);
DECLARE v_no_of_days_stayed INTEGER(11);
DECLARE v_total_bill_amt DOUBLE;

#To Check whether to update or insert in finance table
DECLARE cnt INTEGER(11) default 0;

#Cursor declaration
DECLARE CUR_PID_IN CURSOR FOR
	SELECT  tst.charges , room.room_tariff , room.no_of_days_stayed
	FROM TEST tst,
		 ROOM room
	WHERE tst.p_id = room.p_id
	AND tst.p_id = v_p_id;

#Cursor declaration
DECLARE CUR_PID_OUT CURSOR FOR
	SELECT  tst.charges 
	FROM TEST tst,
		 out_patient out1
	WHERE tst.p_id = out1.p_id
	AND tst.p_id = v_p_id;

#Exit Loop Condition
DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;

IF (v_table = 'room' OR v_table = 'test') THEN

	#Cursor Starts
	OPEN CUR_PID_IN;
	 
	 get_pid: LOOP
	 
	 FETCH CUR_PID_IN INTO  v_charges , v_room_tariff , v_no_of_days_stayed;
	 
	 #Get out of the Loop 
	 IF v_finished = 1 THEN 
	 LEAVE get_pid;
	 END IF;


	 SET v_total_amt = v_charges + (v_room_tariff * v_no_of_days_stayed);

	 
	 #SELECT v_total_amt;
	 SELECT count(*) INTO cnt 
	 FROM FINANCE
	 WHERE P_ID = v_p_id;

	 IF cnt > 0 THEN		#P_ID already there therefore Update

			SELECT TOTAL_BILL_AMT INTO v_total_bill_amt 
			 FROM FINANCE
			 WHERE P_ID = v_p_id;

			SET v_total_bill_amt =  v_total_amt;

			 UPDATE `HEALTH_CARE_MANAGEMENT`.`FINANCE`
			 SET TOTAL_BILL_AMT = v_total_bill_amt,pay_mode='Cash', pay_status = 'paid'
			 WHERE P_ID = v_p_id;

	 ELSE					#P_ID not there therefore Insert

			INSERT INTO `HEALTH_CARE_MANAGEMENT`.`FINANCE` VALUES (8,8,v_p_id,'Cash ','paid ',v_total_amt);

	 END IF;

	 
	 set cnt = 0;
	 
	 
	 END LOOP get_pid;
	 
	 CLOSE CUR_PID_IN;
	 #Cursor Ends
ELSE
	#Cursor Starts
	OPEN CUR_PID_OUT;
	 
	 get_pid: LOOP
	 
	 FETCH CUR_PID_OUT INTO  v_charges ;
	 
	 #Get out of the Loop 
	 IF v_finished = 1 THEN 
	 LEAVE get_pid;
	 END IF;


	 SET v_total_amt = v_charges ;

	 
	 #SELECT v_total_amt;
	 SELECT count(*) INTO cnt 
	 FROM FINANCE
	 WHERE P_ID = v_p_id;

	 IF cnt > 0 THEN		#P_ID already there therefore Update

			SELECT TOTAL_BILL_AMT INTO v_total_bill_amt 
			 FROM FINANCE
			 WHERE P_ID = v_p_id;

			SET v_total_bill_amt =  v_total_amt;

			 UPDATE `HEALTH_CARE_MANAGEMENT`.`FINANCE`
			 SET TOTAL_BILL_AMT = v_total_bill_amt,pay_mode='Cash', pay_status = 'paid'
			 WHERE P_ID = v_p_id;

	 ELSE					#P_ID not there therefore Insert

			INSERT INTO `HEALTH_CARE_MANAGEMENT`.`FINANCE` VALUES (8,8,v_p_id,'Cash ','paid ',v_total_amt);

	 END IF;

	 
	 set cnt = 0;
	 
	 
	 END LOOP get_pid;
	 
	 CLOSE CUR_PID_OUT;
	 #Cursor Ends
END IF;
END