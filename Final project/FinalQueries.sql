create database Health_Care_Management;
use Health_Care_Management;

drop database Health_Care_Management;

CREATE USER 'admin'@'localhost' IDENTIFIED by 'admin';

GRANT ALL ON *.* TO 'admin'@'localhost' WITH GRANT OPTION; 

CREATE USER 'doc'@'localhost' IDENTIFIED by 'doc';

REVOKE ALL PRIVILEGES,GRANT option from 'doc'@'localhost' ;

GRANT SELECT on Health_Care_Management.DOCTOR TO 'doc'@'localhost';

GRANT SELECT on Health_Care_Management.IN_HOUSE_DOCTOR TO 'doc'@'localhost';

GRANT SELECT on Health_Care_Management.VISITING_DOCTOR TO 'doc'@'localhost';

GRANT All on Health_Care_Management.PATIENT TO 'doc'@'localhost';

GRANT All on Health_Care_Management.IN_PATIENT TO 'doc'@'localhost';

GRANT All on Health_Care_Management.OUT_PATIENT TO 'doc'@'localhost';


CREATE USER 'finance'@'localhost' IDENTIFIED by 'finance';

REVOKE ALL PRIVILEGES,GRANT option from 'finance'@'localhost';

GRANT SELECT,UPDATE on Health_Care_Management.FINANCE TO 'finance'@'localhost';


CREATE USER 'emergency'@'localhost' IDENTIFIED by 'emergency';

REVOKE ALL PRIVILEGES,GRANT option from 'emergency'@'localhost';

GRANT SELECT,UPDATE,DELETE,INSERT on Health_Care_Management.EMERGENCY_MANAGER TO 'emergency'@'localhost';


CREATE USER 'receptionist'@'localhost' IDENTIFIED by 'receptionist';

REVOKE ALL PRIVILEGES,GRANT option from 'receptionist'@'localhost';

GRANT SELECT,UPDATE,INSERT on Health_Care_Management.RECEPTION TO 'receptionist'@'localhost';


REVOKE ALL PRIVILEGES,GRANT option from 'doc'@'localhost' ;
GRANT ALL ON *.* TO 'admin'@'localhost' WITH GRANT OPTION; 


REVOKE ALL PRIVILEGES,GRANT option from 'doc'@'localhost' ;



GRANT ALL on Health_Care_Management.finance to 'finance'@'localhost';

GRANT ALL on Health_Care_Management.room to 'finance'@'localhost';

GRANT ALL on Health_Care_Management.test to 'finance'@'localhost';


##################################TO REVOKE ANY PARTICULAR ACCESS TO THE USER############################################################################################################################################################################################################################################################################################################################################################
REVOKE SELECT on Health_Care_Management.RECEPTION from 'emergency'@'localhost';

########################################PLEASE BE CAREFUL WHILE EXECUTING THIS QUERY BECAUSE THIS QUERY WILL DENY THE ACCESS TO THE DATABASE#######################################################################################################################################################################################################################################################################################################


drop user 'admin'@'localhost';

###############################################################################################################################################################################################################################################################################################################################################

select * from EMPLOYEE;
drop table EMPLOYEE_ADDRESS;
drop table HOSPITAL_ADDRESS;

DROP TABLE IF EXISTS HOSPITAL_ADDRESS;
CREATE TABLE IF NOT EXISTS HOSPITAL_ADDRESS(ZIPCODE INT PRIMARY KEY, STATE VARCHAR(20) NOT NULL, CITY VARCHAR(20) NOT NULL, COUNTRY VARCHAR(20) NOT NULL, DOOR_NO INT NOT NULL);
INSERT INTO HOSPITAL_ADDRESS VALUES(02120,'MA','BOSTON','USA',111);


SELECT * FROM HOSPITAL_ADDRESS;


############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS HOSPITAL;
CREATE TABLE IF NOT EXISTS HOSPITAL(H_ID INT PRIMARY KEY, H_NAME VARCHAR(20) NOT NULL,CONTACT_NO BIGINT NOT NULL,ZIPCODE INT,foreign key (ZIPCODE) references HOSPITAL_ADDRESS(ZIPCODE));
INSERT INTO HOSPITAL VALUES(1,'D_NEXUS HOSPITAL',617575757,02120);


select * from hospital;

############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS EMPLOYEE;
CREATE TABLE IF NOT EXISTS EMPLOYEE( E_ID INT PRIMARY KEY, E_NAME VARCHAR(20) NOT NULL, E_GENDER VARCHAR(10) NOT NULL,DOJ DATE NOT NULL,E_AGE INT NOT NULL,EMAIL_ID VARCHAR(30) NOT NULL);  
INSERT INTO EMPLOYEE VALUES(1,'Arun','M','2000-03-08',20,'aaa@bbb.com');
INSERT INTO EMPLOYEE VALUES(2,'Thejas','M','2001-05-20',21,'bbb@ccc.com');
INSERT INTO EMPLOYEE VALUES(3,'KrithiKa','M','2000-10-01',22,'ccc@ddd.com');
INSERT INTO EMPLOYEE VALUES(4,'Ajay','M','2002-03-20',23,'ddd@eee.com');
INSERT INTO EMPLOYEE VALUES(5,'Sriram','M','2000-05-30',24,'eee@fff.com');
INSERT INTO EMPLOYEE VALUES(6,'Ann','F','2003-04-03',30,'fff@ggg.com');
INSERT INTO EMPLOYEE VALUES(7,'Amy','F','2004-12-08',35,'ggg@hhh.com');
INSERT INTO EMPLOYEE VALUES(8,'Thomas','M','2000-11-03',28,'hhh@iii.com');
INSERT INTO EMPLOYEE VALUES(9,'Linda','F','2001-12-30',33,'iii@jjj.com');
INSERT INTO EMPLOYEE VALUES(10,'Raj','M','2001-05-20',30,'jjj@kkk.com');
INSERT INTO EMPLOYEE VALUES(11,'David','M','2001-01-18',37,'kkk@lll.com');
INSERT INTO EMPLOYEE VALUES(12,'KELSY','F','2012-12-28',37,'KEK@k.com');
INSERT INTO EMPLOYEE VALUES(13,'SACHIN','M','2013-09-08',27,'sach@s.com');
INSERT INTO EMPLOYEE VALUES(14,'DRAVID','M','2012-12-28',37,'dra@vid.com');
INSERT INTO EMPLOYEE VALUES(15,'SRI','F','2002-10-08',39,'sri@v.com');
INSERT INTO EMPLOYEE VALUES(16,'SHARON','F','2009-11-01',67,'sHA@B.com');
INSERT INTO EMPLOYEE VALUES(17,'CESAR','M','2012-01-04',27,'CD@A.com');
INSERT INTO EMPLOYEE VALUES(18,'KAR','M','2014-02-28',30,'KAR@T.com');
INSERT INTO EMPLOYEE VALUES(19,'ASDG','F','2007-09-12',35,'ASD@GH.com');
INSERT INTO EMPLOYEE VALUES(20,'ARNOLD','M','2005-12-22',38,'ARD@H.com');
INSERT INTO EMPLOYEE VALUES(21,'PRIYA','F','2009-10-11',40,'PRI@HS.com');
INSERT INTO EMPLOYEE VALUES(22,'PRAKSH','M','2013-09-01',24,'PRA@HAS.com');
INSERT INTO EMPLOYEE VALUES(23,'POOJA','F','2014-01-04',22,'POOJA@AS.com');
INSERT INTO EMPLOYEE VALUES(24,'HJ','M','2001-08-04',35,'HJ@NB.com');
INSERT INTO EMPLOYEE VALUES(25,'YUVI','M','1999-08-04',55,'IJ@HB.com');
INSERT INTO EMPLOYEE VALUES(26,'ASH','F','2003-09-21',41,'ASH@BA.com');
INSERT INTO EMPLOYEE VALUES(27,'DHONI','M','2013-10-22',35,'DHON@G.com');
INSERT INTO EMPLOYEE VALUES(28,'VIRAT','M','2010-08-11',25,'VIR@AT.com');
INSERT INTO EMPLOYEE VALUES(29,'RAINA','M','2012-10-29',31,'RAI@NA.com');
INSERT INTO EMPLOYEE VALUES(30,'MGM','F','2002-07-21',35,'MGM@KA.com');
INSERT INTO EMPLOYEE VALUES(31,'KA','M','2014-08-17',60,'KA@HM.com');
INSERT INTO EMPLOYEE VALUES(32,'YANG','F','2007-10-07',37,'YANG@A.com');
INSERT INTO EMPLOYEE VALUES(33,'KING','M','2008-12-08',42,'KING@B.com');
INSERT INTO EMPLOYEE VALUES(34,'QUEEN','F','2009-09-19',32,'QUE@C.com');

SELECT * FROM EMPLOYEE;
############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS EMPLOYEE_ADDRESS;
CREATE TABLE IF NOT EXISTS EMPLOYEE_ADDRESS(E_ZIPCODE INT PRIMARY KEY, STATE VARCHAR(20) NOT NULL, CITY VARCHAR(20) NOT NULL, COUNTRY VARCHAR(20) NOT NULL, DOOR_NO INT NOT NULL,E_ID int,foreign key (E_ID) references EMPLOYEE(E_ID));
INSERT INTO EMPLOYEE_ADDRESS VALUES(02120,'MA','Boston','USA',10,1);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02121,'Illinois','Chicago','USA',11,2);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02122,'Texas','Texascity','USA',12,3);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02123,'Newyork','Newyorkcity','USA',13,4);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02124,'Tamilnadu','Chennai','India',14,5);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02125,'MA','Boston','USA',15,6);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02126,'Tamilnadu','Trichy','India',16,7);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02127,'MA','Allston','USA',15,8);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02128,'Tamilnadu','Chennai','India',16,9);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02129,'Newyork','Newyorkcity','USA',11,10);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02195,'MA','Allston','USA',90,11);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02191,'MA','Au','USA',9,12);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02178,'AP','Hyderabad','INDIA',22,13);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02167,'RAJASTHAN','Jaipur','INDIA',29,14);
INSERT INTO EMPLOYEE_ADDRESS VALUES(02154,'NJ','Newark','USA',24,15);
INSERT INTO EMPLOYEE_ADDRESS VALUES(06787,'DE','WE','USA',09,16);
INSERT INTO EMPLOYEE_ADDRESS VALUES(04567,'IOWA','A','USA',06,17);
INSERT INTO EMPLOYEE_ADDRESS VALUES(07890,'WA','H','USA',08,18);
INSERT INTO EMPLOYEE_ADDRESS VALUES(07896,'TN','HJ','USA',06,19);
INSERT INTO EMPLOYEE_ADDRESS VALUES(07786,'DELHI','DELHI','INDIA',56,20);
INSERT INTO EMPLOYEE_ADDRESS VALUES(07686,'HJ','TN','INDIA',67,21);
INSERT INTO EMPLOYEE_ADDRESS VALUES(10204,'MA','SALEM','USA',187,22);
INSERT INTO EMPLOYEE_ADDRESS VALUES(14523,'MA','WESTBORUGH','USA',197,23);
INSERT INTO EMPLOYEE_ADDRESS VALUES(06789,'IL','CHICAGO','USA',897,24);
INSERT INTO EMPLOYEE_ADDRESS VALUES(16569,'RA','JK','USA',597,25);
INSERT INTO EMPLOYEE_ADDRESS VALUES(12075,'NA','NEW','PAK',12,26);
INSERT INTO EMPLOYEE_ADDRESS VALUES(12145,'WI','HJK','NZ',103,27);
INSERT INTO EMPLOYEE_ADDRESS VALUES(56788,'TN','ABCD','CHINA',15,28);
INSERT INTO EMPLOYEE_ADDRESS VALUES(78965,'YN','PINK','SWIZ',865,29);
INSERT INTO EMPLOYEE_ADDRESS VALUES(79409,'CH','TEST','LONDON',18,30);
INSERT INTO EMPLOYEE_ADDRESS VALUES(12056,'TY','TMX','USA',545,31);
INSERT INTO EMPLOYEE_ADDRESS VALUES(78214,'AS','TH','PA',785,32);
INSERT INTO EMPLOYEE_ADDRESS VALUES(09875,'MA','BOSTON','USA',16,33);
INSERT INTO EMPLOYEE_ADDRESS VALUES(87654,'MA','NEW HAMPSHIRE','USA',7,34);

SELECT * FROM EMPLOYEE_ADDRESS;

############################################################################################################################################################################################################################################################



DROP TABLE IF EXISTS INVENTORY;
CREATE TABLE IF NOT EXISTS INVENTORY(ASSET_ID varchar(30) PRIMARY KEY,ASSET_LOC VARCHAR(30) NOT NULL,ASSET_NAME VARCHAR(25) NOT NULL,E_ID INT,FOREIGN KEY (E_ID)REFERENCES EMPLOYEE (E_ID));
INSERT INTO INVENTORY VALUES('01HW789D','DoctorRoom','Computer',1);
INSERT INTO INVENTORY VALUES('134HMK89','NurseRoom','Computer',2);
INSERT INTO INVENTORY VALUES('MJFU9090','ReceptionistRoom','Computer',3);
INSERT INTO INVENTORY VALUES('09DJS8SD','ITManager','Computer',4);
INSERT INTO INVENTORY VALUES('8983HNDD','InventoryRoom','Computer',5);
INSERT INTO INVENTORY VALUES('NHHSGS67','EmergencyManagerRoom','Computer',6);
INSERT INTO INVENTORY VALUES('MMKC098D','LabTechnicianRoom','XRay',7);
INSERT INTO INVENTORY VALUES('DNHHDY78','FinanceManagerRoom','Computer',8);
INSERT INTO INVENTORY VALUES('KIIS7891','DoctorRoom','Computer',9);
INSERT INTO INVENTORY VALUES('XBGHHD78','Pharmacy','Computer',10);
INSERT INTO INVENTORY VALUES('NDJE68DD','FinanceManagerRoom','Computer',11);
INSERT INTO INVENTORY VALUES('KKSGIO67','EmergencyManagerRoom','Computer',12);
INSERT INTO INVENTORY VALUES('UTC2344T','DoctorRoom','Computer',13);
INSERT INTO INVENTORY VALUES('EWTY345U','DoctorRoom','Computer',14);
INSERT INTO INVENTORY VALUES('DERT567I','DoctorRoom','Computer',15);
INSERT INTO INVENTORY VALUES('DGHRJ689','NURSERoom','Computer',16);
INSERT INTO INVENTORY VALUES('FGRJ6897','NURSERoom','Computer',17);
INSERT INTO INVENTORY VALUES('HLOP1234','NURSERoom','Computer',18);
INSERT INTO INVENTORY VALUES('jklo1564','Reception','Computer',19);
INSERT INTO INVENTORY VALUES('HJKNBM12','Reception','Computer',20);
INSERT INTO INVENTORY VALUES('BNCVXC12','ITManager','Computer',21);
INSERT INTO INVENTORY VALUES('JSDMJKS1','EmergencyManagerRoom','Computer',22);
INSERT INTO INVENTORY VALUES('XZCBN123','LabTechnicianRoom','Computer',23);
INSERT INTO INVENTORY VALUES('BNCVHJ80','LabTechnicianRoom','Computer',24);
INSERT INTO INVENTORY VALUES('HJNMKL12','FinanceManagerRoom','Computer',25);
INSERT INTO INVENTORY VALUES('NMBHKLM1','EmergencyManagerRoom','Computer',26);
INSERT INTO INVENTORY VALUES('HNMBVH12','LabTechnicianRoom','Computer',27);
INSERT INTO INVENTORY VALUES('TYVBNZ19','LabTechnicianRoom','Computer',28);
INSERT INTO INVENTORY VALUES('A452FHJL','LabTechnicianRoom','Computer',29);
INSERT INTO INVENTORY VALUES('THN12AA2','LabTechnicianRoom','Computer',30);
INSERT INTO INVENTORY VALUES('GHNCVB12','LabTechnicianRoom','Computer',31);
INSERT INTO INVENTORY VALUES('HNMBN456','LabTechnicianRoom','Computer',32);
INSERT INTO INVENTORY VALUES('KYTRERW7','Pharmacy','Computer',33);
INSERT INTO INVENTORY VALUES('IOYRT678','Pharmacy','Computer',34);

SELECT * FROM INVENTORY;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS EMPLOYEE_DETAILS;
CREATE TABLE IF NOT EXISTS EMPLOYEE_DETAILS(E_SSN VARCHAR(20) PRIMARY KEY,SALARY BIGINT NOT NULL,ROLE VARCHAR(20) NOT NULL,E_ID int, ASSET_ID varchar(30),foreign key (E_ID) references EMPLOYEE(E_ID),foreign key(ASSET_ID) references INVENTORY(ASSET_ID));
INSERT INTO EMPLOYEE_DETAILS VALUES('12ABF12',20000,'Doctor',1,'01HW789D');
INSERT INTO EMPLOYEE_DETAILS VALUES('6789POKJH',30000,'Nurse',2,'134HMK89');
INSERT INTO EMPLOYEE_DETAILS VALUES('CFVSB80D',40000,'Receptionist',3,'MJFU9090');
INSERT INTO EMPLOYEE_DETAILS VALUES('QSDFG1623',60000,'ITManager',4,'09DJS8SD');
INSERT INTO EMPLOYEE_DETAILS VALUES('VBDJS771H',70000,'InventoryManager',5,'8983HNDD');
INSERT INTO EMPLOYEE_DETAILS VALUES('12873HDJ',50000,'EmergencyManager',6,'NHHSGS67');
INSERT INTO EMPLOYEE_DETAILS VALUES('XJKEHW78',50000,'LabTechnician',7,'MMKC098D');
INSERT INTO EMPLOYEE_DETAILS VALUES('PWHBDJ782B',90000,'FinanceManager',8,'DNHHDY78');
INSERT INTO EMPLOYEE_DETAILS VALUES('BCJE98',20000,'Doctor',9,'KIIS7891');
INSERT INTO EMPLOYEE_DETAILS VALUES('1388DH',20000,'Pharmacist',10,'XBGHHD78');
INSERT INTO EMPLOYEE_DETAILS VALUES('90GSJDK6',25600,'FinanceManager',11,'NDJE68DD');
INSERT INTO EMPLOYEE_DETAILS VALUES('789RTEJK7',28099,'EmergencyManager',12,'KKSGIO67');
INSERT INTO EMPLOYEE_DETAILS VALUES('9YUIOKKK9',28998,'Doctor',13,'UTC2344T');
INSERT INTO EMPLOYEE_DETAILS VALUES('I999TYURR',27899,'Doctor',14,'EWTY345U');
INSERT INTO EMPLOYEE_DETAILS VALUES('YY8Y9UU6U',34566,'Doctor',15,'DERT567I');
INSERT INTO EMPLOYEE_DETAILS VALUES('JKBNXMJ5J',25000,'Nurse',16,'DGHRJ689');
INSERT INTO EMPLOYEE_DETAILS VALUES('NBBBV1MN1',12000,'Nurse',17,'FGRJ6897');
INSERT INTO EMPLOYEE_DETAILS VALUES('MNNVVC1CC',17000,'Nurse',18,'HLOP1234');
INSERT INTO EMPLOYEE_DETAILS VALUES('VXZAS108M',13000,'Receptionist',19,'jklo1564');
INSERT INTO EMPLOYEE_DETAILS VALUES('NBCVD785N',19000,'Receptionist',20,'HJKNBM12');
INSERT INTO EMPLOYEE_DETAILS VALUES('NBCVXD447',25000,'ITManager',21,'BNCVXC12');
INSERT INTO EMPLOYEE_DETAILS VALUES('EERERE11J',22000,'EmergencyManager',22,'JSDMJKS1');
INSERT INTO EMPLOYEE_DETAILS VALUES('LTLTH12BN',19000,'LabTechnician',23,'XZCBN123');
INSERT INTO EMPLOYEE_DETAILS VALUES('LMNCVZX12',18000,'LabTechnician',24,'BNCVHJ80');
INSERT INTO EMPLOYEE_DETAILS VALUES('MNLTEM21M',28000,'FinanceManager',25,'HJNMKL12');
INSERT INTO EMPLOYEE_DETAILS VALUES('125DDMCMK',58622,'EmergencyManager',26,'NMBHKLM1');
INSERT INTO EMPLOYEE_DETAILS VALUES('12DDKLM56',7500,'LabTechnician',27,'HNMBVH12');
INSERT INTO EMPLOYEE_DETAILS VALUES('KL12NMS45',5820,'LabTechnician',28,'TYVBNZ19');
INSERT INTO EMPLOYEE_DETAILS VALUES('JMB1230JL',57892,'LabTechnician',29,'A452FHJL ');
INSERT INTO EMPLOYEE_DETAILS VALUES('4SH12JKSS',60052,'LabTechnician',30,'THN12AA2 ');
INSERT INTO EMPLOYEE_DETAILS VALUES('45SKSHJIK',63012,'LabTechnician',31,'GHNCVB12 ');
INSERT INTO EMPLOYEE_DETAILS VALUES('T67YHNHJK',785234,'LabTechnician',32,'HNMBN456');
INSERT INTO EMPLOYEE_DETAILS VALUES('QERT567IL',987775,'Pharmacist',33,'KYTRERW7');
INSERT INTO EMPLOYEE_DETAILS VALUES('UIOYT789K',765444,'Pharmacist',34,'IOYRT678');

SELECT * FROM EMPLOYEE_DETAILS;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS DOCTOR;
CREATE TABLE IF NOT EXISTS DOCTOR(E_ID INT NOT NULL,DOC_ID INT PRIMARY KEY, DEPT_NAME VARCHAR(20)NOT NULL,DOC_TYPE VARCHAR(20) NOT NULL,foreign key (E_ID) references EMPLOYEE(E_ID));
INSERT INTO DOCTOR VALUES(1,1,'Cardiologist','INHOUSE');
INSERT INTO DOCTOR VALUES(9,9,'General','VISITNG');
INSERT INTO DOCTOR VALUES(13,13,'ORTHO','INHOUSE');
INSERT INTO DOCTOR VALUES(14,14,'ENT','INHOUSE');
INSERT INTO DOCTOR VALUES(15,15,'NEURO','VISITING');

SELECT * FROM DOCTOR;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS IN_HOUSE_DOCTOR;
CREATE TABLE IF NOT EXISTS IN_HOUSE_DOCTOR(DOC_ID INT,IN_HOUSE_DOC_ID INT PRIMARY KEY,foreign key (DOC_ID) references Doctor(DOC_ID));
INSERT INTO IN_HOUSE_DOCTOR VALUES(1,1);
INSERT INTO IN_HOUSE_DOCTOR VALUES(13,13);
INSERT INTO IN_HOUSE_DOCTOR VALUES(14,14);

SELECT * FROM IN_HOUSE_DOCTOR;
############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS VISITING_DOCTOR;
CREATE TABLE IF NOT EXISTS VISITING_DOCTOR(DOC_ID INT,VISITING_ID INT PRIMARY KEY,VISITING_DOC_DATE DATE NOT NULL,foreign key (DOC_ID) references Doctor(DOC_ID));
INSERT INTO VISITING_DOCTOR VALUES(9,9,'2014-11-15');
INSERT INTO VISITING_DOCTOR VALUES(15,15,'2014-11-18');

SELECT * FROM VISITING_DOCTOR;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS NURSE;
CREATE TABLE IF NOT EXISTS NURSE (NURSE_ID INT PRIMARY KEY,E_ID INT,foreign key (E_ID) references EMPLOYEE(E_ID) );
INSERT INTO NURSE VALUES(2,2);
INSERT INTO NURSE VALUES(16,16);
INSERT INTO NURSE VALUES(17,17);
INSERT INTO NURSE VALUES(18,18);

SELECT * FROM NURSE;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS IT_MANAGER;
CREATE TABLE IF NOT EXISTS IT_MANAGER(IT_MANAGER_ID INT PRIMARY KEY,E_ID INT NOT NULL,ASSET_ID VARCHAR(20) NOT NULL,foreign key (E_ID) references EMPLOYEE(E_ID),foreign key (ASSET_ID) references INVENTORY(ASSET_ID));
INSERT INTO IT_MANAGER VALUES(4,4,'01HW789D');
INSERT INTO IT_MANAGER VALUES(21,21,'HLOP1234');

SELECT * FROM IT_MANAGER;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS RECEPTION;
CREATE TABLE IF NOT EXISTS RECEPTION(REQUEST_ID INT PRIMARY KEY,E_ID INT,R_ID INT NOT NULL,REQUEST_STATUS VARCHAR(25), foreign key (E_ID) references EMPLOYEE(E_ID));
INSERT INTO RECEPTION VALUES(1000,3,3,'new');
INSERT INTO RECEPTION VALUES(1001,19,19,'new');
INSERT INTO RECEPTION VALUES(1002,20,20,'new');



SELECT* FROM RECEPTION;

############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS EMERGENCY_MANAGER;
CREATE TABLE IF NOT EXISTS EMERGENCY_MANAGER(VEHICLE_NO varchar(20) NOT NULL,REQUEST_ID INT ,EMERGENCYMGR_ID INT PRIMARY KEY,VEHICLE_STATUS VARCHAR(10) NOT NULL,E_ID int not null,foreign key (E_ID) references EMPLOYEE(E_ID),foreign key (REQUEST_ID) references RECEPTION(REQUEST_ID));
INSERT INTO EMERGENCY_MANAGER VALUES('BOS123',1000,6,'Processing',6);
INSERT INTO EMERGENCY_MANAGER VALUES('MAA234',1001,22,'Processing',22);
INSERT INTO EMERGENCY_MANAGER VALUES('SRT154',1002,26,'Processing',26);


select * from EMERGENCY_MANAGER;

############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS PATIENT;
CREATE TABLE IF NOT EXISTS PATIENT(P_ID INT PRIMARY KEY,P_NAME VARCHAR(20),P_AGE INT ,P_HEIGHT INT,P_WEIGHT INT,P_TYPE VARCHAR(20),DATE_VISIT DATE, CONTACT_NO BIGINT,DOC_ID int,foreign key (DOC_ID) references DOCTOR(DOC_ID));
INSERT INTO PATIENT VALUES(500,'Dennis',10,175,200,'Inpatient','2014-05-10',9879898868,1);
INSERT INTO PATIENT VALUES(501,'Menace',20,185,185,'Outpatient','2014-06-20',234898890,9);
INSERT INTO PATIENT VALUES(502,'Swat',30,195,180,'Inpatient','2014-10-02',87685677,1);
INSERT INTO PATIENT VALUES(503,'Kats',35,165,190,'Outpatient','2014-01-30',897765765,15);
INSERT INTO PATIENT VALUES(504,'Drax',45,178,205,'Inpatient','2014-05-30',2345678534,1);
INSERT INTO PATIENT VALUES(505,'jenna',55,166,190,'Inpatient','2014-10-02',2345678654,9);
INSERT INTO PATIENT VALUES(506,'Laura',15,178,202,'Outpatient','2014-02-20',6543213674,14);
INSERT INTO PATIENT VALUES(507,'SHARMA',70,167,170,'Inpatient','2014-11-15',12401235486,13);
INSERT INTO PATIENT VALUES(508,'RAHUL',25,161,190,'Outpatient','2014-11-15',12401235486,13);

select * from PATIENT;

############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS IN_PATIENT;
CREATE TABLE IF NOT EXISTS IN_PATIENT(IN_P_ID INT PRIMARY KEY,ADMISSION_DATE DATE NOT NULL,DISCHARGE_DATE DATE NOT NULL,P_ID int not null,foreign key (P_ID) references PATIENT(P_ID));
INSERT INTO IN_PATIENT VALUES(500,'2014-08-14','2014-08-16',500);
INSERT INTO IN_PATIENT VALUES(502,'2014-07-11','2014-08-14',502);
INSERT INTO IN_PATIENT VALUES(504,'2014-06-13','2014-07-19',504);
INSERT INTO IN_PATIENT VALUES(505,'2014-11-11','2014-11-21',505);
INSERT INTO IN_PATIENT VALUES(507,'2014-11-15','2014-11-20',507);

select * from IN_PATIENT;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS OUT_PATIENT;
CREATE TABLE IF NOT EXISTS OUT_PATIENT(OUT_P_ID INT PRIMARY KEY,VISITING_TIME TIME NOT NULL,P_ID INT not null,foreign key (P_ID) references PATIENT(P_ID));
INSERT INTO OUT_PATIENT VALUES(501,'23:22:55',501);
INSERT INTO OUT_PATIENT VALUES(503,'19:21:20',503);
INSERT INTO OUT_PATIENT VALUES(506,'11:12:33',506);
INSERT INTO OUT_PATIENT VALUES(508,'09:12:56',508);

select * from OUT_PATIENT;



############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS VISITOR;
CREATE TABLE IF NOT EXISTS VISITOR(VISITOR_ID INT PRIMARY KEY,VISITOR_NAME VARCHAR(30) NOT NULL,IN_TIME TIME NOT NULL,OUT_TIME TIME NOT NULL,P_ID INT NOT NULL,foreign key (P_ID) references PATIENT(P_ID));
INSERT INTO VISITOR VALUES(50,'Bhuvanesh','14:05:10','15:02:40',500);
INSERT INTO VISITOR VALUES(51,'Kumar','18:30:10','19:15:30',502);
INSERT INTO VISITOR VALUES(52,'ASWIN','20:20:15','21:30:30',501);
INSERT INTO VISITOR VALUES(53,'TRICIA','21:00:05','23:30:30',503);
INSERT INTO VISITOR VALUES(54,'RAJ','19:00:25','21:30:10',504);
INSERT INTO VISITOR VALUES(55,'PETER','19:00:25','21:30:10',505);
INSERT INTO VISITOR VALUES(56,'CHRIS','11:10:35','13:45:15',506);
INSERT INTO VISITOR VALUES(57,'MIC','15:15:15','17:45:35',507);
INSERT INTO VISITOR VALUES(58,'PATRICK','10:10:37','17:50:15',508);

select * from VISITOR;
 
############################################################################################################################################################################################################################################################



DROP TABLE IF EXISTS PATIENT_DETAILS;
CREATE TABLE IF NOT EXISTS PATIENT_DETAILS(P_ZIPCODE INT PRIMARY KEY, P_STATE VARCHAR(20) not null, P_CITY VARCHAR (20) not null, P_COUNTRY VARCHAR(10) not null, P_DOOR_NO INT not null,P_ID INT NOT NULL,foreign key (P_ID) references PATIENT(P_ID));
INSERT INTO PATIENT_DETAILS VALUES(02134,"MA","Boston","USA",10,500);
INSERT INTO PATIENT_DETAILS VALUES(01115,"IL","Chicago","USA",20,501);
INSERT INTO PATIENT_DETAILS VALUES(02115,"TX","Houston","USA",110,502);
INSERT INTO PATIENT_DETAILS VALUES(02135,"MA","Boston","USA",220,503);
INSERT INTO PATIENT_DETAILS VALUES(23453,"NY","NYC","USA",1100,504);
INSERT INTO PATIENT_DETAILS VALUES(01236,"CA","Springs","USA",20,505);
INSERT INTO PATIENT_DETAILS VALUES(09877,"IL","orlando","USA",450,506);
INSERT INTO PATIENT_DETAILS VALUES(02315,"RI","HEJ","USA",750,507);
INSERT INTO PATIENT_DETAILS VALUES(12045,"NJ","ME","USA",20,508);

select * from PATIENT_DETAILS;

#######################FINISH THIS#####################################################################################################################################################################################################################################


DROP TABLE IF EXISTS FINANCE;
CREATE TABLE IF NOT EXISTS FINANCE(FINANCE_MGR_ID INT NOT NULL,E_ID INT NOT NULL,BILL_NO INT PRIMARY KEY AUTO_INCREMENT,P_ID INT not null, PAY_MODE VARCHAR(20) NOT NULL,PAY_STATUS VARCHAR(30) NOT NULL,TOTAL_BILL_AMT DOUBLE NOT NULL,foreign key (E_ID) references EMPLOYEE(E_ID),foreign key (P_ID) references patient(P_ID));


select * from FINANCE;


############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS LAB;
CREATE TABLE IF NOT EXISTS LAB(LAB_ID INT PRIMARY KEY,LAB_NAME VARCHAR(20) NOT NULL);
INSERT INTO LAB VALUES(100,'BLOOD LAB');
INSERT INTO LAB VALUES(200,'PATHOLOGY LAB');
INSERT INTO LAB VALUES(300,'ENDOSCOPY LAB');
INSERT INTO LAB VALUES(400,'MRI LAB');
INSERT INTO LAB VALUES(500,'CT SCAN LAB');
INSERT INTO LAB VALUES(600,'OPTICAL LAB');
INSERT INTO LAB VALUES(700,'XRAY LAB');
INSERT INTO LAB VALUES(800,'RADIOLOGY LAB');
INSERT INTO LAB VALUES(900,'EEG LAB');

select * from LAB;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS LAB_TECHNICIAN;
CREATE TABLE IF NOT EXISTS LAB_TECHNICIAN(LAB_TECHNICIAN_ID INT PRIMARY KEY, LAB_ID int,E_ID INT,foreign key (Lab_ID) references LAB (Lab_ID),foreign key (E_ID) references EMPLOYEE(E_ID));
INSERT INTO LAB_TECHNICIAN VALUES(7,100,7);
INSERT INTO LAB_TECHNICIAN VALUES(23,200,23);
INSERT INTO LAB_TECHNICIAN VALUES(24,300,24);
INSERT INTO LAB_TECHNICIAN VALUES(27,400,27);
INSERT INTO LAB_TECHNICIAN VALUES(28,500,28);
INSERT INTO LAB_TECHNICIAN VALUES(29,600,29);
INSERT INTO LAB_TECHNICIAN VALUES(30,700,30);
INSERT INTO LAB_TECHNICIAN VALUES(31,800,31);
INSERT INTO LAB_TECHNICIAN VALUES(32,900,32);

select * from LAB_TECHNICIAN;

############################################################################################################################################################################################################################################################

DROP TABLE IF EXISTS ROOM;
CREATE TABLE IF NOT EXISTS ROOM(ROOM_NO INT PRIMARY KEY,ROOM_TARIFF INT NOT NULL ,NO_OF_DAYS_STAYED INT NOT NULL,P_ID INT NOT NULL,NURSE_ID INT NOT NULL,FOREIGN KEY(P_ID) REFERENCES PATIENT(P_ID),FOREIGN KEY(NURSE_ID) REFERENCES NURSE(NURSE_ID)); 
INSERT INTO ROOM VALUES(2000,100,2,500,2);
INSERT INTO ROOM VALUES(2001,700,3,502,16);
INSERT INTO ROOM VALUES(2002,100,36,504,17);
INSERT INTO ROOM VALUES(2003,300,10,505,18);
INSERT INTO ROOM VALUES(2004,100,5,507,2);

select * from ROOM;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS TEST;
CREATE TABLE IF NOT EXISTS TEST(TEST_ID INT PRIMARY KEY,DESCRIPTION VARCHAR(20) NOT NULL,CHARGES FLOAT NOT NULL,P_ID INT NOT NULL,FOREIGN KEY(P_ID) REFERENCES PATIENT(P_ID));
INSERT INTO TEST VALUES(6000,'BloodTest',200,500);
INSERT INTO TEST VALUES(6001,'SugarTest',100,502);
INSERT INTO TEST VALUES(6002,'EEG',500,504);
INSERT INTO TEST VALUES(6003,'ECG',200,505);
INSERT INTO TEST VALUES(6004,'RESPIRATORY TEST',200,505);
INSERT INTO TEST VALUES(6005,'MRI SCAN',200,506);
INSERT INTO TEST VALUES(6006,'CT SCAN',200,507);
INSERT INTO TEST VALUES(6007,'STRESS TEST',200,505);

select * from TEST;

############################################################################################################################################################################################################################################################


DROP TABLE IF EXISTS PHARMACY;
CREATE TABLE  IF NOT EXISTS PHARMACY(PRESCRIPTION_NO INT PRIMARY KEY,PHARMACY_ID int NOT NULL,P_ID int NOT NULL,E_ID int NOT NULL,FOREIGN KEY(P_ID) REFERENCES PATIENT(P_ID),FOREIGN KEY(E_ID) REFERENCES EMPLOYEE(E_ID));
INSERT INTO PHARMACY VALUES(001,10,500,10);
INSERT INTO PHARMACY VALUES(002,33,501,33);
INSERT INTO PHARMACY VALUES(003,34,502,34);
INSERT INTO PHARMACY VALUES(004,10,503,10);
INSERT INTO PHARMACY VALUES(005,33,504,33);
INSERT INTO PHARMACY VALUES(006,34,505,34);
INSERT INTO PHARMACY VALUES(007,33,506,33);
INSERT INTO PHARMACY VALUES(008,10,502,10);
INSERT INTO PHARMACY VALUES(009,10,508,10);
INSERT INTO PHARMACY VALUES(010,33,504,33);
INSERT INTO PHARMACY VALUES(011,34,507,34);

select * from PHARMACY;


############################################################################################################################################################################################################################################################



DROP TABLE IF EXISTS PRESCRIPTION;
CREATE TABLE IF NOT EXISTS PRESCRIPTION(MEDICINE_ID INT PRIMARY KEY ,PRESCRIPTION_NO INT,DISPENSE_DATE DATE NOT NULL,P_MED_NAME VARCHAR(30),P_MED_QTY INT,P_CHARGES_INCURRED DOUBLE,FOREIGN KEY(PRESCRIPTION_NO) REFERENCES PHARMACY(PRESCRIPTION_NO));
INSERT INTO PRESCRIPTION VALUES(1,001,'2014-11-02','CROCIN',10,100);
INSERT INTO PRESCRIPTION VALUES(2,002,'2014-10-10','TUMPS',12,150);
INSERT INTO PRESCRIPTION VALUES(3,003,'2013-02-02','ANACIN',4,60);
INSERT INTO PRESCRIPTION VALUES(4,004,'2014-05-22','BANDAID',6,80);
INSERT INTO PRESCRIPTION VALUES(5,005,'2014-06-27','THERMOMETER',1,150);
INSERT INTO PRESCRIPTION VALUES(6,006,'2014-03-04','MASK',10,50);
INSERT INTO PRESCRIPTION VALUES(7,007,'2014-11-09','LENS SOLUTION',15,150);
INSERT INTO PRESCRIPTION VALUES(8,009,'2014-11-10','GEL',25,700);
INSERT INTO PRESCRIPTION VALUES(9,010,'2014-06-27','LISTERINE',5,100);
INSERT INTO PRESCRIPTION VALUES(10,011,'2014-06-27','VOLINI GEL',2,300);

select * from PRESCRIPTION;




###################CALCULATING THE TOTAL_ROOM_RENT#########################################################################################################################################################################################################################################





SELECT P_ID,ROOM_NO,ROOM_TARIFF*NO_OF_DAYS_STAYED AS TOTAL_AMOUNT FROM ROOM;


############################################################################################################################################################################################################################################################

select * from hospital
INNER JOIN HOSPITAL_ADDRESS 
ON HOSPITAL.ZIPCODE = HOSPITAL_ADDRESS.ZIPCODE;

############################################################################################################################################################################################################################################################


select*from hospital
LEFT JOIN HOSPITAL_ADDRESS 
ON HOSPITAL.ZIPCODE = HOSPITAL_ADDRESS.ZIPCODE;

############################################################################################################################################################################################################################################################



select * from LAB_TECHNICIAN 
left outer JOIN LAB
ON  LAB_TECHNICIAN.LAB_ID = LAB.LAB_ID;

############################################################################################################################################################################################################################################################


select E_NAME from EMPLOYEE 
where E_ID IN (select E_ID from LAB_TECHNICIAN 
left outer JOIN LAB
ON  LAB_TECHNICIAN.LAB_ID = LAB.LAB_ID);

############################################################################################################################################################################################################################################################


SELECT AVG(P_CHARGES_INCURRED)AS AVG_SALES FROM PRESCRIPTION WHERE DISPENSE_DATE='2014-06-27' ;

############################################################################################################################################################################################################################################################




select * from employee join employee_details on employee.e_id = employee_details.e_id; 

############################################################################################################################################################################################################################################################

select * from doctor where doc_type='inhouse';

select * from doctor join patient on doctor.doc_id = patient.doc_id;


select doctor.doc_id,doctor.doc_type,patient.p_name,patient.p_type from doctor join patient on patient.doc_id=doctor.doc_id where p_type='inpatient';

select doctor.doc_id,doctor.doc_type,patient.p_name,patient.p_type,room.ROOM_NO from doctor join patient on patient.doc_id=doctor.doc_id JOIN  ROOM ON PATIENT.P_ID = ROOM.P_ID;

############################################################################################################################################################################################################################################################

select * from EMPLOYEE where e_age between 20 and 35;
select max(e_age) from employee ;
select min(e_age) from employee;

select * from EMPLOYEE where e_age between 20 and 35;
select count(e_gender) from employee where e_gender = 'M'; 
############################################################################################################################################################################################################################################################

SET SQL_SAFE_UPDATES=0;

UPDATE EMERGENCY_MANAGER SET VEHICLE_STATUS ='SENT';

SELECT RECEPTION. REQUEST_ID, RECEPTION.R_ID, RECEPTION.Request_Status,EMERGENCY_MANAGER. EMERGENCYMGR_ID, EMERGENCY_MANAGER. VEHICLE_NO, EMERGENCY_MANAGER. VEHICLE_STATUS FROM RECEPTION join EMERGENCY_MANAGER on RECEPTION. REQUEST_ID = EMERGENCY_MANAGER. REQUEST_ID;


Select IT_MANAGER. IT_MANAGER_ID, IT_MANAGER. ASSET_ID, INVENTORY .E_ID, INVENTORY. ASSET_LOC FROM  IT_MANAGER  join INVENTORY on IT_MANAGER. ASSET_ID = INVENTORY. ASSET_ID; 

SELECT PATIENT.P_ID,PATIENT.P_NAME,PATIENT.P_TYPE,VISITOR.VISITOR_ID,VISITOR.VISITOR_NAME,VISITOR.IN_TIME, VISITOR.OUT_TIME FROM PATIENT JOIN VISITOR ON PATIENT.P_ID =VISITOR .P_ID; 

###############################################################################################################################################################################################################################################################################

CREATE VIEW PATIENTDETAILS_VIEW AS 
SELECT

PATIENT.P_NAME,PATIENT.DATE_VISIT,IN_PATIENT.ADMISSION_DATE,IN_PATIENT.DISCHARGE_DATE FROM PATIENT,IN_PATIENT WHERE 
  PATIENT.P_ID=IN_PATIENT.P_ID;

SELECT * FROM PATIENTDETAILS_VIEW;



CREATE VIEW PHARMACY_AND_PATIENT_RELATIONSHIP_VIEW as
select
PATIENT.P_NAME,PHARMACY.PRESCRIPTION_NO,PRESCRIPTION.MEDICINE_ID,PRESCRIPTION.DISPENSE_DATE,PRESCRIPTION.P_MED_NAME,
PRESCRIPTION.P_MED_QTY,PRESCRIPTION.P_CHARGES_INCURRED FROM PATIENT,PHARMACY,PRESCRIPTION WHERE PATIENT.P_ID=PHARMACY.P_ID 
AND PHARMACY.PRESCRIPTION_NO=PRESCRIPTION.PRESCRIPTION_NO;
  
SELECT * FROM PHARMACY_AND_PATIENT_RELATIONSHIP_VIEW;


DROP VIEW PATIENTDETAILS_VIEW;
###############################################################################################################################################


SELECT AVG(e_age) AS AVERAGE_AGE FROM EMPLOYEE;

###################Creates Index###############################################################################################################################


CREATE INDEX employee_id

ON employee (e_id,E_NAME);

SELECT * FROM EMPLOYEE_ID;

create index patient_id

on PATIENT (p_id);


ALTER TABLE employee DROP INDEX employee_id;

####################################################################################################################################################

SELECT E_NAME FROM EMPLOYEE WHERE E_ID IN (SELECT E_ID FROM EMPLOYEE_ADDRESS

WHERE Country='USA'

AND (City='BOSTON' OR City='ALSTON') ORDER BY E_NAME);


select * from EMPLOyee where e_age between 20 and 35;

select count(e_gender) from employee where e_gender = 'M'; 



select sum(P_CHARGES_INCURRED) as total_bill_amount_for_medicines from prescription where dispense_date = '2014-06-27';

select P_MED_NAME from prescription where p_med_name like 'c%';

################# Updating the out-patient visiting time using TRANSACTIONS######################################################################
START TRANSACTION;
SAVEPOINT S;
UPDATE OUT_PATIENT SET VISITING_TIME ='16:40:26' WHERE OUT_P_ID=508;
SELECT * FROM OUT_PATIENT;
ROLLBACK TO SAVEPOINT S;
SELECT * FROM OUT_PATIENT;
COMMIT;
#######################################################################################################################################################
#To create Finance table

DROP TABLE IF EXISTS FINANCE;
CREATE TABLE IF NOT EXISTS FINANCE(FINANCE_MGR_ID INT NOT NULL ,E_ID INT  NOT NULL,P_ID INT, BILL_NO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,PAY_MODE VARCHAR(20) NOT NULL,PAY_STATUS VARCHAR(30) NOT NULL,TOTAL_BILL_AMT DOUBLE NOT NULL,foreign key (E_ID) references EMPLOYEE(E_ID),foreign key (P_ID) references patient(P_ID));

#Trigger 1:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_room_insert`
AFTER INSERT ON `health_care_management`.`room`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'room');
	END$$
DELIMITER ;
#Trigger2:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_room_update`
AFTER UPDATE ON `health_care_management`.`room`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'room');
	END$$
DELIMITER ;
#Trigger3:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_test_update`
AFTER UPDATE ON `health_care_management`.`test`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'test');
	END$$
DELIMITER ;
#Trigger4:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_test_insert`
AFTER INSERT ON `health_care_management`.`test`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'test');
	END$$
DELIMITER ;
#Trigger5:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_out_patient_insert`
AFTER INSERT ON `health_care_management`.`out_patient`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'out_patient');
	END$$
DELIMITER ;
#Trigger6:
use health_care_management;
DELIMITER $$
CREATE TRIGGER `after_out_patient_update`
AFTER UPDATE ON `health_care_management`.`out_patient`
    FOR EACH ROW 
	BEGIN
	CALL cal_tot_bill(NEW.P_ID,'out_patient');
	END$$
DELIMITER ;

#Stored Procedure:
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_tot_bill`(IN v_p_id INTEGER(11),IN v_table VARCHAR(50))
BEGIN

DECLARE v_finished INTEGER DEFAULT 0;

DECLARE v_total_amt INTEGER(25) DEFAULT 0;

DECLARE v_charges FLOAT;
DECLARE v_room_tariff INTEGER(11);
DECLARE v_no_of_days_stayed INTEGER(11);
DECLARE v_total_bill_amt DOUBLE;

DECLARE cnt INTEGER(11) default 0;

DECLARE CUR_PID_IN CURSOR FOR
	SELECT  tst.charges , room.room_tariff , room.no_of_days_stayed
	FROM TEST tst,
		 ROOM room
	WHERE tst.p_id = room.p_id
	AND tst.p_id = v_p_id;

DECLARE CUR_PID_OUT CURSOR FOR
	SELECT  tst.charges 
	FROM TEST tst,
		 out_patient out1
	WHERE tst.p_id = out1.p_id
	AND tst.p_id = v_p_id;

DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;

IF (v_table = 'room' OR v_table = 'test') THEN

	OPEN CUR_PID_IN;
	 
	 get_pid: LOOP
	 
	 FETCH CUR_PID_IN INTO  v_charges , v_room_tariff , v_no_of_days_stayed;
	 
	 IF v_finished = 1 THEN 
	 LEAVE get_pid;
	 END IF;


	 SET v_total_amt = v_charges + (v_room_tariff * v_no_of_days_stayed);


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

			INSERT INTO `HEALTH_CARE_MANAGEMENT`.`FINANCE` VALUES (8,8,v_p_id,'','Cash ','paid ',v_total_amt);

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

			INSERT INTO `HEALTH_CARE_MANAGEMENT`.`FINANCE` VALUES (8,8,v_p_id,'','Cash ','paid ',v_total_amt);

	 END IF;

	 
	 set cnt = 0;
	 
	 
	 END LOOP get_pid;
	 
	 CLOSE CUR_PID_OUT;
	 #Cursor Ends
END IF;
END

#Insert Sample Values:

INSERT INTO ROOM VALUES(2000,100,5,500,2);
INSERT INTO ROOM VALUES(2001,200,5,502,2);
INSERT INTO ROOM VALUES(2002,100,5,504,2);
INSERT INTO ROOM VALUES(2003,100,2,505,2);


INSERT INTO TEST VALUES(6000,'BloodTest',200,500);
INSERT INTO TEST VALUES(6001,'SugarTest',100,502);
INSERT INTO TEST VALUES(6002,'DiagnosisTest',500,504);
INSERT INTO TEST VALUES(6003,'BloodTest',200,505);
insert into test values(6004,'BloodPressureTest',350,501);

INSERT INTO OUT_PATIENT VALUES(501,'23:22:55',501);
INSERT INTO OUT_PATIENT VALUES(503,'19:21:20',503);
INSERT INTO OUT_PATIENT VALUES(506,'11:12:33',506);

#To drop trigger:
drop trigger after_room_insert;
drop trigger after_room_update;
drop trigger after_test_update;
drop trigger after_test_insert;
drop trigger after_out_patient_insert;
drop trigger after_out_patient_update;

 
############################################################################################################################################################################################################################################################

SELECT * FROM emergency_manager;
select * from reception;
DELIMITER $$
CREATE  TRIGGER trigger_emergency  
after UPDATE on  EMERGENCY_MANAGER
FOR EACH ROW
 begin
 UPDATE RECEPTION SET REQUEST_STATUS ='CLOSED';

 end $$
 
 DROP TRIGGER trigger_emergency;


############################################################################################################################################################################################################################################################
DELIMITER $$
CREATE PROCEDURE VISITPROC()
BEGIN
SELECT VISITOR_NAME,IN_TIME,OUT_TIME,P_NAME
FROM VISITOR INNER JOIN PATIENT
ON VISITOR.P_ID=PATIENT.P_ID;
END $$

CALL VISITPROC();

###############################################################################################################################################################################################################################


