--------------------------------------------------------
--  Arquivo criado - quinta-feira-janeiro-26-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FILMES
--------------------------------------------------------

  CREATE TABLE "USR_FILMES"."FILMES" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"TITULO" VARCHAR2(250 BYTE), 
	"DIRETOR" VARCHAR2(250 BYTE), 
	"ANO" NUMBER, 
	"URL_IMDB" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FILMES"."TABLE1_PK" ON "USR_FILMES"."FILMES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FILMES
--------------------------------------------------------

  ALTER TABLE "USR_FILMES"."FILMES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "USR_FILMES"."FILMES" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "USR_FILMES"."FILMES" MODIFY ("DIRETOR" NOT NULL ENABLE);
  ALTER TABLE "USR_FILMES"."FILMES" MODIFY ("ANO" NOT NULL ENABLE);
  ALTER TABLE "USR_FILMES"."FILMES" MODIFY ("URL_IMDB" NOT NULL ENABLE);
  ALTER TABLE "USR_FILMES"."FILMES" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
