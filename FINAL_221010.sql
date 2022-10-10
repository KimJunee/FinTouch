/* 
-- ���� ����
CREATE USER FINAL
IDENTIFIED BY FINAL
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE temp;
-- ���� ����
GRANT CONNECT TO FINAL;
GRANT RESOURCE TO FINAL;
GRANT dba TO FINAL;
GRANT CREATE TABLE TO FINAL;
ALTER USER FINAL DEFAULT TABLESPACE USERS;
*/
-----------------------------------------------------------------
--�������̺�
DROP TABLE USER_T;
CREATE TABLE USER_T (
	USER_NO	    NUMBER	PRIMARY KEY,
	USER_ID	    VARCHAR2(40),
	USER_NAME	    VARCHAR2(40),
	USER_NICKNAME	VARCHAR2(40),
	USER_PHONE	    VARCHAR2(100),
	USER_PASSWORD	VARCHAR2(50),
	USER_EMAIL	    VARCHAR2(100),
	USER_STATUS	VARCHAR2(1) DEFAULT 'Y' CHECK(USER_STATUS IN('Y', 'N'))
);

DROP SEQUENCE SEQ_UNO;
CREATE SEQUENCE SEQ_UNO;

--INSERT INTO USER_T (
--    USER_NO, 
--    USER_ID, 
--    USER_NAME, 
--    USER_NICKNAME,
--    USER_PHONE, 
--    USER_PASSWORD, 
--    USER_EMAIL, 
--    USER_STATUS
--) VALUES(
--    SEQ_UNO.NEXTVAL, 
--    'admin', 
--    '������', 
--    'ROLE_ADMIN', 
--    '010-5138-2620', 
--    '1234', 
--    'admin@iei.or.kr', 
--    DEFAULT
--);

COMMIT;

--SELECT * FROM USER_T;



----------------------------------------------------------------
-- ���ô㺸����(������)

DROP TABLE MORTGAGELOAN;
CREATE TABLE MORTGAGELOAN (
	MORTGAGE_ID	NUMBER	NOT NULL,
	MORTGAGE_DCLS_MONTH	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_CO_NO	NUMBER	NULL,
	MORTGAGE_KOR_CO_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_PRDT_CD	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_PRDT_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_JOIN_WAY	VARCHAR2(1000)	NULL,
	MORTGAGE_LOAN_INCI_EXPN	VARCHAR2(1000)	NULL,
	MORTGAGE_ERLY_RPAY_FEE	VARCHAR2(1000)	NULL,
	MORTGAGE_DLY_RATE	VARCHAR2(1000)	NULL,
	MORTGAGE_LOAN_LMT	VARCHAR2(1000)	NULL,
	MORTGAGE_DCLS_STRT_DAY	VARCHAR2(1000)	NULL,
	MORTGAGE_DCLS_END_DAY	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_CO_SUBM_DAY	VARCHAR2(1000)	NULL
);

SELECT * FROM MORTGAGELOAN;

DROP TABLE MORTGAGELOAN_OPTION;
CREATE TABLE MORTGAGELOAN_OPTION (
	MORTGAGE_NO	NUMBER	NOT NULL,
	MORTGAGE_ID	NUMBER	NOT NULL,
	MORTGAGE_MRTG_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_MRTG_TYPE_NM	VARCHAR2(100)	NULL,
	MORTGAGE_RPAY_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_RPAY_TYPE_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_LEND_RATE_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_LEND_RATE_TYPE_NM	VARCHAR2(100)	NULL,
	MORTGAGE_LEND_RATE_MIN	NUMBER	NULL,
	MORTGAGE_LEND_RATE_MAX	NUMBER	NULL,
	MORTGAGE_LEND_RATE_AVG	NUMBER	NULL
);

SELECT * FROM MORTGAGELOAN_OPTION;
------------------------------------------------------------------------------------------------------

-- �������� - ���ǽ���/������/�ΰ��Ӵ� �о����� �� [�� ������ 2096��] (�ȿ���)
DROP TABLE URBTYMDL;
CREATE TABLE URBTYMDL (
    PBLANC_NO	VARCHAR2(1000)	NULL,
	HOUSE_MANAGE_NO	NUMBER	NULL,
	MODEL_NO	NUMBER	NULL,
	GP	VARCHAR2(1000)	NULL,
	TP	VARCHAR2(1000)	NULL,
	EXCLUSE_AR	NUMBER	NULL,
	SUPLY_HSHLDCO	NUMBER	NULL,
	SUPLY_AMOUNT	VARCHAR2(1000)	NULL,
	SUBSCRPT_REQST_AMOUNT	VARCHAR2(1000)	NULL
);

SELECT * FROM URBTYMDL;
SELECT COUNT(*) FROM URBTYMDL;


----------------------------------------------------------------

-- �������� - APT ������/�ܿ����� �о����� �� [�� ������ 1760��] (�ȿ���)
DROP TABLE REMNDRMDL;
CREATE TABLE REMNDRMDL (
	HOUSE_MANAGE_NO	NUMBER	NOT NULL,
	PBLANC_NO	VARCHAR2(1000)	NULL,
	MODEL_NO	NUMBER	NULL,
	HOUSE_TY	VARCHAR2(1000)	NULL,
	SUPPLY_AR	VARCHAR2(1000)	NULL,
	SUPLY_HSHLDCO	VARCHAR2(1000)	NULL,
	SPSPLY_HSHLDCO	VARCHAR2(1000)	NULL,
	LTTOT_TOP_AMOUNT	VARCHAR2(1000)	NULL
);

SELECT * FROM REMNDRMDL;
SELECT COUNT(*) FROM REMNDRMDL;

-- ���ð�����ȣ = �����ȣ : ��Ű 
--select PBLANC_NO from URBTYOFCTLLTTOTPBLANCDETAIL
--order by PBLANC_NO desc;

-- �����ȣ�� ���Ե� �ټ��� MODEL_NO Ȯ��
--select MODEL_NO
--from REMNDRMDL
--where PBLANC_NO = '2022910218';


----------------------------------------------------------------

-- APT ������/�ܿ����� �о����� �� [�� ������ 547��] (�ȿ���)
DROP TABLE REMNDRLTTOTPBLANCDETAIL;
CREATE TABLE REMNDRLTTOTPBLANCDETAIL (
    HOUSE_MANAGE_NO	NUMBER	NOT NULL,
	PBLANC_NO	VARCHAR2(1000)	NOT NULL,
	HOUSE_NM	VARCHAR2(1000)	NULL,
	HOUSE_SECD	NUMBER	NULL,
	HOUSE_SECD_NM	VARCHAR2(1000)	NULL,
	HSSPLY_ZIP	NUMBER	NULL,
	HSSPLY_ADRES	VARCHAR2(1000)	NULL,
	TOT_SUPLY_HSHLDCO	NUMBER	NULL,
	RCRIT_PBLANC_DE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	SPSPLY_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SPSPLY_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	GNRL_RCEPT_RCPTDE	VARCHAR2(1000)	NULL,
	GNRL_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	PRZWNER_PRESNATN_DE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_BGNDE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_ENDDE	VARCHAR2(1000)	NULL,
	HMPG_ADRES	VARCHAR2(1000)	NULL,
	BSNS_MBY_NM	VARCHAR2(1000)	NULL,
	MDHS_TELNO	VARCHAR2(500)	NULL,
	MVN_PREARNGE_YM	VARCHAR2(1000)	NULL
);

SELECT * FROM REMNDRLTTOTPBLANCDETAIL;


----------------------------------------------------------------

-- û�� ���ǽ���/������/�ΰ��Ӵ� �о����� �� [�� ������ 303��] (�ȿ���)
-- HSSPLY_HSHLDCO - null �����Ͷ� ����
-- MDHS_TELNO - �Ľ̽� ���� �߻�, string���� ���� 
DROP TABLE URBTYOFCTLLTTOTPBLANCDETAIL;
CREATE TABLE URBTYOFCTLLTTOTPBLANCDETAIL (
	PBLANC_NO	VARCHAR2(1000)	NULL,
	HOUSE_MANAGE_NO	NUMBER	NULL,
	HOUSE_NM	VARCHAR2(1000)	NULL,
	HOUSE_SECD	NUMBER	NULL,
	HOUSE_SECD_NM	VARCHAR2(1000)	NULL,
	HOUSE_DTL_SECD	NUMBER	NULL,
	HOUSE_DTL_SECD_NM	VARCHAR2(1000)	NULL,
	SEARCH_HOUSE_SECD	NUMBER	NULL,
	HSSPLY_ZIP	NUMBER	NULL,
	TOT_SUPLY_HSHLDCO	NUMBER	NULL,
	RCRIT_PBLANC_DE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	PRZWNER_PRESNATN_DE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_BGNDE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_ENDDE	VARCHAR2(1000)	NULL,
	HMPG_ADRES	VARCHAR2(1000)	NULL,
	BSNS_MBY_NM	VARCHAR2(1000)	NULL,
	MDHS_TELNO	VARCHAR2(1000)	NULL,
	MVN_PREARNGE_YM	VARCHAR2(1000)	NULL,
	HSSPLY_ADRES	VARCHAR2(1000)	NULL
);

SELECT * FROM URBTYOFCTLLTTOTPBLANCDETAIL;

----------------------------------------------------------------

-- �������� API(������)
DROP TABLE PUBLICSERVICE;
CREATE TABLE PUBLICSERVICE (
    SERVICEID VARCHAR2(15) PRIMARY KEY, -- ����ID
    SERVICENAME VARCHAR2(200), -- ���񽺸�
    SERVICEPURPOSE VARCHAR2(1000), -- ���񽺸���
    SELECTTIONCRITERIA CLOB, -- ��������
    DOCUMENTS CLOB, -- ���񼭷�
    ORGANIZATIONNAME VARCHAR2(100), -- �Ұ������
    CONTACTPHONE VARCHAR2(50), -- ����ó ��ȭ��ȣ
    DEADLINE VARCHAR2(300), -- ��û����
    APPLICATIONMETHOD CLOB, -- ��û���
    SITEURL VARCHAR2(200), -- ��û����Ʈ URL
    RECEPTIONORGNAME VARCHAR2(300), -- ���������
    SUPPORTCONTENT CLOB, -- ��������
    SUPPORTTARGET CLOB, -- �������
    SUPPORTTYPE VARCHAR2(200), -- ��������(EX ����)
    STATUTE VARCHAR2(1000) -- ����
);

SELECT * FROM PUBLICSERVICE;

----------------------------------------------------------------

-- ���⿹�� API

DROP SEQUENCE SEQ_FIXDEPOSIT_NO;
CREATE SEQUENCE SEQ_FIXDEPOSIT_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE FIXDEPOSIT;
CREATE TABLE FIXDEPOSIT (
    FIXDEPOSIT_ID NUMBER PRIMARY KEY,           -- 
    FIXDEPO_TOP_FIN_GRP_NO NUMBER,              -- �ǿ��ڵ�
    FIXDEPO_DCLS_MONTH VARCHAR2(1000),          -- ���� ����� [YYYYMM]
    FIXDEPO_FIN_CO_NO NUMBER,	                -- ����ȸ�� �ڵ�
    FIXDEPO_KOR_CO_NM VARCHAR2(1000),		    -- ����ȸ���
    FIXDEPO_FIN_PRDT_CD VARCHAR2(1000),	        -- ������ǰ �ڵ�
    FIXDEPO_FIN_PRDT_NM VARCHAR2(1000),	        -- ���� ��ǰ��
    FIXDEPO_JOIN_WAY VARCHAR2(1000),		    -- ���� ���
    FIXDEPO_MTRT_INT VARCHAR2(1000),		    -- ���� �� ������
    FIXDEPO_SPCL_CND VARCHAR2(1000),		    -- �������
    FIXDEPO_JOIN_DENY NUMBER,		            -- �������� EX) 1:���Ѿ���, 2:��������, 3:�Ϻ�����
    FIXDEPO_JOIN_MEMBER VARCHAR2(1000),	        -- ���Դ��
    FIXDEPO_ETC_NOTE VARCHAR2(1000),		    -- ��Ÿ ���ǻ���
    FIXDEPO_MAX_LIMIT VARCHAR2(1000),		    -- �ְ��ѵ�
    FIXDEPO_DCLS_STRT_DAY VARCHAR2(1000),	    -- ���� ������ [YYYYMMDD]
    FIXDEPO_DCLS_END_DAY VARCHAR2(1000),	    -- ���� ������
    FIXDEPO_FIN_CO_SUBM_DAY VARCHAR2(1000),     -- ����ȸ�� ������ [YYYYMMDDHH24MI]
    FIXDEPO_INTR_RATE_TYPE VARCHAR2(10),	    -- ���� �ݸ� ����
    FIXDEPO_INTR_RATE_TYPE_NM VARCHAR2(100),    -- ���� �ݸ� ������
    FIXDEPO_SAVE_TRM NUMBER,		            -- ���� �Ⱓ [����: ����]
    FIXDEPO_INTR_RATE NUMBER,		            -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    FIXDEPO_INTR_RATE2 NUMBER		            -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
    );
    
DROP TABLE FIXDEPOSIT_OPTION;
CREATE TABLE FIXDEPOSIT_OPTION(
    FIXDEPOSIT_ID number,                       -- 
    INTR_RATE_TYPE VARCHAR2(10),                -- ���� �ݸ� ����
    INTR_RATE_TYPE_NM CLOB,                     -- ���� �ݸ� ������
    SAVE_TRM number,                            -- ���� �Ⱓ [����: ����]
    INTR_RATE number,                           -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    INTR_RATE2 number                           -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
);

commit;

/* ���⿹�� ������ Ȯ�� (Total 342�� : ���� - 49�� / ������������ - 0�� / �������� - 293�� / ���� - 0�� / �������� - 0��)
select count(*)
from fixdeposit
;

-- �ɼ� Ȯ��
select count(*)
from(
select fixdeposit_id
from fixdeposit_option
group by fixdeposit_id
order by fixdeposit_id
);
*/

-- ���� API

DROP SEQUENCE SEQ_INSSVN_NO;
CREATE SEQUENCE SEQ_INSSVN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE INSTLSAVING;
CREATE TABLE INSTLSAVING (
    INSSVN_ID NUMBER PRIMARY KEY,           -- 
    INSSVN_TOP_FIN_GRP_NO NUMBER,           -- �ǿ��ڵ�
    INSSVN_DCLS_MONTH VARCHAR2(1000),		-- ���� ����� [YYYYMM]
    INSSVN_FIN_CO_NO NUMBER,	            -- ����ȸ�� �ڵ�
    INSSVN_KOR_CO_NM VARCHAR2(1000),		-- ����ȸ�� ��
    INSSVN_FIN_PRDT_CD VARCHAR2(1000),		-- ������ǰ�ڵ�
    INSSVN_FIN_PRDT_NM VARCHAR2(1000),		-- ������ǰ��
    INSSVN_JOIN_WAY VARCHAR2(1000),			-- ���Թ��
    INSSVN_MTRT_INT VARCHAR2(1000),			-- ���� �� ������
    INSSVN_SPCL_CND VARCHAR2(1000),			-- �������
    INSSVN_JOIN_DENY NUMBER,			    -- �������� EX) 1:���Ѿ���, 2:��������, 3:�Ϻ�����
    INSSVN_JOIN_MEMBER VARCHAR2(1000),		-- ���Դ��
    INSSVN_ETC_NOTE VARCHAR2(1000),			-- ��Ÿ ���ǻ���
    INSSVN_MAX_LIMIT NUMBER,			    -- �ְ��ѵ�
    INSSVN_DCLS_STRT_DAY VARCHAR2(1000),	-- ���� ������
    INSSVN_DCLS_END_DAY VARCHAR2(1000),		-- ���� ������
    INSSVN_FIN_CO_SUBM_DAY VARCHAR2(1000),	-- ����ȸ�� ������ [YYYYMMDDHH24MI]
    INSSVN_INTR_RATE_TYPE VARCHAR2(10),		-- ���� �ݸ� ����
    INSSVN_INTR_RATE_TYPE_NM VARCHAR2(100),	-- ���� �ݸ� ������
    INSSVN_RSRV_TYPE VARCHAR2(10),			-- ���� ����
    INSSVN_RSRV_TYPE_NM VARCHAR2(1000),		        -- ���� ������
    INSSVN_SAVE_TRM NUMBER,			        -- ���� �Ⱓ [����: ����]
    INSSVN_INTR_RATE NUMBER,			    -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    INSSVN_INTR_RATE2 NUMBER			    -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
);

DROP TABLE INSSVN_OPTION;
CREATE TABLE INSSVN_OPTION(
    INSSVN_ID NUMBER,                       -- 
    INTR_RATE_TYPE VARCHAR2(10),		-- ���� �ݸ� ����
    INTR_RATE_TYPE_NM VARCHAR2(100),	-- ���� �ݸ� ������
    RSRV_TYPE VARCHAR2(10),			-- ���� ����
    RSRV_TYPE_NM VARCHAR2(1000),		        -- ���� ������
    SAVE_TRM NUMBER,			        -- ���� �Ⱓ [����: ����]
    INTR_RATE NUMBER,			    -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    INTR_RATE2 NUMBER			    -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
);

/* ���� ������ Ȯ�� (Total 300�� : ���� - 64�� / ������������ - 0�� / �������� - 236�� / ���� - 0�� / �������� - 0��)
select count(*)
from INSTLSAVING
;

-- �ɼ� Ȯ��
select count(*)
from(
select INSSVN_ID
from INSSVN_OPTION
group by INSSVN_ID
order by INSSVN_ID
);
*/

-- �����ڱݴ��� API
DROP SEQUENCE SEQ_LEASELOAN_NO;
CREATE SEQUENCE SEQ_LEASELOAN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE LEASELOAN;
CREATE TABLE LEASELOAN (
    LEASELOAN_ID NUMBER PRIMARY KEY,            -- 
    LEASELOAN_TOP_FIN_GRP_NO NUMBER,            -- �ǿ��ڵ�
    LEASELOAN_DCLS_MONTH VARCHAR2(1000),		-- ���� ����� [YYYYMM]
    LEASELOAN_FIN_CO_NO NUMBER,		            -- ����ȸ�� �ڵ�
    LEASELOAN_KOR_CO_NM VARCHAR2(1000),			-- ����ȸ�� ��
    LEASELOAN_FIN_PRDT_CD VARCHAR2(1000), 		-- ������ǰ �ڵ�
    LEASELOAN_FIN_PRDT_NM VARCHAR2(1000),		-- ������ǰ��
    LEASELOAN_JOIN_WAY VARCHAR2(1000),			-- ���Թ��
    LEASELOAN_LOAN_INCI_EXPN VARCHAR2(1000),	-- ���� �δ���
    LEASELOAN_ERLY_RPAY_FEE VARCHAR2(1000),		-- �ߵ���ȯ ������
    LEASELOAN_DLY_RATE VARCHAR2(1000),	    	-- ��ü ������
    LEASELOAN_LOAN_LMT VARCHAR2(1000),			-- �����ѵ�
    LEASELOAN_DCLS_STRT_DAY VARCHAR2(1000),		-- ���� ������
    LEASELOAN_DCLS_END_DAY VARCHAR2(1000),		-- ���� ������
    LEASELOAN_FIN_CO_SUBM_DAY VARCHAR2(1000),	-- ����ȸ�� ������ [YYYYMMDDHH24MI]
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- �����ȯ���� �ڵ�
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- �����ȯ����
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- ����ݸ����� �ڵ�
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- ����ݸ�����
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- ����ݸ�_���� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- ����ݸ�_�ְ� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- ���� ��� ��ձݸ� [�Ҽ��� 2�ڸ�]
);

DROP TABLE LEASELOAN_OPTION;
CREATE TABLE LEASELOAN_OPTION(
    LEASELOAN_ID NUMBER,                        -- 
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- �����ȯ���� �ڵ�
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- �����ȯ����
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- ����ݸ����� �ڵ�
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- ����ݸ�����
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- ����ݸ�_���� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- ����ݸ�_�ְ� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- ���� ��� ��ձݸ� [�Ҽ��� 2�ڸ�]
);

/* �����ڱݴ��� ������ Ȯ�� (Total 47�� : ���� - 32�� / ������������ - 0�� / �������� - 6�� / ���� - 9�� / �������� - 0��)
select count(*)
from LEASELOAN
;

-- �ɼ� Ȯ��
select count(*)
from(
select LEASELOAN_ID
from LEASELOAN_OPTION
group by LEASELOAN_ID
order by LEASELOAN_ID
);
*/

-- ���νſ���� API
DROP SEQUENCE SEQ_CREDITLOAN_NO;
CREATE SEQUENCE SEQ_CREDITLOAN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE CREDITLOAN;
CREATE TABLE CREDITLOAN (
    CREDITLOAN_ID NUMBER PRIMARY KEY,                   -- 
    CREDITLOAN_TOP_FIN_GRP_NO NUMBER,                   -- �ǿ��ڵ�
    CREDITLOAN_DCLS_MONTH VARCHAR2(1000),				-- ���� ����� [YYYYMM]
    CREDITLOAN_FIN_CO_NO NUMBER,			            -- ����ȸ���ڵ�
    CREDITLOAN_KOR_CO_NM VARCHAR2(1000),				-- ����ȸ�� ��
    CREDITLOAN_FIN_PRDT_CD VARCHAR2(1000),				-- ������ǰ�ڵ�
    CREDITLOAN_FIN_PRDT_NM VARCHAR2(1000),			    -- ������ǰ��
    CREDITLOAN_JOIN_WAY	VARCHAR2(1000),				    -- ���Թ��
    CREDITLOAN_CRDT_PRDT_TYPE NUMBER,			        -- �������� �ڵ�
    CREDITLOAN_CRDT_PRDT_TYPE_NM VARCHAR2(1000),		-- ����������
    CREDITLOAN_CB_NAME VARCHAR2(1000),					-- CB ȸ���
    CREDITLOAN_DCLS_STRT_DAY VARCHAR2(1000),			-- ���� ������
    CREDITLOAN_DCLS_END_DAY	VARCHAR2(1000),			    -- ���� ������
    CREDITLOAN_FIN_CO_SUBM_DAY VARCHAR2(1000),			-- ����ȸ�� ������ [YYYYMMDDHH24MI]
    CREDITLOAN_CRDT_LEND_RATE_TYPE VARCHAR2(10),		-- �ݸ����� �ڵ�
    CREDITLOAN_CRDT_LEND_TYPE_NM VARCHAR2(1000),	    -- �ݸ�����
    CREDITLOAN_CRDT_GRAD_1	NUMBER,			            -- 900�� �ʰ� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_4	NUMBER,			            -- 801~900�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_5	NUMBER,			            -- 701~800�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_6	NUMBER,			            -- 601~700�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_10	NUMBER,			            -- 501~600�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_11	NUMBER,			            -- 401~500�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_12	NUMBER,			            -- 301~400�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_13	NUMBER,			            -- 300�� ���� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_AVG NUMBER			            -- ��� �ݸ� [�Ҽ��� 2�ڸ�]
);

DROP TABLE CREDITLOAN_OPTION;
CREATE TABLE CREDITLOAN_OPTION(
    CREDITLOAN_ID NUMBER,                               -- 
    CREDITLOAN_CRDT_LEND_RATE_TYPE VARCHAR2(10),		-- �ݸ����� �ڵ�
    CREDITLOAN_CRDT_LEND_TYPE_NM VARCHAR2(1000),	    -- �ݸ�����
    CREDITLOAN_CRDT_GRAD_1	NUMBER,			            -- 900�� �ʰ� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_4	NUMBER,			            -- 801~900�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_5	NUMBER,			            -- 701~800�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_6	NUMBER,			            -- 601~700�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_10	NUMBER,			            -- 501~600�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_11	NUMBER,			            -- 401~500�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_12	NUMBER,			            -- 301~400�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_13	NUMBER,			            -- 300�� ���� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_AVG NUMBER			            -- ��� �ݸ� [�Ҽ��� 2�ڸ�]
);

/* ���νſ���� ������ Ȯ�� (Total 119�� : ���� - 45�� / ������������ - 31�� / �������� - 34�� / ���� - 9�� / �������� - 0��)
select count(*)
from CREDITLOAN
;

-- �ɼ� Ȯ�� (���� 4��, ���� 1�� �ɼ� ���� - 114���� ����)
select count(*)
from(
select CREDITLOAN_ID
from CREDITLOAN_OPTION
group by CREDITLOAN_ID
order by CREDITLOAN_ID
);
*/
--------------------------------------------------------------------------------
-- ������ ������� (1350��)
DROP TABLE FINANCIALTERM;
CREATE TABLE FINANCIALTERM(
fnceDictNm VARCHAR2(1000), --��������
ksdFnceDictDescContent CLOB --����
);

SELECT * FROM financialterm;

--INSERT INTO financialterm (fnceDictNm, ksdFnceDictDescContent) VALUES
--('����û��(�������)', '�������ǿ�Ź���� �ǹ����μ� �����μ����� ������ �������ְ� ����ȸ�翡 ���Ͽ� �� �ֽ��� �μ��� ���� ���� ��û�ϴ� ������ ���Ѵ�.');

DELETE FROM financialterm;
commit;


------------------------------------------------------------------------------------------------
--������ �ֽĽü����� �Ľ�
DROP TABLE STOCKPRICE;  --�ֽ� �ü� ����
CREATE TABLE STOCKPRICE( --�ֽĽü����� ���̺�
basDt VARCHAR2(1000), -- ��������
srtnCd VARCHAR2(1000), -- ���� �ڵ庸�� ª���鼭 ���ϼ��� ����Ǵ� �ڵ�(6�ڸ�)
isinCd 	VARCHAR2(1000), -- ���� ä�� �ĺ� ��ȣ. ��������(ä��)�� �������� ������ȣ
itmsNm 	VARCHAR2(1000), -- �������� �������� ������ȣ �ڵ� �̸�
mrktCtg VARCHAR2(1000), -- �ֽ��� ���� ���� (KOSPI/KOSDAQ/KONEX �� 1)
clpr number, -- ���Խ����� �ŸŽð�����ñ��� �����Ǵ� ��������
vs number, -- ���� ��� ���
fltRt number, -- ���� ��� ����� ���� ����
mkp number, -- ���Խ����� �ŸŽð������� �����Ǵ� ���ʰ���
hipr number, -- �Ϸ� �� ������ �ְ�ġ
lopr number, -- �Ϸ� �� ������ ����ġ
trqu number, -- ü������� ���� �հ�
trPrc number, -- �ŷ��� �� ü�ᰡ�� * ü������� ���� �հ�
lstgStCnt number, -- ������ �����ֽļ�
mrktTotAmt number --���� * �����ֽļ�
);
--INSERT INTO STOCKPRICE (basDt, srtnCd, isinCd, itmsNm, mrktCtg, clpr, vs, fltRt, mkp, hipr, lopr, trqu
--, trPrc, lstgStCnt, mrktTotAmt) 
--VALUES('20220907','900110','HK0000057197','�̽�Ʈ�ƽþ�Ȧ����'
--,'KOSDAQ', 184,-5,-2.65,190,190,183,831756,153893148,219932050,40467497200);

SELECT * FROM STOCKPRICE;

--�ڽ����̸鼭 �ð��Ѿ׼����� �����Ѱ�
SELECT * FROM STOCKPRICE WHERE MRKTCTG ='KOSPI' AND basDt ='20220907' ORDER BY mrktTotAmt DESC;

DELETE FROM STOCKPRICE;

commit;
------------------------------------------------------------------------------------------------
--ȯ������ DB

DROP TABLE EXCHANGERATE; -- ȯ������
CREATE TABLE EXCHANGERATE(
DOLLAR NUMBER, --�޷�(��)
YUAN NUMBER,   --����(��)
THEDATE VARCHAR2(1000) --����(�����)
);

SELECT * FROM EXCHANGERATE;

--INSERT INTO EXCHANGERATE (DOLLAR, YUAN, THEDATE) 
--VALUES(1157.20, 179.20, '2021-09-01');


DELETE FROM EXCHANGERATE;
commit;
---------------------------------------------------------------------------
DROP TABLE INDEXPRICE; --�����ü� ���̺�
CREATE TABLE INDEXPRICE(
BASDT  VARCHAR2(1000), --��������         
IDXNM  VARCHAR2(1000), --������ ��Ī       
IDXCSF VARCHAR2(1000), --������ �з���Ī   
CLPR   NUMBER, --���Խ����� �ŸŽð�����ñ��� �����Ǵ� ��������(����)       
VS     NUMBER, --���� ��� ���            
FLTRT  NUMBER, --���� ��� ����� ���� ����     
MKP    NUMBER, --���Խ����� �ŸŽð������� �����Ǵ� ���ʰ���       
HIPR   NUMBER, --�Ϸ� �� ������ �ְ�ġ     
LOPR   NUMBER, --�Ϸ� �� ������ ����ġ
TRQU   NUMBER, --������ ���Ե� ������ �ŷ��� ����
TRPRC  NUMBER, --������ ���Ե� ������ �ŷ���� ����
LSTGMRKTTOTAMT NUMBER, --������ ���Ե� ������ �ð��Ѿ�
LSYREDVSFLTRG NUMBER, --������ ���⸻��� �����
LSYREDVSFLTRT NUMBER, --������ ���⸻��� �����
YRWRCRDHGST   NUMBER, --������ �����ְ�ġ
YRWRCRDHGSTDT VARCHAR2(1000), --������ �����ְ�ġ�� ����� ��¥
YRWRCRDLWST NUMBER,  --������ ��������ġ
YRWRCRDLWSTDT VARCHAR2(1000) --������ ��������ġ�� ����� ��¥
);

------------------------------------------------------------------------------------------------
-- �����
DROP SEQUENCE SEQ_USER_NO;
CREATE SEQUENCE SEQ_USER_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE USER_T;
CREATE TABLE USER_T(
	USER_NO	NUMBER PRIMARY KEY,     -- ����ڹ�ȣ
	USER_ID	VARCHAR2(40),           -- ID
	USER_NICKNAME VARCHAR2(40),     -- �г���
	USER_PASSWORD VARCHAR2(50),     -- ��й�ȣ
	USER_EMAIL VARCHAR2(100)        -- E-Mail
);

COMMENT ON TABLE USER_T IS '�����';
COMMENT ON COLUMN  USER_T.USER_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN  USER_T.USER_ID IS 'ID';
COMMENT ON COLUMN  USER_T.USER_NICKNAME IS '�г���';
COMMENT ON COLUMN  USER_T.USER_PASSWORD IS '��й�ȣ';
COMMENT ON COLUMN  USER_T.USER_EMAIL IS 'E-Mail';

-- INSERT INTO USER_T VALUES(SEQ_USER_NO.NEXTVAL, 'test01', '�ǹ��ְ����׾�', 'qlalf12', 'test01@gmail.com');

-- ���ϱ�
DROP SEQUENCE SEQ_LIKE_NO;
CREATE SEQUENCE SEQ_LIKE_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE LIKE_T;
CREATE TABLE LIKE_T (
    LIKE_T_NO NUMBER PRIMARY KEY,   -- ���ȣ
    USER_NO NUMBER,                 -- ����ڹ�ȣ
    LIKE_THIS VARCHAR2(1000),       -- ���(��ǰ,�ε���,����)
    LIKE_TYPE NUMBER,               -- ��Ÿ��(������ǰ:1/�ε���:2/����:3)
    LIKE_DATE DATE                  -- �����
);

COMMENT ON TABLE LIKE_T IS '���ϱ�';
COMMENT ON COLUMN  LIKE_T.LIKE_T_NO IS '���ȣ';
COMMENT ON COLUMN  LIKE_T.USER_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN  LIKE_T.LIKE_THIS IS '���';
COMMENT ON COLUMN  LIKE_T.LIKE_TYPE IS '��Ÿ��';
COMMENT ON COLUMN  LIKE_T.LIKE_DATE IS '�����';

-- INSERT INTO LIKE_T VALUES(SEQ_LIKE_NO.NEXTVAL, '1', '1', '1', SYSDATE);

-- �Խ���
DROP SEQUENCE SEQ_BOARD_NO;
CREATE SEQUENCE SEQ_BOARD_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE BOARD;
CREATE TABLE BOARD (
	BOARD_NO NUMBER PRIMARY KEY,    -- �Խñ۹�ȣ
	USER_NO NUMBER,		            -- ����ڹ�ȣ
	BOARD_LIST_NO NUMBER,           -- �Խ��� ����
	BOARD_HIT NUMBER,               -- ��ȸ��
	BOARD_TITLE	VARCHAR2(1000),      -- ����
	BOARD_CONTENT	CLOB,           -- ����
	BOARD_REGISTER	DATE,           -- ����Ͻ�
	BOARD_FILE	VARCHAR2(1000)      -- ÷������
);
COMMENT ON TABLE BOARD IS '�Խ���';
COMMENT ON COLUMN  BOARD.BOARD_NO IS '�Խñ۹�ȣ';
COMMENT ON COLUMN  BOARD.USER_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN  BOARD.BOARD_LIST_NO IS '�Խ��� ����';
COMMENT ON COLUMN  BOARD.BOARD_HIT IS '��ȸ��';
COMMENT ON COLUMN  BOARD.BOARD_TITLE IS '����';
COMMENT ON COLUMN  BOARD.BOARD_CONTENT IS '����';
COMMENT ON COLUMN  BOARD.BOARD_REGISTER IS '����Ͻ�';
COMMENT ON COLUMN  BOARD.BOARD_FILE IS '÷������';

-- INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 1, 1, 10, '��ȣ', '�̾�ȣ�� �ų��پƾƾƤ���', SYSDATE, 'img01.jpg');

-- ���
DROP SEQUENCE SEQ_REPLY_NO;
CREATE SEQUENCE SEQ_REPLY_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE REPLY;
CREATE TABLE REPLY (
	REPLY_NO NUMBER PRIMARY KEY,    -- ��۹�ȣ
    USER_NO NUMBER,		            -- ����ڹ�ȣ
    BOARD_NO NUMBER,                -- �Խñ۹�ȣ
	REPLY_CONTENT VARCHAR2(1000),   -- ����
	REPLY_REGISTER	DATE            -- ��ϳ�¥
);

COMMENT ON TABLE REPLY IS '���';
COMMENT ON COLUMN  REPLY.REPLY_NO IS '��۹�ȣ';
COMMENT ON COLUMN  REPLY.USER_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN  REPLY.BOARD_NO IS '�Խñ۹�ȣ';
COMMENT ON COLUMN  REPLY.REPLY_CONTENT IS '����';
COMMENT ON COLUMN  REPLY.REPLY_REGISTER IS '��ϳ�¥';

-- INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 1, 1, '��ӳ� ���󿡳�', SYSDATE);
------------------------------------------------------------------------------------------------