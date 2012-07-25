-- -*- mode: sql -*-


REPLACE INTO `INFO` SET NAME='TLS201_APPLN.COUNT.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS201_APPLN`);
REPLACE INTO `INFO` SET NAME='TLS202_APPLN_TITLE.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS202_APPLN_TITLE`);
REPLACE INTO `INFO` SET NAME='TLS203_APPLN_ABSTR.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS203_APPLN_ABSTR`);
REPLACE INTO `INFO` SET NAME='TLS204_APPLN_PRIOR.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS204_APPLN_PRIOR`);
REPLACE INTO `INFO` SET NAME='TLS205_TECH_REL.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS205_TECH_REL`);
REPLACE INTO `INFO` SET NAME='TLS206_PERSON.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS206_PERSON`);
REPLACE INTO `INFO` SET NAME='TLS207_PERS_APPLN.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS207_PERS_APPLN`);
REPLACE INTO `INFO` SET NAME='TLS208_DOC_STR_NMS.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS208_DOC_STD_NMS`);
REPLACE INTO `INFO` SET NAME='TLS209_APPLN_IPC.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM  `TLS209_APPLN_IPC`);
REPLACE INTO `INFO` SET NAME='TLS210_APPLN_N_CLS.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS210_APPLN_N_CLS`);
REPLACE INTO `INFO` SET NAME='TLS211_PAT_PUBLN.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM  `TLS211_PAT_PUBLN`);
REPLACE INTO `INFO` SET NAME='TLS212_CITATION.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS212_CITATION`);
REPLACE INTO `INFO` SET NAME='TLS214_NPL_PUBLN.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS214_NPL_PUBLN`);
REPLACE INTO `INFO` SET NAME='TLS215_CITN_CATEG.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS215_CITN_CATEG`);
REPLACE INTO `INFO` SET NAME='TLS216_APPLN_CONTN.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS216_APPLN_CONTN`);
REPLACE INTO `INFO` SET NAME='TLS217_APPLN_I_CLS.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS217_APPLN_I_CLS`);
REPLACE INTO `INFO` SET NAME='TLS218_DOCDB_FAM.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS218_DOCDB_FAM`);
REPLACE INTO `INFO` SET NAME='TLS219_INPADOC_FAM.COUNT', KIND=1, VALUE=(SELECT COUNT(*) FROM `TLS219_INPADOC_FAM`);


REPLACE INTO `INFO`
SET 
NAME = "TLS202_APPLN_TITLE.APPLN_TITLE.MAX_LENGTH",
KIND = 1,
VALUE = (SELECT MAX(LENGTH(APPLN_TITLE)) FROM TLS202_APPLN_TITLE);

REPLACE INTO `INFO`
SET 
NAME = "TLS202_APPLN_TITLE.APPLN_TITLE.AVG_LENGTH",
KIND = 1,
VALUE = (SELECT AVG(LENGTH(APPLN_TITLE)) FROM TLS202_APPLN_TITLE);

REPLACE INTO `INFO`
SET 
NAME = "TLS202_APPLN_ABSTR.APPLN_ABSTRACT.MAX_LENGTH",
KIND = 1,
VALUE = (SELECT MAX(LENGTH(APPLN_ABSTRACT)) FROM TLS203_APPLN_ABSTR);

REPLACE INTO `INFO`
SET 
NAME = "TLS202_APPLN_ABSTR.APPLN_ABSTRACT.AVG_LENGTH",
KIND = 1,
VALUE = (SELECT AVG(LENGTH(APPLN_ABSTRACT)) FROM TLS203_APPLN_ABSTR);
