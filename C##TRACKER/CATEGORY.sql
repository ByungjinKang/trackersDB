--------------------------------------------------------
--  파일이 생성됨 - 수요일-2월-14-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "C##TRACKER"."CATEGORY" 
   (	"ID" NUMBER(38,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"TYPE_ID" NUMBER(38,0), 
	"USER_ID" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_EX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TRACKER"."CATEGORY_EX_PK" ON "C##TRACKER"."CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "C##TRACKER"."CATEGORY" ADD CONSTRAINT "CATEGORY_EX_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "C##TRACKER"."CATEGORY" ADD CONSTRAINT "CATEGORY_TYPE_FK" FOREIGN KEY ("TYPE_ID")
	  REFERENCES "C##TRACKER"."TYPE" ("ID") ENABLE;
  ALTER TABLE "C##TRACKER"."CATEGORY" ADD CONSTRAINT "CATEGORY_APP_USER_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##TRACKER"."APP_USER" ("NUM") ENABLE;
