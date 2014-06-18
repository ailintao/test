--------------------------------------------------------
--  File created - Wednesday-June-18-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUST_CONTACT
--------------------------------------------------------

  CREATE TABLE "AIDATAUSER"."CUST_CONTACT" 
   (	"CUST_ID" VARCHAR2(32 CHAR), 
	"MAIN_FAMILY_NAME" VARCHAR2(200 BYTE), 
	"MAIN_GIVEN_NAME" VARCHAR2(60 BYTE), 
	"MAIN_GENDER" VARCHAR2(20 CHAR), 
	"MAIN_MAILS" VARCHAR2(2000 BYTE), 
	"CHB_REPORT_EMAIL" VARCHAR2(2000 BYTE), 
	"MAIN_POSITION" VARCHAR2(200 BYTE), 
	"MAIN_TELEPHONE" VARCHAR2(200 CHAR), 
	"MAIN_MOBILE" VARCHAR2(500 CHAR), 
	"MAIN_FAX" VARCHAR2(200 CHAR), 
	"INV_COMPANY_NAME" VARCHAR2(255 BYTE), 
	"KPI_COMPANY_NAME" VARCHAR2(255 BYTE), 
	"INDUSTRY" VARCHAR2(100 CHAR), 
	"ACCOUNT_FLAG" VARCHAR2(30 CHAR), 
	"ADDRESS" VARCHAR2(800 BYTE), 
	"CITY" VARCHAR2(255 BYTE), 
	"POSTAL_CODE" VARCHAR2(100 CHAR), 
	"COUNTRY_REGION" VARCHAR2(100 CHAR), 
	"DECISION_COUNTRY" VARCHAR2(100 CHAR), 
	"SALES_TURNOVER" VARCHAR2(50 CHAR), 
	"PURCHASE_AMOUNT" VARCHAR2(50 CHAR), 
	"HOMEPAGE" VARCHAR2(255 CHAR), 
	"ALT1_FAMILY_NAME" VARCHAR2(500 BYTE), 
	"ALT1_GIVEN_NAME" VARCHAR2(500 BYTE), 
	"ALT1_GENDER" VARCHAR2(500 CHAR), 
	"ALT1_EMAIL" VARCHAR2(255 CHAR), 
	"ALT1_POSITION" VARCHAR2(500 BYTE), 
	"ALT2_FAMILY_NAME" VARCHAR2(500 BYTE), 
	"ALT2_GIVEN_NAME" VARCHAR2(500 BYTE), 
	"ALT2_GENDER" VARCHAR2(200 CHAR), 
	"ALT2_EMAIL" VARCHAR2(255 CHAR), 
	"ALT2_POSITION" VARCHAR2(500 BYTE), 
	"ALT3_FAMILY_NAME" VARCHAR2(500 BYTE), 
	"ALT3_GIVEN_NAME" VARCHAR2(500 BYTE), 
	"ALT3_GENDER" VARCHAR2(200 CHAR), 
	"ALT3_EMAIL" VARCHAR2(255 CHAR), 
	"ALT3_POSITION" VARCHAR2(500 BYTE), 
	"RECEIVE_REPORT_EMAIL" VARCHAR2(2000 BYTE), 
	"ACCOUNT_NAME" VARCHAR2(500 BYTE), 
	"ACCOUNT_GENDER" VARCHAR2(500 BYTE), 
	"ACCOUNT_GIVEN_NAME" VARCHAR2(500 BYTE), 
	"ACCOUNT_TEL" VARCHAR2(300 CHAR), 
	"ACCOUNT_FAX" VARCHAR2(300 CHAR), 
	"ACCOUNT_EMAIL" VARCHAR2(256 BYTE), 
	"ACCOUNT_COMMENTS" VARCHAR2(256 BYTE), 
	"ACCOUNT_BANK_DETAILS" VARCHAR2(256 BYTE), 
	"CREATE_TIME" TIMESTAMP (6) DEFAULT systimestamp, 
	"UPDATE_TIME" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AIDATA" ;
 

   COMMENT ON TABLE "AIDATAUSER"."CUST_CONTACT"  IS 'Contact Information';
--------------------------------------------------------
--  DDL for Index CUST_CONTACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AIDATAUSER"."CUST_CONTACT_PK" ON "AIDATAUSER"."CUST_CONTACT" ("CUST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AIINDX" ;
--------------------------------------------------------
--  Constraints for Table CUST_CONTACT
--------------------------------------------------------

  ALTER TABLE "AIDATAUSER"."CUST_CONTACT" ADD CONSTRAINT "CUST_CONTACT_PK" PRIMARY KEY ("CUST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AIINDX"  ENABLE;
 
  ALTER TABLE "AIDATAUSER"."CUST_CONTACT" MODIFY ("CUST_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CUST_CONTACT
--------------------------------------------------------

  ALTER TABLE "AIDATAUSER"."CUST_CONTACT" ADD CONSTRAINT "CUST_CONTACT_FK" FOREIGN KEY ("CUST_ID")
	  REFERENCES "AIDATAUSER"."CUST_PROFILE" ("CUST_ID") ENABLE;
