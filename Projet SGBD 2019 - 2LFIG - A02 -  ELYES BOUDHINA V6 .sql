--------------------------------------------------------
--  File created - Sunday-April-14-2019   
--------------------------------------------------------
DROP SEQUENCE "E-BOUDHINA"."NS";
DROP SEQUENCE "E-BOUDHINA"."NS2";
DROP SEQUENCE "E-BOUDHINA"."NS3";
DROP SEQUENCE "E-BOUDHINA"."NS4";
DROP TABLE "E-BOUDHINA"."CONSULTATION" cascade constraints;
DROP TABLE "E-BOUDHINA"."MEDECIN" cascade constraints;
DROP TABLE "E-BOUDHINA"."MEDICAMENT" cascade constraints;
DROP TABLE "E-BOUDHINA"."PATIENT" cascade constraints;
DROP TABLE "E-BOUDHINA"."PRESCRIPTION" cascade constraints;
DROP TABLE "E-BOUDHINA"."DEPT" cascade constraints;
DROP TABLE "E-BOUDHINA"."DEMO_USERS" cascade constraints;
DROP PROCEDURE "E-BOUDHINA"."AFFICHERMEDECIN";
DROP PROCEDURE "E-BOUDHINA"."NOM_DEPT2";
DROP PROCEDURE "E-BOUDHINA"."PDELETECONSULTATION";
DROP PROCEDURE "E-BOUDHINA"."PDELETEMEDECIN";
DROP PROCEDURE "E-BOUDHINA"."PDELETEMEDICAMENT";
DROP PROCEDURE "E-BOUDHINA"."PDELETEPATIENT";
DROP PROCEDURE "E-BOUDHINA"."PDELETEPRESCRIPTION";
DROP PROCEDURE "E-BOUDHINA"."PINSERTCONSULTATION";
DROP PROCEDURE "E-BOUDHINA"."PINSERTMEDECIN";
DROP PROCEDURE "E-BOUDHINA"."PINSERTMEDICAMENT";
DROP PROCEDURE "E-BOUDHINA"."PINSERTPATIENT";
DROP PROCEDURE "E-BOUDHINA"."PINSERTPRESCRIPTION";
DROP PROCEDURE "E-BOUDHINA"."PUPDATECONSULTATION";
DROP PROCEDURE "E-BOUDHINA"."PUPDATEMEDECIN";
DROP PROCEDURE "E-BOUDHINA"."PUPDATEPATIENT";
DROP PROCEDURE "E-BOUDHINA"."PUPDATEPRESCRIPTION";
DROP PROCEDURE "E-BOUDHINA"."RE_INFO_PAT";
DROP PROCEDURE "E-BOUDHINA"."RE_INFO_PAT2";
DROP PACKAGE "E-BOUDHINA"."MYPACKAGE";
DROP PACKAGE "E-BOUDHINA"."PACKAGE";
DROP PACKAGE "E-BOUDHINA"."PAC_EMPL";
DROP PACKAGE BODY "E-BOUDHINA"."MYPACKAGE";
DROP FUNCTION "E-BOUDHINA"."CUSTOM_AUTH";
DROP FUNCTION "E-BOUDHINA"."CUSTOM_HASH";
DROP FUNCTION "E-BOUDHINA"."NOM_DEPT";
DROP FUNCTION "E-BOUDHINA"."PC";
DROP SYNONYM "PUBLIC"."DUAL";
DROP SYNONYM "PUBLIC"."DBMS_OUTPUT";
DROP SYNONYM "PUBLIC"."DBMS_OBFUSCATION_TOOLKIT";
DROP SYNONYM "PUBLIC"."UTL_RAW";
--------------------------------------------------------
--  DDL for Sequence NS
--------------------------------------------------------

   CREATE SEQUENCE  "E-BOUDHINA"."NS"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NS2
--------------------------------------------------------

   CREATE SEQUENCE  "E-BOUDHINA"."NS2"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NS3
--------------------------------------------------------

   CREATE SEQUENCE  "E-BOUDHINA"."NS3"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NS4
--------------------------------------------------------

   CREATE SEQUENCE  "E-BOUDHINA"."NS4"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 25 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CONSULTATION
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."CONSULTATION" 
   (	"NUM_CONSUL" NUMBER(10,0), 
	"DATE_CONSULT" DATE, 
	"MATRICULE" NUMBER(10,0), 
	"NOSS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEDECIN
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."MEDECIN" 
   (	"MATRICULE" NUMBER(10,0), 
	"NOM_MED" VARCHAR2(30 BYTE), 
	"PRENOM_MED" VARCHAR2(30 BYTE), 
	"SPECIALITE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEDICAMENT
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."MEDICAMENT" 
   (	"CODE_MED" NUMBER(10,0), 
	"LIBELLE" VARCHAR2(30 BYTE), 
	"NBPRISEMAX" NUMBER(4,0), 
	"QUANTITEMAX" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."PATIENT" 
   (	"NOSS" NUMBER(10,0), 
	"NOM_PAT" VARCHAR2(15 BYTE), 
	"PRENOM_PAT" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRESCRIPTION
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."PRESCRIPTION" 
   (	"CODE_MED" NUMBER(10,0), 
	"NUM_CONSUL" NUMBER(10,0), 
	"NBPRISE" NUMBER(4,0), 
	"QUANTITE" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."DEPT" 
   (	"DEPTNO" NUMBER(2,0), 
	"DNAME" VARCHAR2(14 BYTE), 
	"LOC" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEMO_USERS
--------------------------------------------------------

  CREATE TABLE "E-BOUDHINA"."DEMO_USERS" 
   (	"USER_ID" NUMBER, 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(4000 BYTE), 
	"CREATED_ON" DATE, 
	"QUOTA" NUMBER, 
	"PRODUCTS" CHAR(1 BYTE), 
	"EXPIRES_ON" DATE, 
	"ADMIN_USER" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into "E-BOUDHINA".CONSULTATION
SET DEFINE OFF;
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (17,to_date('10-APR-19','DD-MON-RR'),5,6);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (18,to_date('11-APR-19','DD-MON-RR'),3,6);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (19,to_date('13-APR-19','DD-MON-RR'),11,6);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (11,to_date('10-MAY-18','DD-MON-RR'),6,2);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (24,to_date('10-APR-19','DD-MON-RR'),5,6);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (10,to_date('09-SEP-19','DD-MON-RR'),2,2);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (12,to_date('06-SEP-19','DD-MON-RR'),6,3);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (13,to_date('07-APR-19','DD-MON-RR'),4,4);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (14,to_date('14-APR-19','DD-MON-RR'),3,5);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (15,to_date('04-AUG-19','DD-MON-RR'),1,1);
Insert into "E-BOUDHINA".CONSULTATION (NUM_CONSUL,DATE_CONSULT,MATRICULE,NOSS) values (16,to_date('14-APR-19','DD-MON-RR'),1,1);
REM INSERTING into "E-BOUDHINA".MEDECIN
SET DEFINE OFF;
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (16,'semi','fehri','chay');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (1,'MARTINEZ','Conchita','dermatologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (2,'NAVRATILOVA','Martina','ophtalmologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (3,'GRAF','Steffi','immunologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (4,'HALARD','Julie','chirurgie cardiaque');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (5,'PIERCE','Mary','gastro-entérologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (6,'EDBERG','Stephan','rhumatologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (11,'amir','Ben gamra','rhumologie');
Insert into "E-BOUDHINA".MEDECIN (MATRICULE,NOM_MED,PRENOM_MED,SPECIALITE) values (10,'BOUDHINA','ELYES','ophtalmologie');
REM INSERTING into "E-BOUDHINA".MEDICAMENT
SET DEFINE OFF;
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (11,'test1',2,5);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (1,'DOLIPRANE',7,1000);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (2,'AUGMENTIN',2,500);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (3,'XANAX',1,200);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (4,'IMODIUM',8,200);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (5,'FORLAX',1,100);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (6,'CLAMOXYL',10,500);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (7,'GAVISCON',3,400);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (8,'SUBUTEX',6,250);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (9,'APROVEL',4,90);
Insert into "E-BOUDHINA".MEDICAMENT (CODE_MED,LIBELLE,NBPRISEMAX,QUANTITEMAX) values (10,'BETADINE',5,1000);
REM INSERTING into "E-BOUDHINA".PATIENT
SET DEFINE OFF;
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (6,'BOYER','Loroy');
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (1,'FORGET','Guy');
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (2,'FLEURIAN','Jean-Philippe');
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (3,'WILANDER','Mats');
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (4,'CONNORS','Jimmy');
Insert into "E-BOUDHINA".PATIENT (NOSS,NOM_PAT,PRENOM_PAT) values (5,'MCENROE','John');
REM INSERTING into "E-BOUDHINA".PRESCRIPTION
SET DEFINE OFF;
Insert into "E-BOUDHINA".PRESCRIPTION (CODE_MED,NUM_CONSUL,NBPRISE,QUANTITE) values (3,16,1,10);
Insert into "E-BOUDHINA".PRESCRIPTION (CODE_MED,NUM_CONSUL,NBPRISE,QUANTITE) values (1,17,2,4);
Insert into "E-BOUDHINA".PRESCRIPTION (CODE_MED,NUM_CONSUL,NBPRISE,QUANTITE) values (3,10,1,200);
Insert into "E-BOUDHINA".PRESCRIPTION (CODE_MED,NUM_CONSUL,NBPRISE,QUANTITE) values (6,18,2,2);
Insert into "E-BOUDHINA".PRESCRIPTION (CODE_MED,NUM_CONSUL,NBPRISE,QUANTITE) values (10,19,1,1);
--------------------------------------------------------
--  DDL for Index PK_MEDECIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "E-BOUDHINA"."PK_MEDECIN" ON "E-BOUDHINA"."MEDECIN" ("MATRICULE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEDICAMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "E-BOUDHINA"."PK_MEDICAMENT" ON "E-BOUDHINA"."MEDICAMENT" ("CODE_MED") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PATIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "E-BOUDHINA"."PK_PATIENT" ON "E-BOUDHINA"."PATIENT" ("NOSS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index pk_consultation
--------------------------------------------------------

  CREATE UNIQUE INDEX "E-BOUDHINA"."pk_consultation" ON "E-BOUDHINA"."CONSULTATION" ("NUM_CONSUL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index pk_prescription
--------------------------------------------------------

  CREATE UNIQUE INDEX "E-BOUDHINA"."pk_prescription" ON "E-BOUDHINA"."PRESCRIPTION" ("CODE_MED", "NUM_CONSUL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger AUTO_INC_Consultation
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."AUTO_INC_Consultation" 
BEFORE
insert on "CONSULTATION"
for each row
begin

        if (:new.Num_consul is null) then
           select ns4.nextval into :new.Num_consul from dual;
        end if;

end;
/
ALTER TRIGGER "E-BOUDHINA"."AUTO_INC_Consultation" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTO_INC_Medecin
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."AUTO_INC_Medecin" 
BEFORE
insert on "MEDECIN"
for each row
begin

        if (:new.matricule is null) then
           select ns.nextval into :new.matricule from dual;
        end if;

end;
/
ALTER TRIGGER "E-BOUDHINA"."AUTO_INC_Medecin" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTO_INC_Medicament
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."AUTO_INC_Medicament" 
BEFORE
insert on "MEDICAMENT"
for each row
begin

        if (:new.code_med is null) then
           select ns3.nextval into :new.code_med from dual;
        end if;

end;
/
ALTER TRIGGER "E-BOUDHINA"."AUTO_INC_Medicament" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTO_INC_Patient
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."AUTO_INC_Patient" 
BEFORE
insert on "PATIENT"
for each row
begin

        if (:new.noss is null) then
           select ns2.nextval into :new.noss from dual;
        end if;

end;
/
ALTER TRIGGER "E-BOUDHINA"."AUTO_INC_Patient" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Overdose
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."Overdose" 
BEFORE INSERT ON prescription
FOR EACH ROW
   
    
 declare 
    nbmax exception;
    qtemax exception;
    nbprisemax1 medicament.nbprisemax%type;
  quantitemax1 medicament.quantitemax%type;


begin
        select nbprisemax into nbprisemax1  from medicament where :NEW.code_med=medicament.code_med  ;       
      select quantitemax into quantitemax1  from medicament where :NEW.code_med=medicament.code_med ;        
              if (:NEW.nbprise > nbprisemax1) then            
            
              raise nbmax; 
              
               end if ;

               if (:NEW.quantite > quantitemax1) then 
               raise qtemax; 
               
               end if ;

               
                   dbms_output.put_line('Prescription a été Ajouter Avec Succés ');
               
               
                exception 
                    when nbmax  then 
                    
                    Raise_Application_Error (-20343, 'Nbre De Prise Max Dépassé '||SQLCODE||' | '||' -ERROR- '||'(::::> '||SQLERRM||' <::::)');
                    
                    when qtemax then        
                    Raise_Application_Error (-20344, 'Quantite Max Dépassé '||' | '||SQLCODE||' | '||' -ERROR- '||'(::::> '||SQLERRM||' <::::)');
                    
                    --when others then 
                  --  raise_application_error(-20001,'Une erreur a eté rencontrer - '||SQLCODE||' -ERROR- '||SQLERRM);
               
end;
/
ALTER TRIGGER "E-BOUDHINA"."Overdose" ENABLE;
--------------------------------------------------------
--  DDL for Trigger overdose1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."overdose1" 
BEFORE INSERT ON Prescription
FOR EACH ROW
--when                  -- Seulement lorsque le m.nbrprise à saisir > this.nbrprisemaximum (this pour l’objet courrant Je sais que ça n’existe pas au --niveau du SQL mais est-ce qu’il existe un mot qui le remplace ici ? )
 

    declare 
    x number;
    


begin
        select m.nbprisemax into x               –nombre de prise maximum 
        from medicament m 
        where m.code_med==new.code_med           – code medicament courrant 
              if (new.nbprise>x) then            
              
              RAISE_APPLIACTION_EROOR(-20125,'impossible dajouter '||new.nbprise||' > '||x);   
               end if;
    end;
/
ALTER TRIGGER "E-BOUDHINA"."overdose1" DISABLE;
--------------------------------------------------------
--  DDL for Trigger overdose
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."overdose" 
BEFORE INSERT ON Prescription
FOR EACH ROW
--when
    declare 
    x number;
     


begin
        select nbprise into x
        from prescription 
       join medicament 
        where :new.code_med=medicament.code_med;
            
              if (:new.nbprise>x) then            
              
              RAISE_APPLIACTION_EROOR(-20125,'impossible dajouter '||new.nbprise||' > '||x);   
               end if;
    end;
/
ALTER TRIGGER "E-BOUDHINA"."overdose" DISABLE;
--------------------------------------------------------
--  DDL for Trigger overdose3
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."overdose3" 
BEFORE INSERT ON Prescription
FOR EACH ROW


    declare 
    x number;
    


begin
        select m.nbprisemax into x               –nombre de prise maximum 
        from medicament m 
        where m.code_med=new.code_med           
              if (new.nbprise>x) then            
              
              RAISE_APPLIACTION_EROOR(-20125,'impossible dajouter '||:new.nbprise||' > '||x);   
               end if;
    end;;
/
ALTER TRIGGER "E-BOUDHINA"."overdose3" DISABLE;
--------------------------------------------------------
--  DDL for Trigger overdoseramy
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "E-BOUDHINA"."overdoseramy" 
BEFORE INSERT ON prescription
FOR EACH ROW
   
    
 declare 
    nbmax exception;
    qtemax exception;
    nbprisemax1 medicament.nbprisemax%type;
  quantitemax1 medicament.quantitemax%type;


begin
        select nbprisemax into nbprisemax1  from medicament where :NEW.code_med=medicament.code_med  ;       
      select quantitemax into quantitemax1  from medicament where :NEW.code_med=medicament.code_med ;        
              if (:NEW.nbprise > nbprisemax1) then            
            
              raise nbmax; 
              
               end if ;

               if (:NEW.quantite > quantitemax1) then 
               raise qtemax; 
               
               end if ;

               
                   dbms_output.put_line('Prescription a été Ajouter Avec Succés ');
               
               
                exception 
                    when nbmax  then 
                    
                    Raise_Application_Error (-20343, 'Nbre De Prise Max Dépassé '||SQLCODE||' | '||' -ERROR- '||'(::::> '||SQLERRM||' <::::)');
                    
                    when qtemax then        
                    Raise_Application_Error (-20344, 'Quantite Max Dépassé '||' | '||SQLCODE||' | '||' -ERROR- '||'(::::> '||SQLERRM||' <::::)');
                    
                    --when others then 
                  --  raise_application_error(-20001,'Une erreur a eté rencontrer - '||SQLCODE||' -ERROR- '||SQLERRM);
               
end;
/
ALTER TRIGGER "E-BOUDHINA"."overdoseramy" ENABLE;
--------------------------------------------------------
--  DDL for Procedure AFFICHERMEDECIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."AFFICHERMEDECIN" 

is
 i number :=1;
begin
    dbms_output.put_line('Infomations Sur Les Medecin ');
 dbms_output.put_line('');
for row in (select nom_med , prenom_med, specialite from medecin) loop
    dbms_output.put_line(i||' - '||'Nom : '||row.nom_med||' ********** Prenom : '||row.prenom_med||' ********** Specialité : '||row.specialite);
i:=i+1;
end loop;

end;

/
--------------------------------------------------------
--  DDL for Procedure NOM_DEPT2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."NOM_DEPT2" (numero IN dept.deptno%type,nom OUT dept.dname%type)
    is 
    begin
    select dname into nom 
    from dept
    where deptno = numero;
end;

/
--------------------------------------------------------
--  DDL for Procedure PDELETECONSULTATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PDELETECONSULTATION" 
(id IN NUMBER)
is
   
begin
delete from consultation
where num_consul=id;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Consultation nexiste pas');
else 
    dbms_output.put_line('Opération réussie');
        end if;
end;

/
--------------------------------------------------------
--  DDL for Procedure PDELETEMEDECIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PDELETEMEDECIN" 
(id IN NUMBER)
is
begin
delete from medecin
where matricule=id;
end;

/
--------------------------------------------------------
--  DDL for Procedure PDELETEMEDICAMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PDELETEMEDICAMENT" 
(id IN NUMBER)
is
begin
delete from medicament
where code_med=id;
end;

/
--------------------------------------------------------
--  DDL for Procedure PDELETEPATIENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PDELETEPATIENT" 
(id IN NUMBER)
is
begin
delete from patient
where noss=id;
end;

/
--------------------------------------------------------
--  DDL for Procedure PDELETEPRESCRIPTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PDELETEPRESCRIPTION" 
(id1 IN NUMBER,id2 IN NUMBER)
is
begin
delete from prescription
where code_med=id1
and num_consul=id2;
end;

/
--------------------------------------------------------
--  DDL for Procedure PINSERTCONSULTATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PINSERTCONSULTATION" 
(date IN DATE,
mat IN NUMBER,
noss IN NUMBER)
is
begin
insert into consultation ( date_consult,matricule,noss) values ('date',mat,noss);

end;

/
--------------------------------------------------------
--  DDL for Procedure PINSERTMEDECIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PINSERTMEDECIN" 
(nom IN medecin.nom_med%type,
prenom IN medecin.prenom_med%type,
specialite IN medecin.specialite%type)
is
   
BEGIN
    
    insert into medecin (nom_med,prenom_med,specialite) values (nom,prenom,specialite)  ;
commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure PINSERTMEDICAMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PINSERTMEDICAMENT" 
(libelle IN VARCHAR2,
nbprisemax IN NUMBER,
quantitemax IN NUMBER)
is
begin
 insert into medicament (libelle,nbprisemax,quantitemax) values (libelle,nbprisemax,quantitemax)  ;
commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure PINSERTPATIENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PINSERTPATIENT" 
(nom IN VARCHAR2,
prenom IN VARCHAR2)
is
begin
insert into patient(nom_pat, prenom_pat) values (nom,prenom);
end;

/
--------------------------------------------------------
--  DDL for Procedure PINSERTPRESCRIPTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PINSERTPRESCRIPTION" 
(code  IN VARCHAR2,
num  IN VARCHAR2,
nb  IN VARCHAR2,
qte  IN VARCHAR2)
is
begin
insert into prescription values (code,num,nb,qte);
end;

/
--------------------------------------------------------
--  DDL for Procedure PUPDATECONSULTATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PUPDATECONSULTATION" 
(dat IN date,
mat IN number,
nuss IN number,
id IN NUMBER)
is
begin
update consultation set date_consult=dat, matricule=mat,noss=nuss
where num_consul=id;

end;

/
--------------------------------------------------------
--  DDL for Procedure PUPDATEMEDECIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PUPDATEMEDECIN" 
(nom IN VARCHAR2,
prenom IN VARCHAR2,
spec IN VARCHAR2,
id IN NUMBER)
is
begin
update Medecin set nom_med=nom, prenom_med=prenom, specialite=spec
where matricule=id;

end;

/
--------------------------------------------------------
--  DDL for Procedure PUPDATEPATIENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PUPDATEPATIENT" 
(
nom IN VARCHAR2,
prenom IN VARCHAR2,
id IN NUMBER)
is
begin
update patient set nom_pat=nom, prenom_pat=prenom
where noss=id;

end;

/
--------------------------------------------------------
--  DDL for Procedure PUPDATEPRESCRIPTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."PUPDATEPRESCRIPTION" 
(nb IN number,
qte IN number,
id1 IN NUMBER,
id2 IN NUMBER)
is
begin
update prescription set nbprise=nb, quantite=qte
where code_med=id1
and num_consul=id2;

end;

/
--------------------------------------------------------
--  DDL for Procedure RE_INFO_PAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."RE_INFO_PAT" 
(id IN NUMBER)
is
    --nom medecin.nom_med%type;
  --  dat consultation.date_consult%type ;
begin
    dbms_output.put_line('Le patient qui le code sécurité sociale num '||id||' : ');
dbms_output.put_line('');
    for row in(
select m.nom_med,c.date_consult 
from medecin m ,consultation c 
where m.matricule =c.matricule
and c.noss=id
ORDER by c.date_consult)
    
loop
dbms_output.put_line('a consulté le medecin "'||row.nom_med||'" le  '||row.date_consult);
end loop;
end;

/
--------------------------------------------------------
--  DDL for Procedure RE_INFO_PAT2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "E-BOUDHINA"."RE_INFO_PAT2" 
(id IN NUMBER)
is
     i number :=0;
    --nom medecin.nom_med%type;
  --  dat consultation.date_consult%type ;
begin
    dbms_output.put_line('Le patient qui le code sécurité sociale num '||id||' : ');
dbms_output.put_line('');
    for row in(
select m.libelle ,p.nbprise
from medicament m ,medecin M ,consultation c, prescription p  
where M.matricule =c.matricule
and p.code_med=m.code_med
 and c.num_consul=p.num_consul
and c.noss=id)
    
loop
dbms_output.put_line('a pris le medicament "'||row.libelle||'" et de nombre de prise '||row.nbprise);
i:=i+1;
end loop;
if(i= 0) then 
        dbms_output.put_line('nexiste pas ');
end if;
end;

/
--------------------------------------------------------
--  DDL for Package MYPACKAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "E-BOUDHINA"."MYPACKAGE" as

procedure "AFFICHERMEDECIN";

procedure "PDELETECONSULTATION"(id IN NUMBER);

procedure "PDELETEMEDECIN"(id IN NUMBER);
  
procedure "PDELETEMEDICAMENT"(id IN NUMBER);
   
procedure "PDELETEPATIENT"(id IN NUMBER);
   
procedure "PDELETEPRESCRIPTION"(id1 IN NUMBER,id2 IN NUMBER);
    
procedure "PINSERTCONSULTATION"(dat IN DATE,mat IN NUMBER,noss IN NUMBER);
    
procedure "PINSERTMEDECIN"(nom IN medecin.nom_med%type,prenom IN medecin.prenom_med%type,specialite IN medecin.specialite%type);

procedure "PINSERTMEDICAMENT"(libelle IN VARCHAR2,nbprisemax IN NUMBER,quantitemax IN NUMBER);

procedure "PINSERTPATIENT"(nom IN VARCHAR2,prenom IN VARCHAR2);

procedure "PINSERTPRESCRIPTION"(code  IN VARCHAR2,num  IN VARCHAR2,nb  IN VARCHAR2,qte  IN VARCHAR2);

procedure "PUPDATECONSULTATION"(dat IN date,mat IN number,nuss IN number,id IN NUMBER);

procedure "PUPDATEMEDECIN"(nom IN VARCHAR2,prenom IN VARCHAR2,spec IN VARCHAR2,id IN NUMBER);

procedure "PUPDATEPATIENT"(nom IN VARCHAR2,prenom IN VARCHAR2,id IN NUMBER);

procedure "PUPDATEPRESCRIPTION"(nb IN number,qte IN number,id1 IN NUMBER,id2 IN NUMBER);



procedure "RE_INFO_PAT"(id IN NUMBER); --la liste des noms des médecins avec lesquels le patient a fait des consultations et les dates des consultations.



procedure "RE_INFO_PAT2"(id IN NUMBER); --la liste des médicaments qui lui ont été prescrit pour le patient et leurs nombres de prises.



function "PC" (mat in number) return number; -- le pourcentage de consultation (PC) 
    
    
end;

/
--------------------------------------------------------
--  DDL for Package PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "E-BOUDHINA"."PACKAGE" body "PAC_EMPL" is 
    procedure augmentationSal (val IN number)as
    begin 
    update emp set sal=sal+val;
exception
    when others then dbms_output.put_line(SQLERRM);
    end augmentationSal;
    function moy_sal(numdept in number ) return number as 
        moy number ;
begin 
    select avg(sal) into moy from emp where deptno=numdept;
    return moy;
exception 
    when others then dbms_output.put_line(SQLRRM);
end moy_sal;
end "PAC_EMPL";

/
--------------------------------------------------------
--  DDL for Package PAC_EMPL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "E-BOUDHINA"."PAC_EMPL" as 
    
procedure augmentationSal(val in number);
function moy_sal (numdept in number ) return number;
end ;

/
--------------------------------------------------------
--  DDL for Package Body MYPACKAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "E-BOUDHINA"."MYPACKAGE" is

 procedure "AFFICHERMEDECIN"

is
 i number :=1;
begin
    dbms_output.put_line('Infomations Sur Les Medecin ');
 dbms_output.put_line('');
for row in (select nom_med , prenom_med, specialite from medecin) loop
    dbms_output.put_line(i||' - '||'Nom : '||row.nom_med||' ********** Prenom : '||row.prenom_med||' ********** Specialité : '||row.specialite);
i:=i+1;
end loop;
if(i= 0) then 
        dbms_output.put_line('il ny a pas des Medecins sur la base de donnée ');
end if;

end "AFFICHERMEDECIN";




procedure "PDELETECONSULTATION" (id IN NUMBER)
    
is
begin
delete from consultation
where num_consul=id;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Consultation n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie');
        end if;
end "PDELETECONSULTATION";







procedure "PDELETEMEDECIN" (id IN NUMBER)
    
is
begin
delete from medecin
where matricule=id;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Medecin n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie');
        end if;

end "PDELETEMEDECIN";




procedure "PDELETEMEDICAMENT" (id IN NUMBER)  
     
is
begin
delete from medicament
where code_med=id;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Medicament n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie');
        end if;

end "PDELETEMEDICAMENT";






procedure "PDELETEPATIENT" (id IN NUMBER)
    
is
begin
delete from patient
where noss=id;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Patient n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie');
        end if;

end "PDELETEPATIENT";



 procedure "PDELETEPRESCRIPTION" (id1 IN NUMBER,id2 IN NUMBER)
is
begin
delete from prescription
where code_med=id1
and num_consul=id2;
IF SQL%NOTFOUND THEN

dbms_output.put_line('Prescription n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie');
        end if;

end "PDELETEPRESCRIPTION" ;







procedure "PINSERTCONSULTATION" (dat IN DATE,mat IN NUMBER,noss IN NUMBER)
     
is
begin
insert into consultation ( date_consult,matricule,noss) values (dat,mat,noss);
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PINSERTCONSULTATION" ;






procedure "PINSERTMEDECIN" (nom IN medecin.nom_med%type,prenom IN medecin.prenom_med%type,specialite IN medecin.specialite%type)
     
is
   
BEGIN
    
    insert into medecin (nom_med,prenom_med,specialite) values (nom,prenom,specialite)  ;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;
commit;

end "PINSERTMEDECIN";











procedure "PINSERTMEDICAMENT" (libelle IN VARCHAR2,nbprisemax IN NUMBER,quantitemax IN NUMBER)
    
is
begin
 insert into medicament (libelle,nbprisemax,quantitemax) values (libelle,nbprisemax,quantitemax)  ;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;
commit;

end "PINSERTMEDICAMENT";









procedure "PINSERTPATIENT" (nom IN VARCHAR2,prenom IN VARCHAR2)
is
begin
insert into patient(nom_pat, prenom_pat) values (nom,prenom);
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PINSERTPATIENT" ;










 procedure "PINSERTPRESCRIPTION" (code  IN VARCHAR2,num  IN VARCHAR2,nb  IN VARCHAR2,qte  IN VARCHAR2)
     
is
begin
insert into prescription values (code,num,nb,qte);
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PINSERTPRESCRIPTION";







procedure "PUPDATECONSULTATION" (dat IN date,mat IN number,nuss IN number,id IN NUMBER)

is
begin
update consultation set date_consult=dat, matricule=mat,noss=nuss
where num_consul=id;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end  "PUPDATECONSULTATION";











procedure "PUPDATEMEDECIN" (nom IN VARCHAR2,prenom IN VARCHAR2,spec IN VARCHAR2,id IN NUMBER)
     
is
begin
update Medecin set nom_med=nom, prenom_med=prenom, specialite=spec
where matricule=id;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PUPDATEMEDECIN";








procedure "PUPDATEPATIENT"(nom IN VARCHAR2,prenom IN VARCHAR2,id IN NUMBER)
    
is
begin
update patient set nom_pat=nom, prenom_pat=prenom
where noss=id;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PUPDATEPATIENT";






procedure "PUPDATEPRESCRIPTION" (nb IN number,qte IN number,id1 IN NUMBER,id2 IN NUMBER)
     
is
begin
update prescription set nbprise=nb, quantite=qte
where code_med=id1
and num_consul=id2;
IF SQL%FOUND THEN

 dbms_output.put_line('Opération réussie');
 end if;

end "PUPDATEPRESCRIPTION";

  

--la liste des noms des médecins avec lesquels le patient a fait des consultations et les dates des consultations

procedure "RE_INFO_PAT" (id IN NUMBER)
     
is
     i number :=0;
    --nom medecin.nom_med%type;
  --  dat consultation.date_consult%type ;
begin
    dbms_output.put_line('Le patient qui le code sécurité sociale num '||id||' : ');
dbms_output.put_line('');
    for row in(
select m.nom_med,c.date_consult 
from medecin m ,consultation c 
where m.matricule =c.matricule
and c.noss=id
ORDER by c.date_consult)
    
loop
dbms_output.put_line('a consulté le medecin "'||row.nom_med||'" le  '||row.date_consult);
i:=i+1;
end loop;
if(i= 0) then 
        dbms_output.put_line('n existe pas ');
end if;

end "RE_INFO_PAT";





--la liste des médicaments qui lui ont été prescrit pour le patient et leurs nombres de prises.


procedure "RE_INFO_PAT2" (id IN NUMBER)
    
is
     i number :=0;
    --nom medecin.nom_med%type;
  --  dat consultation.date_consult%type ;
begin
    dbms_output.put_line('Le patient qui le code sécurité sociale num '||id||' : ');
dbms_output.put_line('');
    for row in(
select m.libelle ,p.nbprise
from medicament m ,medecin M ,consultation c, prescription p  
where M.matricule =c.matricule
and p.code_med=m.code_med
 and c.num_consul=p.num_consul
and c.noss=id)
    
loop
dbms_output.put_line('a reçu  le medicament "'||row.libelle||'" et de nombre de prise '||row.nbprise);
i:=i+1;
end loop;
if(i= 0) then 
        dbms_output.put_line('n existe pas ');
end if;

end "RE_INFO_PAT2";






--le pourcentage de consultation (PC) 

function "PC" (mat in number) return number
is
    x number :=null;
    n number;
    pc number;
begin
select count(num_consul) into x
from consultation
where matricule=mat;



select count(num_consul) into n
from consultation;
pc:=TRUNC((x/n)*100,2);
 IF x =0 THEN

dbms_output.put_line('Medecin n existe pas sur la base de donnée');
else 
    dbms_output.put_line('Opération réussie le pourcentage de consultation (PC) de ce medecin est :');
        end if;

return pc;

end PC;





end "MYPACKAGE";

/
--------------------------------------------------------
--  DDL for Function CUSTOM_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "E-BOUDHINA"."CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;

/
--------------------------------------------------------
--  DDL for Function CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "E-BOUDHINA"."CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := '8EKELY7P8KSKK0SB1OSWT3XP7R3KBN';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;

/
--------------------------------------------------------
--  DDL for Function NOM_DEPT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "E-BOUDHINA"."NOM_DEPT" (numero in dept.deptno%type)
    return VARCHAR2
    is
    nom dept.dname%type;
begin
    select dname into nom
    where deptno = numero;
    return nom;
end;

/
--------------------------------------------------------
--  DDL for Function PC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "E-BOUDHINA"."PC" (mat in number)
return number
is
    x number;
    n number;
    pc number;
begin
select count(num_consul) into x
from consultation
where matricule=mat;

select count(num_consul) into n
from consultation;
pc:=TRUNC((x/n)*100,2);
 

return pc;

end;

/
--------------------------------------------------------
--  DDL for Synonymn DUAL
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DUAL" FOR "SYS"."DUAL";
--------------------------------------------------------
--  DDL for Synonymn DBMS_OUTPUT
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DBMS_OUTPUT" FOR "SYS"."DBMS_OUTPUT";
--------------------------------------------------------
--  DDL for Synonymn DBMS_OBFUSCATION_TOOLKIT
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DBMS_OBFUSCATION_TOOLKIT" FOR "SYS"."DBMS_OBFUSCATION_TOOLKIT";
--------------------------------------------------------
--  DDL for Synonymn UTL_RAW
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "UTL_RAW" FOR "SYS"."UTL_RAW";
--------------------------------------------------------
--  Constraints for Table CONSULTATION
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."CONSULTATION" ADD CONSTRAINT "pk_consultation" PRIMARY KEY ("NUM_CONSUL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDECIN
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."MEDECIN" ADD CONSTRAINT "PK_MEDECIN" PRIMARY KEY ("MATRICULE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDICAMENT
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."MEDICAMENT" ADD CONSTRAINT "PK_MEDICAMENT" PRIMARY KEY ("CODE_MED")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."PATIENT" ADD CONSTRAINT "PK_PATIENT" PRIMARY KEY ("NOSS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRESCRIPTION
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."PRESCRIPTION" ADD CONSTRAINT "pk_prescription" PRIMARY KEY ("CODE_MED", "NUM_CONSUL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONSULTATION
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."CONSULTATION" ADD CONSTRAINT "fk_medecin" FOREIGN KEY ("MATRICULE")
	  REFERENCES "E-BOUDHINA"."MEDECIN" ("MATRICULE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRESCRIPTION
--------------------------------------------------------

  ALTER TABLE "E-BOUDHINA"."PRESCRIPTION" ADD CONSTRAINT "fk_cosultation1" FOREIGN KEY ("CODE_MED")
	  REFERENCES "E-BOUDHINA"."MEDICAMENT" ("CODE_MED") ENABLE;
  ALTER TABLE "E-BOUDHINA"."PRESCRIPTION" ADD CONSTRAINT "fk_cosultation2" FOREIGN KEY ("NUM_CONSUL")
	  REFERENCES "E-BOUDHINA"."CONSULTATION" ("NUM_CONSUL") ENABLE;
