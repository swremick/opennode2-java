create sequence COLUMN_ID_SEQUENCE
/

create sequence HIBERNATE_SEQUENCE
/

create table RCRA_TEST_PENALTY
(
	"¿CME_PNLTY_ID" NUMBER,
	CME_ENFRC_ACT_ID NUMBER,
	TRANS_CODE CLOB,
	PNLTY_TYPE_OWNER CLOB,
	PNLTY_TYPE CLOB,
	CASH_CIVIL_PNLTY_SOUGHT_AMOUNT NUMBER,
	NOTES CLOB
)
/

create table RCRA_INFO_ENFORCE
(
	HANDLER_ID VARCHAR2(100),
	ENF_ACTIVITY_LOCATION VARCHAR2(100),
	ENF_IDENTIFIER VARCHAR2(100),
	ENF_ACTION_DATE VARCHAR2(100),
	ENF_AGENCY VARCHAR2(100),
	DOCKET_NUMBER VARCHAR2(100),
	ATTORNEY VARCHAR2(100),
	CA_COMPONENT VARCHAR2(100),
	CAFO_SEQ VARCHAR2(100),
	APPEAL_INITIATED_DATE VARCHAR2(100),
	APPEAL_RESOLVED_DATE VARCHAR2(100),
	DISPOSITION_STATUS_DATE VARCHAR2(100),
	DISPOSITION_STATUS_OWNER VARCHAR2(100),
	DISPOSITION_STATUS VARCHAR2(100),
	ENF_OWNER VARCHAR2(100),
	ENF_TYPE VARCHAR2(100),
	RESPONSIBLE_PERSON_OWNER VARCHAR2(100),
	RESPONSIBLE_PERSON VARCHAR2(100),
	SUBORGANIZATION_OWNER VARCHAR2(100),
	SUBORGANIZATION VARCHAR2(100),
	USERID VARCHAR2(100),
	LAST_CHANGE VARCHAR2(100),
	CONVERSTION_NOTES VARCHAR2(1000),
	NOTES VARCHAR2(1000)
)
/

create table RCRA_INFO_PENALTY
(
	HANDLER_ID VARCHAR2(100),
	ENF_ACTIVITY_LOCATION VARCHAR2(100),
	ENF_IDENTIFIER VARCHAR2(100),
	ENF_ACTION_DATE VARCHAR2(100),
	ENF_AGENCY VARCHAR2(100),
	PENALTY_OWNER VARCHAR2(100),
	PENALTY_TYPE VARCHAR2(100),
	AMOUNT VARCHAR2(100),
	USERID VARCHAR2(100),
	LAST_CHANGE VARCHAR2(100),
	NOTES VARCHAR2(1000)
)
/

create table RCRA_RECYCLERIND
(
	HZRDSECONDARYMTRLID NUMBER(19) not null,
	RECYCLERIND VARCHAR2(1 char)
)
/

create table RCRA_RECYCLERNOTES
(
	HZRDSECONDARYMTRLID NUMBER(19) not null,
	RECYCLERNOTES VARCHAR2(4000 char)
)
/

create table RCRA_ABSFEATUREPROPTYPE
(
	ID NUMBER(19) not null
		primary key
)
/

create table RCRA_AREAACREAGE
(
	ID NUMBER(19) not null
		primary key,
	AREAACREAGEMSR NUMBER(13,2),
	AREAMSRDATEITEM DATE,
	AREAMSRSOURCECODE VARCHAR2(4 char),
	AREAMSRSOURCEDATOWNRCODE VARCHAR2(2 char),
	AREAMSRSOURCETXT VARCHAR2(4000 char)
)
/

create table RCRA_CERT
(
	ID NUMBER(19) not null
		primary key,
	CERTEMAILTXT VARCHAR2(80 char),
	CERTSEQNUMBER NUMBER(8),
	FIRSTNAME VARCHAR2(38 char),
	INDIVIDUALTITLETXT VARCHAR2(45 char),
	LASTNAME VARCHAR2(38 char),
	MIDDLEINITIAL VARCHAR2(1 char),
	SIGNEDDATEITEM DATE,
	TRANSACTIONCODE VARCHAR2(1 char),
	HANDLERID NUMBER(19)
)
/

create table RCRA_CITN
(
	ID NUMBER(19) not null
		primary key,
	CITNDESC VARCHAR2(4000 char),
	CITNNAME VARCHAR2(80 char),
	CITNNAMEOWNR VARCHAR2(2 char),
	CITNNAMESEQNUMBER NUMBER(6),
	CITNNAMETYPE VARCHAR2(2 char),
	NOTES VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	VIOID NUMBER(19)
)
/

create table RCRA_CMEFACSUB
(
	ID NUMBER(19) not null
		primary key,
	EPAHANDLERID VARCHAR2(12 char),
	HZRDWASTECMESUBID NUMBER(19)
)
/

create table RCRA_CONTACT
(
	ID NUMBER(19) not null
		primary key,
	EMAILADDRESSTXT VARCHAR2(80 char),
	FAX VARCHAR2(15 char),
	FIRSTNAME VARCHAR2(38 char),
	INDIVIDUALTITLETXT VARCHAR2(45 char),
	LASTNAME VARCHAR2(38 char),
	MIDDLEINITIAL VARCHAR2(1 char),
	ORGFORMALNAME VARCHAR2(80 char),
	PHONEEXTTXT VARCHAR2(6 char),
	TELEPHONE VARCHAR2(15 char)
)
/

create table RCRA_CONTACTADDRESS
(
	ID NUMBER(19) not null
		primary key,
	CONTACTADDRESSID NUMBER(19)
		constraint FK_FYY3OHQ10GA7NW3JPJCSOI796
		references RCRA_CONTACT,
	MAILCONTACTADDRESSID NUMBER(19)
)
/

create table RCRA_CORRACTAREA
(
	ID NUMBER(19) not null
		primary key,
	EPARSPPERSONDATOWNRCODE VARCHAR2(4000 char),
	EPARSPPERSONID VARCHAR2(4000 char),
	AIRRELEASEIND VARCHAR2(1 char),
	AREANAME VARCHAR2(40 char),
	AREASEQNUMBER NUMBER(4),
	FACWIDEIND VARCHAR2(1 char),
	GROUNDWATERRELEASEIND VARCHAR2(1 char),
	REGULATEDUNITIND VARCHAR2(1 char),
	SOILRELEASEIND VARCHAR2(1 char),
	STATERSPPERSONDATOWNRCODE VARCHAR2(4000 char),
	STATERSPPERSONID VARCHAR2(4000 char),
	SUPPINFTXT VARCHAR2(2000 char),
	SURFACEWATERRELEASEIND VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTFACSUBID NUMBER(19)
)
/

create table RCRA_CORRACTAUTH
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	AUTHAGENCYCODE VARCHAR2(1 char),
	AUTHDATOWNRCODE VARCHAR2(2 char),
	AUTHEFFECTIVEDATEITEM DATE,
	AUTHSUBORGCODE VARCHAR2(10 char),
	AUTHSUBORGDATOWNRCODE VARCHAR2(2 char),
	AUTHTYPECODE VARCHAR2(1 char),
	AUTHTYPETXT VARCHAR2(4000 char),
	ENDDATEITEM DATE,
	ESTABLISHEDREPOSITORYCODE VARCHAR2(1 char),
	ESTABLISHEDREPOSITORYTXT VARCHAR2(4000 char),
	ISSUEDATEITEM DATE,
	RSPLEADPROGRAMID VARCHAR2(1 char),
	RSPLEADPROGRAMTXT VARCHAR2(4000 char),
	RSPPERSONDATOWNRCODE VARCHAR2(2 char),
	RSPPERSONID VARCHAR2(5 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTFACSUBID NUMBER(19)
)
/

create table RCRA_CORRACTEVENT
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	ACTUALDATEITEM DATE,
	AGENCYTXT VARCHAR2(4000 char),
	CORRACTEVENTCODE VARCHAR2(7 char),
	CORRACTEVENTDATOWNRCODE VARCHAR2(2 char),
	CORRACTEVENTTXT VARCHAR2(4000 char),
	EVENTAGENCYCODE VARCHAR2(1 char),
	EVENTSEQNUMBER NUMBER(3),
	EVENTSUBORGCODE VARCHAR2(10 char),
	EVENTSUBORGDATOWNRCODE VARCHAR2(2 char),
	NEWSCHEDDATEITEM DATE,
	ORIGSCHEDDATEITEM DATE,
	RSPPERSONDATOWNRCODE VARCHAR2(2 char),
	RSPPERSONID VARCHAR2(5 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTFACSUBID NUMBER(19)
)
/

create table RCRA_CORRACTFACSUB
(
	ID NUMBER(19) not null
		primary key,
	HANDLERID VARCHAR2(12 char),
	HZRDWASTECORRACTID NUMBER(19)
)
/

alter table RCRA_CORRACTAREA
	add constraint FK_OFVHDIPQMXI2T4JNV3SG1A666
foreign key (CORRACTFACSUBID) references RCRA_CORRACTFACSUB
/

alter table RCRA_CORRACTAUTH
	add constraint FK_KH0V1DD2U8BLD8J7HLY7ACCVB
foreign key (CORRACTFACSUBID) references RCRA_CORRACTFACSUB
/

alter table RCRA_CORRACTEVENT
	add constraint FK_8C4Q63TD7HVOLM1TB96PE7DXU
foreign key (CORRACTFACSUBID) references RCRA_CORRACTFACSUB
/

create table RCRA_CORRACTRELEVENT
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	CORRACTEVENTCODE VARCHAR2(7 char),
	CORRACTEVENTDATOWNRCODE VARCHAR2(2 char),
	CORRACTEVENTTXT VARCHAR2(4000 char),
	EVENTAGENCYCODE VARCHAR2(1 char),
	EVENTSEQNUMBER NUMBER(3),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTAUTHID NUMBER(19)
		constraint FK_H0AN7U3D08TA0CNJB3YECXU2P
		references RCRA_CORRACTAUTH,
	CORRACTAREAID NUMBER(19)
		constraint FK_J2MCE7P63N3LCAJ2TD4XYAANY
		references RCRA_CORRACTAREA
)
/

create table RCRA_CORRACTRELPERMITUNIT
(
	ID NUMBER(19) not null
		primary key,
	PERMITUNITSEQNUMBER NUMBER(4),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTAREAID NUMBER(19)
		constraint FK_OG2J5S5A6JQ770Q6XRE8OIB6Q
		references RCRA_CORRACTAREA
)
/

create table RCRA_CORRACTSTATCITN
(
	ID NUMBER(19) not null
		primary key,
	STATCITNDATOWNRCODE VARCHAR2(2 char),
	STATCITNDESC VARCHAR2(4000 char),
	STATCITNID VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CORRACTAUTHID NUMBER(19)
		constraint FK_OLEX4UMGYKUHMTSRWTKT2MG8R
		references RCRA_CORRACTAUTH
)
/

create table RCRA_COSTEST
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	AREAUNITNOTESTXT VARCHAR2(240 char),
	COSTESTAGENCYCODE VARCHAR2(1 char),
	COSTESTAMT NUMBER(13,2),
	COSTESTDATEITEM DATE,
	COSTESTREASONCODE VARCHAR2(1 char),
	COSTESTREASONTXT VARCHAR2(4000 char),
	COSTESTSEQNUMBER NUMBER(4),
	COSTESTTYPECODE VARCHAR2(1 char),
	COSTESTTYPETXT VARCHAR2(4000 char),
	RSPPERSONDATOWNRCODE VARCHAR2(2 char),
	RSPPERSONID VARCHAR2(5 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	FINASSURFACSUBID NUMBER(19)
)
/

create table RCRA_COSTESTRELMECH
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	MECHAGENCYCODE VARCHAR2(1 char),
	MECHDETAILSEQNUMBER NUMBER(4),
	MECHSEQNUMBER NUMBER(4),
	TRANSACTIONCODE VARCHAR2(1 char),
	COSTESTID NUMBER(19)
		constraint FK_IRRH1V858R52P9ECEA3FRS0P1
		references RCRA_COSTEST
)
/

create table RCRA_CSNYDATE
(
	ID NUMBER(19) not null
		primary key,
	SNYDATEITEM DATE,
	TRANSACTIONCODE VARCHAR2(1 char),
	ENFRCACTID NUMBER(19)
)
/

create table RCRA_ENFRCACT
(
	ID NUMBER(19) not null
		primary key,
	AGENCYTXT VARCHAR2(4000 char),
	APPEALINITIATEDDATEITEM DATE,
	APPEALRESOLUTIONDATEITEM DATE,
	CNSNTAGREEFINORDERSEQNUMBER NUMBER(6),
	CORRACTCOMPONENT VARCHAR2(1 char),
	DISPOSSTATUS VARCHAR2(2 char),
	DISPOSSTATUSDATEITEM DATE,
	DISPOSSTATUSOWNR VARCHAR2(2 char),
	DISPOSSTATUSTXT VARCHAR2(4000 char),
	ENFRCACTDATEITEM DATE,
	ENFRCACTID VARCHAR2(3 char),
	ENFRCAGENCYLOCNAME VARCHAR2(2 char),
	ENFRCAGENCYNAME VARCHAR2(1 char),
	ENFRCATTORNEY VARCHAR2(5 char),
	ENFRCDOCKETNUMBER VARCHAR2(15 char),
	ENFRCOWNR VARCHAR2(2 char),
	ENFRCRSPPERSONID VARCHAR2(5 char),
	ENFRCRSPPERSONOWNR VARCHAR2(2 char),
	ENFRCRSPSUBORG VARCHAR2(10 char),
	ENFRCRSPSUBORGOWNR VARCHAR2(2 char),
	ENFRCTYPE VARCHAR2(3 char),
	ENFRCTYPETXT VARCHAR2(4000 char),
	NOTES VARCHAR2(4000 char),
	RESPONDENTNAME VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CMEFACSUBID NUMBER(19)
		constraint FK_E1WU84K8RSSDY62XMUY5595B8
		references RCRA_CMEFACSUB
)
/

alter table RCRA_CSNYDATE
	add constraint FK_P3E2X7O8GTIA4R4W748QN5YHA
foreign key (ENFRCACTID) references RCRA_ENFRCACT
/

create table RCRA_ENVPERMIT
(
	ID NUMBER(19) not null
		primary key,
	ENVPERMITDESC VARCHAR2(80 char),
	ENVPERMITID VARCHAR2(13 char),
	ENVPERMITOWNRNAME VARCHAR2(2 char),
	ENVPERMITTYPECODE VARCHAR2(1 char),
	ENVPERMITTYPETXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	HANDLERID NUMBER(19)
)
/

create table RCRA_EPISODICWASTE
(
	ID NUMBER(19) not null
		primary key,
	EPISODICWASTESEQNUMBER NUMBER(6),
	ESTIMATEDQUANT NUMBER(20,10),
	TRANSACTIONCODE VARCHAR2(1 char),
	WASTEDESC VARCHAR2(4000 char),
	HANDLEREPISODICEVENTID NUMBER(19)
)
/

create table RCRA_EVAL
(
	ID NUMBER(19) not null
		primary key,
	NOCDATEITEM DATE,
	AGENCYTXT VARCHAR2(4000 char),
	CTZNCOMPLAINTIND VARCHAR2(1 char),
	DAYZEROITEM DATE,
	EVALACTLOC VARCHAR2(2 char),
	EVALID VARCHAR2(3 char),
	EVALRSPAGENCY VARCHAR2(1 char),
	EVALRSPPERSONID VARCHAR2(5 char),
	EVALRSPPERSONIDOWNR VARCHAR2(2 char),
	EVALRSPSUBORG VARCHAR2(10 char),
	EVALRSPSUBORGOWNR VARCHAR2(2 char),
	EVALSTARTDATEITEM DATE,
	EVALTYPE VARCHAR2(3 char),
	EVALTYPEOWNR VARCHAR2(2 char),
	EVALTYPETXT VARCHAR2(4000 char),
	FOCUSAREA VARCHAR2(3 char),
	FOCUSAREAOWNR VARCHAR2(2 char),
	FOCUSAREATXT VARCHAR2(4000 char),
	FOUNDVIO VARCHAR2(1 char),
	MEDIAIND VARCHAR2(1 char),
	NOTSUBTITLECIND VARCHAR2(1 char),
	NOTES VARCHAR2(4000 char),
	SAMPLINGIND VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CMEFACSUBID NUMBER(19)
		constraint FK_O0TWWOKM7B8NCXLBU64WULTHB
		references RCRA_CMEFACSUB
)
/

create table RCRA_EVALCOMMIT
(
	ID NUMBER(19) not null
		primary key,
	COMMITLEAD VARCHAR2(2 char),
	COMMITSEQNUMBER NUMBER(6),
	TRANSACTIONCODE VARCHAR2(1 char),
	EVALID NUMBER(19)
		constraint FK_1K8T5Y599OH0OA32WSDUJ35SN
		references RCRA_EVAL
)
/

create table RCRA_EVALVIO
(
	ID NUMBER(19) not null
		primary key,
	AGENCYTXT VARCHAR2(4000 char),
	AGENCYDETERMVIO VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	VIOACTLOC VARCHAR2(2 char),
	VIOSEQNUMBER NUMBER(4),
	EVALID NUMBER(19)
		constraint FK_M3DN0WGSN246HRI51SP0I1Q0Q
		references RCRA_EVAL
)
/

create table RCRA_EVENTCOMMIT
(
	ID NUMBER(19) not null
		primary key,
	COMMITLEAD VARCHAR2(2 char),
	COMMITSEQNUMBER NUMBER(6),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITEVENTID NUMBER(19),
	CORRACTEVENTID NUMBER(19)
		constraint FK_RTE19YXHW2SD0VXI7SL9UOFQX
		references RCRA_CORRACTEVENT
)
/

create table RCRA_FACOWNROPER
(
	ID NUMBER(19) not null
		primary key,
	CURRENTENDDATEITEM DATE,
	CURRENTSTARTDATEITEM DATE,
	OWNROPERIND VARCHAR2(2 char),
	OWNROPERSEQNUMBER NUMBER(4),
	OWNROPERSUPPINFTXT VARCHAR2(4000 char),
	OWNROPERTXT VARCHAR2(4000 char),
	OWNROPERTYPECODE VARCHAR2(1 char),
	OWNROPERTYPETXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	FACOWNROPERID NUMBER(19)
		constraint FK_B3W04RGU0W6SRPH295EU0DPT6
		references RCRA_CONTACTADDRESS,
	HANDLERID NUMBER(19)
)
/

create table RCRA_FACSUB
(
	ID NUMBER(19) not null
		primary key,
	DATACCESSTXT VARCHAR2(4000 char),
	FACREGISTRYID VARCHAR2(12 char),
	HANDLERID VARCHAR2(12 char),
	PUBUSEEXTRACTIND VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	HZRDWASTEHANDLERSUBID NUMBER(19)
)
/

create table RCRA_FINASSURFACSUB
(
	ID NUMBER(19) not null
		primary key,
	HANDLERID VARCHAR2(12 char),
	FINASSURSUBID NUMBER(19)
)
/

alter table RCRA_COSTEST
	add constraint FK_G64FUC1MVXIW6CX4KTG95MCN1
foreign key (FINASSURFACSUBID) references RCRA_FINASSURFACSUB
/

create table RCRA_FINASSURREQD
(
	ENFRCACTID NUMBER(19) not null
		constraint FK_P5YYK82L30YP9VNP57CSV959Q
		references RCRA_ENFRCACT,
	FINASSURREQD VARCHAR2(1 char)
)
/

create table RCRA_FINASSURSUB
(
	ID NUMBER(19) not null
		primary key
)
/

alter table RCRA_FINASSURFACSUB
	add constraint FK_OULVUQ90VKMRU0UJXEGYE86B4
foreign key (FINASSURSUBID) references RCRA_FINASSURSUB
/

create table RCRA_GEOGINF
(
	ID NUMBER(19) not null
		primary key,
	AREASEQNUMBER NUMBER(4),
	GEOGINFOWNR VARCHAR2(2 char),
	GEOGINFSEQNUMBER NUMBER(4),
	LOCCOMMENTSTXT VARCHAR2(2000 char),
	PERMITUNITSEQNUMBER NUMBER(4),
	TRANSACTIONCODE VARCHAR2(1 char),
	AREAACREAGEID NUMBER(19)
		constraint FK_5V6IBIYXN7OMUEGWFG5TSF2JQ
		references RCRA_AREAACREAGE,
	GEOGMETAID NUMBER(19),
	WHEREID NUMBER(19),
	GISFACSUBID NUMBER(19)
)
/

create table RCRA_GEOGINFSUB
(
	ID NUMBER(19) not null
		primary key
)
/

create table RCRA_GEOGMETA
(
	ID NUMBER(19) not null
		primary key,
	COORDDATSOURCECODE VARCHAR2(3 char),
	COORDDATSOURCEDATOWNRCODE VARCHAR2(2 char),
	COORDDATSOURCENAME VARCHAR2(4000 char),
	DATCOLLDATEITEM DATE,
	GEOGREFPOINTCODE VARCHAR2(3 char),
	GEOGREFPOINTDATOWNRCODE VARCHAR2(2 char),
	GEOGREFPOINTNAME VARCHAR2(4000 char),
	GEOMTYPECODE VARCHAR2(3 char),
	GEOMTYPEDATOWNRCODE VARCHAR2(2 char),
	GEOMTYPENAME VARCHAR2(4000 char),
	HORIZACCURACYMSR NUMBER(6),
	HORIZCOLLMETHODCODE VARCHAR2(3 char),
	HORIZCOLLMETHODDATOWNRCODE VARCHAR2(2 char),
	HORIZCOLLMETHODNAME VARCHAR2(4000 char),
	HORIZCOORDREFSYSDATCODE VARCHAR2(3 char),
	HORIZCOORDREFSYSDATDATOWNRCODE VARCHAR2(2 char),
	HORIZCOORDREFSYSDATUM VARCHAR2(4000 char),
	SOURCEMAPSCALE NUMBER(10,10),
	VERMETHODCODE VARCHAR2(3 char),
	VERMETHODDATOWNRCODE VARCHAR2(2 char),
	VERMETHODNAME VARCHAR2(4000 char)
)
/

alter table RCRA_GEOGINF
	add constraint FK_2OTI6HOK7M07TM9IJ83R9RRNC
foreign key (GEOGMETAID) references RCRA_GEOGMETA
/

create table RCRA_GISFACSUB
(
	ID NUMBER(19) not null
		primary key,
	HANDLERID VARCHAR2(12 char),
	GEOGINFSUBID NUMBER(19)
		constraint FK_N58WA7TBVPSKDFMACI3KY7G4U
		references RCRA_GEOGINFSUB
)
/

alter table RCRA_GEOGINF
	add constraint FK_OS8LW6L4H8SRCBEVXVD59RTG1
foreign key (GISFACSUBID) references RCRA_GISFACSUB
/

create table RCRA_HANDLER
(
	ID NUMBER(19) not null
		primary key,
	ACCESSIBILITYCODE VARCHAR2(1 char),
	ACCESSIBILITYCODETXT VARCHAR2(4000 char),
	ACKRECEIPTDATEITEM DATE,
	ACTLOCCODE VARCHAR2(4000 char),
	COUNTYCODE VARCHAR2(5 char),
	COUNTYCODEOWNR VARCHAR2(2 char),
	COUNTYNAME VARCHAR2(4000 char),
	HANDLERINTERNALSUPPINFTXT VARCHAR2(4000 char),
	HANDLERNAME VARCHAR2(80 char),
	HANDLERSUPPINFTXT VARCHAR2(4000 char),
	NATUREOFBUSINESSTXT VARCHAR2(4000 char),
	NONNOTIFIERIND VARCHAR2(1 char),
	NONNOTIFIERINDTXT VARCHAR2(4000 char),
	OFFSITEWASTERECEIPTCODE VARCHAR2(1 char),
	RECEIVEDATEITEM DATE,
	SHORTTERMSUPPINFTXT VARCHAR2(4000 char),
	SOURCERECSEQNUMBER NUMBER(6),
	SOURCETYPECODE VARCHAR2(1 char),
	SOURCETYPETXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	TRTMNTSTORAGEDISPDATEITEM DATE,
	CONTACTADDRESSID NUMBER(19)
		constraint FK_HSW2L53MBIO8RBU46YGWLOJXY
		references RCRA_CONTACTADDRESS,
	WASTEGENRTRID NUMBER(19),
	EPISODICEVENTID NUMBER(19),
	LQGCLOSUREID NUMBER(19),
	HZRDSECONDARYMTRLID NUMBER(19),
	LABHZRDWASTEID NUMBER(19),
	LOCADDRESSID NUMBER(19),
	MAILINGADDRESSID NUMBER(19),
	PERMITCONTACTADDRESSID NUMBER(19)
		constraint FK_9W9JII4A7IS9JDBK4QDUNYS2D
		references RCRA_CONTACTADDRESS,
	STATEWASTEGENRTRID NUMBER(19),
	USEDOILID NUMBER(19),
	SITEWASTEACTID NUMBER(19),
	FACSUBID NUMBER(19)
		constraint FK_EPQKD49D8DXJ6AF5TPFLU30BD
		references RCRA_FACSUB
)
/

alter table RCRA_CERT
	add constraint FK_OFRNDSNPIQPYAK8LX0X0LPEN6
foreign key (HANDLERID) references RCRA_HANDLER
/

alter table RCRA_ENVPERMIT
	add constraint FK_FICN8LFT4FWCNAR552XFT4CDF
foreign key (HANDLERID) references RCRA_HANDLER
/

alter table RCRA_FACOWNROPER
	add constraint FK_FC0RUWBL3PWYP6SW3EBORW1L2
foreign key (HANDLERID) references RCRA_HANDLER
/

create table RCRA_HANDLEREPISODICEVENT
(
	ID NUMBER(19) not null
		primary key,
	EPISODICEVENTENDDATEITEM DATE,
	EPISODICEVENTOTHERDESC VARCHAR2(80 char),
	EPISODICEVENTOWNR VARCHAR2(2 char),
	EPISODICEVENTSTARTDATEITEM DATE,
	EPISODICEVENTTYPE VARCHAR2(3 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CONTACTID NUMBER(19)
		constraint FK_45PJ77M86AROX7RVI78QGLISH
		references RCRA_CONTACT
)
/

alter table RCRA_EPISODICWASTE
	add constraint FK_C9DBGX45MRY733X680SICAW4S
foreign key (HANDLEREPISODICEVENTID) references RCRA_HANDLEREPISODICEVENT
/

alter table RCRA_HANDLER
	add constraint FK_OLXH1TGLD7OWASNFOEXE8NKE3
foreign key (EPISODICEVENTID) references RCRA_HANDLEREPISODICEVENT
/

create table RCRA_HANDLERLQGCLOSURE
(
	ID NUMBER(19) not null
		primary key,
	CLOSURETYPE VARCHAR2(1 char),
	DATECLOSEDITEM DATE,
	EXPECTEDCLOSUREDATEITEM DATE,
	INCOMPIND VARCHAR2(1 char),
	NEWCLOSUREDATEITEM DATE,
	TRANSACTIONCODE VARCHAR2(1 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_177947G9AUUOM5GLPT5LF6RT0
foreign key (LQGCLOSUREID) references RCRA_HANDLERLQGCLOSURE
/

create table RCRA_HANDLERLQGCONSOLIDATION
(
	ID NUMBER(19) not null
		primary key,
	CONSOLIDATIONSEQNUMBER NUMBER(6),
	HANDLERID VARCHAR2(12 char),
	HANDLERNAME VARCHAR2(80 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	CONTACTID NUMBER(19)
		constraint FK_I956F9PDLB89FTLQLJ7MC25EL
		references RCRA_CONTACT,
	MAILINGADDRESSID NUMBER(19),
	HANDLER_ID NUMBER(19)
		constraint FK_2N1BR9MQNCYDKSBDWKCN398KI
		references RCRA_HANDLER
)
/

create table RCRA_HANDLERWASTECODE
(
	ID NUMBER(19) not null
		primary key,
	TRANSACTIONCODE VARCHAR2(1 char),
	WASTECODE VARCHAR2(6 char),
	WASTECODEOWNRNAME VARCHAR2(2 char),
	WASTECODETXT VARCHAR2(4000 char),
	HZRDSECONDARYMTRLACTID NUMBER(19),
	HANDLERID NUMBER(19)
		constraint FK_705RBVPM0JFVL4O4UYUASJ49J
		references RCRA_HANDLER,
	EPISODICWASTEID NUMBER(19)
		constraint FK_FQY65BLKHDW8Q5W07H2TCRUNF
		references RCRA_EPISODICWASTE,
	PERMITUNITDETAILID NUMBER(19)
)
/

create table RCRA_HZRDSECONDARYMTRL
(
	ID NUMBER(19) not null
		primary key,
	EFFECTIVEDATEITEM DATE,
	FINASSURIND VARCHAR2(1 char),
	NOTIFICATIONREASONCODE VARCHAR2(1 char),
	NOTIFICATIONREASONTXT VARCHAR2(4000 char),
	RECYCLINGIND VARCHAR2(1 char),
	RECYCLERNOTES VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_NMYHIYSH92ET2D2PVQ3LG3B94
foreign key (HZRDSECONDARYMTRLID) references RCRA_HZRDSECONDARYMTRL
/

create table RCRA_HZRDSECONDARYMTRLACT
(
	ID NUMBER(19) not null
		primary key,
	HSMSEQNUMBER VARCHAR2(4 char),
	ACTUALSHORTTONSQUANT NUMBER(20,10),
	ESTIMATEDSHORTTONSQUANT NUMBER(20,10),
	FACCODEOWNRNAME VARCHAR2(2 char),
	FACTYPECODE VARCHAR2(2 char),
	FACTYPETXT VARCHAR2(4000 char),
	LANDBASEDUNITIND VARCHAR2(2 char),
	LANDBASEDUNITINDTXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	HZRDSECONDARYMTRLID NUMBER(19)
		constraint FK_2XO41WB44PH0ALSDNJ14DM78Y
		references RCRA_HZRDSECONDARYMTRL
)
/

alter table RCRA_HANDLERWASTECODE
	add constraint FK_889VS7KIAV7R3HSGTKEC3F3D4
foreign key (HZRDSECONDARYMTRLACTID) references RCRA_HZRDSECONDARYMTRLACT
/

create table RCRA_HZRDWASTECMESUB
(
	ID NUMBER(19) not null
		primary key
)
/

alter table RCRA_CMEFACSUB
	add constraint FK_XVYKDQ5FLP51OOIDXFYV2FTN
foreign key (HZRDWASTECMESUBID) references RCRA_HZRDWASTECMESUB
/

create table RCRA_HZRDWASTECORRACT
(
	ID NUMBER(19) not null
		primary key
)
/

alter table RCRA_CORRACTFACSUB
	add constraint FK_36E8AFV7VF5Q2FXVPIKT3OM2T
foreign key (HZRDWASTECORRACTID) references RCRA_HZRDWASTECORRACT
/

create table RCRA_HZRDWASTEHANDLERSUB
(
	ID NUMBER(19) not null
		primary key
)
/

alter table RCRA_FACSUB
	add constraint FK_87I3IUEIFVR0SRWRSJ0A3DXLT
foreign key (HZRDWASTEHANDLERSUBID) references RCRA_HZRDWASTEHANDLERSUB
/

create table RCRA_HZRDWASTEPERMIT
(
	ID NUMBER(19) not null
		primary key
)
/

create table RCRA_HZRDWASTEREPORTUNIV
(
	ID NUMBER(19) not null
		primary key,
	DATACCESSTXT VARCHAR2(4000 char)
)
/

create table RCRA_LABHZRDWASTE
(
	ID NUMBER(19) not null
		primary key,
	COLLEGEIND VARCHAR2(1 char),
	HOSPITALIND VARCHAR2(1 char),
	NONPROFITIND VARCHAR2(1 char),
	WITHDRAWALIND VARCHAR2(1 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_52UE4N4158VTBYGLJO8XJ3FI4
foreign key (LABHZRDWASTEID) references RCRA_LABHZRDWASTE
/

create table RCRA_LOCADDRESS
(
	ID NUMBER(19) not null
		primary key,
	COUNTRYNAME VARCHAR2(2 char),
	LOCALITYNAME VARCHAR2(25 char),
	LOCADDRESS VARCHAR2(12 char),
	LOCADDRESSTXT VARCHAR2(50 char),
	LOCZIPCODE VARCHAR2(14 char),
	STATEUSPSCODE VARCHAR2(2 char),
	SUPPLOCTXT VARCHAR2(50 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_BKXSSP2MOIKNIH7A63AAT03QH
foreign key (LOCADDRESSID) references RCRA_LOCADDRESS
/

create table RCRA_MAILINGADDRESS
(
	ID NUMBER(19) not null
		primary key,
	MAILINGADDRESSCITYNAME VARCHAR2(25 char),
	MAILINGADDRESSCOUNTRYNAME VARCHAR2(2 char),
	MAILINGADDRESS VARCHAR2(12 char),
	MAILINGADDRESSSTATEUSPSCODE VARCHAR2(2 char),
	MAILINGADDRESSTXT VARCHAR2(50 char),
	MAILINGADDRESSZIPCODE VARCHAR2(14 char),
	SUPPADDRESSTXT VARCHAR2(50 char)
)
/

alter table RCRA_CONTACTADDRESS
	add constraint FK_PK3T1VYHEBG5OPI6O894K4X2A
foreign key (MAILCONTACTADDRESSID) references RCRA_MAILINGADDRESS
/

alter table RCRA_HANDLER
	add constraint FK_SNYP5O2GI3JBLLKLND6EQ7TV7
foreign key (MAILINGADDRESSID) references RCRA_MAILINGADDRESS
/

alter table RCRA_HANDLERLQGCONSOLIDATION
	add constraint FK_LY1MX1CADCEVPMWTWKQ4Q9N3O
foreign key (MAILINGADDRESSID) references RCRA_MAILINGADDRESS
/

create table RCRA_MECH
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	MECHAGENCYCODE VARCHAR2(1 char),
	MECHSEQNUMBER NUMBER(4),
	MECHTYPECODE VARCHAR2(1 char),
	MECHTYPEDATOWNRCODE VARCHAR2(2 char),
	MECHTYPETXT VARCHAR2(4000 char),
	PROVIDERFULLCONTACTNAME VARCHAR2(33 char),
	PROVIDERTXT VARCHAR2(80 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TELEPHONE VARCHAR2(15 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	FINASSURFACSUBID NUMBER(19)
		constraint FK_LPV6CUW9TGHSN5F2FOWO184GF
		references RCRA_FINASSURFACSUB
)
/

create table RCRA_MECHDETAIL
(
	ID NUMBER(19) not null
		primary key,
	EFFECTIVEDATEITEM DATE,
	EXPIRATIONDATEITEM DATE,
	FACEVALAMT NUMBER(13,2),
	MECHDETAILSEQNUMBER NUMBER(4),
	MECHIDENTIFICATIONTXT VARCHAR2(40 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	MECHID NUMBER(19)
		constraint FK_CC5V9FXBVLBWP8XN9PQI4HDCA
		references RCRA_MECH
)
/

create table RCRA_MEDIA
(
	ID NUMBER(19) not null
		primary key,
	MEDIACODE VARCHAR2(3 char),
	MEDIACODEOWNR VARCHAR2(2 char),
	NOTES VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	ENFRCACTID NUMBER(19)
		constraint FK_4P6J3PRC7VRLNA9S1GNIBWUOA
		references RCRA_ENFRCACT
)
/

create table RCRA_MLSTN
(
	ID NUMBER(19) not null
		primary key,
	MLSTNACTUALCMPLTDATEITEM DATE,
	MLSTNDEFAULTEDDATEITEM DATE,
	MLSTNSCHEDCMPLTDATEITEM DATE,
	MLSTNSEQNUMBER NUMBER(6),
	NOTES VARCHAR2(4000 char),
	TECHREQDESC VARCHAR2(200 char),
	TECHREQID VARCHAR2(50 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	ENFRCACTID NUMBER(19)
		constraint FK_GQO05CGINRHUG2K2I8UA70NYD
		references RCRA_ENFRCACT
)
/

create table RCRA_NAICS
(
	ID NUMBER(19) not null
		primary key,
	NAICSCODE VARCHAR2(6 char),
	NAICSOWNRCODE VARCHAR2(2 char),
	NAICSSEQNUMBER VARCHAR2(4 char),
	NAICSTXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	HANDLERID NUMBER(19)
		constraint FK_1H6RHAK8YG4SPW1JJNWI71VVV
		references RCRA_HANDLER
)
/

create table RCRA_OTHERID
(
	ID NUMBER(19) not null
		primary key,
	OTHERHANDLERID VARCHAR2(12 char),
	OTHERIDSUPPINFTXT VARCHAR2(4000 char),
	RELOWNRNAME VARCHAR2(2 char),
	RELTYPECODE VARCHAR2(1 char),
	RELTYPETXT VARCHAR2(4000 char),
	SAMEFACIND VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	FACSUBID NUMBER(19)
		constraint FK_NI1EPM1DPA46EGMGVSXGRLML8
		references RCRA_FACSUB
)
/

create table RCRA_PAYMNT
(
	ID NUMBER(19) not null
		primary key,
	ACTUALPAIDAMT NUMBER(13,2),
	ACTUALPAYMNTDATEITEM DATE,
	NOTES VARCHAR2(4000 char),
	PAYMNTDEFAULTEDDATEITEM DATE,
	PAYMNTSEQNUMBER NUMBER(2),
	SCHEDPAYMNTAMT NUMBER(13,2),
	SCHEDPAYMNTDATEITEM DATE,
	TRANSACTIONCODE VARCHAR2(1 char),
	PENALTYID NUMBER(19)
)
/

create table RCRA_PENALTY
(
	ID NUMBER(19) not null
		primary key,
	CASHCIVILPENALTYSOUGHTAMT NUMBER(13,2),
	NOTES VARCHAR2(4000 char),
	PENALTYTYPE VARCHAR2(3 char),
	PENALTYTYPEOWNR VARCHAR2(2 char),
	PENALTYTYPETXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	ENFRCACTID NUMBER(19)
		constraint FK_9KCFD847TWYOHQCIV7LVE2CLA
		references RCRA_ENFRCACT
)
/

alter table RCRA_PAYMNT
	add constraint FK_5FVCS8S7NSRIRDI45M2DEV18S
foreign key (PENALTYID) references RCRA_PENALTY
/

create table RCRA_PERMITEVENT
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	ACTUALDATEITEM DATE,
	AGENCYTXT VARCHAR2(4000 char),
	EVENTAGENCYCODE VARCHAR2(1 char),
	EVENTSEQNUMBER NUMBER(3),
	EVENTSUBORGCODE VARCHAR2(10 char),
	EVENTSUBORGDATOWNRCODE VARCHAR2(2 char),
	NEWSCHEDDATEITEM DATE,
	ORIGSCHEDDATEITEM DATE,
	PERMITEVENTCODE VARCHAR2(7 char),
	PERMITEVENTDATOWNRCODE VARCHAR2(2 char),
	PERMITEVENTTXT VARCHAR2(4000 char),
	RSPPERSONDATOWNRCODE VARCHAR2(2 char),
	RSPPERSONID VARCHAR2(5 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITSERIESID NUMBER(19)
)
/

alter table RCRA_EVENTCOMMIT
	add constraint FK_3W6B53PWU60ADYRULPG11E4UC
foreign key (PERMITEVENTID) references RCRA_PERMITEVENT
/

create table RCRA_PERMITFACSUB
(
	ID NUMBER(19) not null
		primary key,
	HANDLERID VARCHAR2(12 char),
	HZRDWASTEPERMITID NUMBER(19)
		constraint FK_P33A7OPY9EPVHU4KB5WBL0BGR
		references RCRA_HZRDWASTEPERMIT
)
/

create table RCRA_PERMITRELEVENT
(
	ID NUMBER(19) not null
		primary key,
	ACTLOCCODE VARCHAR2(4000 char),
	AGENCYTXT VARCHAR2(4000 char),
	EVENTAGENCYCODE VARCHAR2(1 char),
	EVENTSEQNUMBER NUMBER(3),
	PERMITEVENTCODE VARCHAR2(7 char),
	PERMITEVENTDATOWNRCODE VARCHAR2(2 char),
	PERMITEVENTTXT VARCHAR2(4000 char),
	PERMITSERIESSEQNUMBER NUMBER(4),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITUNITDETAILID NUMBER(19)
)
/

create table RCRA_PERMITSERIES
(
	ID NUMBER(19) not null
		primary key,
	PERMITSERIESNAME VARCHAR2(40 char),
	PERMITSERIESSEQNUMBER NUMBER(4),
	RSPPERSONDATOWNRCODE VARCHAR2(2 char),
	RSPPERSONID VARCHAR2(5 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITFACSUBID NUMBER(19)
		constraint FK_GEQ5FCCYHRFO95CQ1D8BCAQ57
		references RCRA_PERMITFACSUB
)
/

alter table RCRA_PERMITEVENT
	add constraint FK_HBHNLMWDW7D5LLMLLFN9USPAP
foreign key (PERMITSERIESID) references RCRA_PERMITSERIES
/

create table RCRA_PERMITUNIT
(
	ID NUMBER(19) not null
		primary key,
	PERMITUNITNAME VARCHAR2(40 char),
	PERMITUNITSEQNUMBER NUMBER(4),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITFACSUBID NUMBER(19)
		constraint FK_5D4UWJLMPUOXLKC1P67QG2XH4
		references RCRA_PERMITFACSUB
)
/

create table RCRA_PERMITUNITDETAIL
(
	ID NUMBER(19) not null
		primary key,
	CAPTYPECODE VARCHAR2(1 char),
	CAPTYPETXT VARCHAR2(4000 char),
	COMMERCIALSTATUSCODE VARCHAR2(1 char),
	COMMERCIALSTATUSTXT VARCHAR2(4000 char),
	LEGALOPERSTATUSCODE VARCHAR2(4 char),
	LEGALOPERSTATUSDATOWNRCODE VARCHAR2(2 char),
	LEGALOPERSTATUSTXT VARCHAR2(4000 char),
	MSRUNITCODE VARCHAR2(1 char),
	MSRUNITDATOWNRCODE VARCHAR2(2 char),
	MSRUNITTXT VARCHAR2(4000 char),
	NUMBEROFUNITSCOUNT NUMBER(7),
	PERMITSTATUSEFFECTIVEDATEITEM DATE,
	PERMITUNITCAPQUANT NUMBER(14,3),
	PERMITUNITDETAILSEQNUMBER NUMBER(3),
	PROCESSUNITCODE VARCHAR2(3 char),
	PROCESSUNITDATOWNRCODE VARCHAR2(2 char),
	PROCESSUNITTXT VARCHAR2(4000 char),
	STANDARDPERMITIND VARCHAR2(1 char),
	SUPPINFTXT VARCHAR2(2000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	PERMITUNITID NUMBER(19)
		constraint FK_6CJGN1EGIX5L9ROBA185XYK00
		references RCRA_PERMITUNIT
)
/

alter table RCRA_HANDLERWASTECODE
	add constraint FK_28A4OQQ5LEOOAJR9G5JMMBYJ1
foreign key (PERMITUNITDETAILID) references RCRA_PERMITUNITDETAIL
/

alter table RCRA_PERMITRELEVENT
	add constraint FK_PXI25EFY21PMRS6JIQM1I15UK
foreign key (PERMITUNITDETAILID) references RCRA_PERMITUNITDETAIL
/

create table RCRA_REPORTUNIV
(
	ID NUMBER(19) not null
		primary key,
	BOYEPAADDRESSEDCODE VARCHAR2(1 char),
	BOYEPASNCWITHCOMPSCHEDCODE VARCHAR2(1 char),
	BOYEPAUNADDRESSEDCODE VARCHAR2(1 char),
	BOYSNCCODE VARCHAR2(1 char),
	BOYSTATEADDRESSEDCODE VARCHAR2(1 char),
	BOYSTATESNCWITHCOMPSCHEDCODE VARCHAR2(1 char),
	BOYSTATEUNADDRESSEDSNCCODE VARCHAR2(1 char),
	CA725INDCODE VARCHAR2(1 char),
	CA750INDCODE VARCHAR2(1 char),
	CAWRKLDCODE VARCHAR2(1 char),
	ECINDCODE VARCHAR2(1 char),
	EPAADDRESSEDCODE VARCHAR2(1 char),
	EPASNCWITHCOMPSCHEDCODE VARCHAR2(1 char),
	EPAUNADDRESSEDCODE VARCHAR2(1 char),
	FAREQUIREDCODE VARCHAR2(5 char),
	GENSTATUS VARCHAR2(3 char),
	GPRACACODE VARCHAR2(1 char),
	GPRAPERMITCODE VARCHAR2(1 char),
	GPRARENEWALCODE VARCHAR2(1 char),
	HHANDLERLASTCHANGEDATEITEM DATE,
	HSMCODE VARCHAR2(2 char),
	ICINDCODE VARCHAR2(1 char),
	NAIC1CODE VARCHAR2(6 char),
	NAIC2CODE VARCHAR2(6 char),
	NAIC3CODE VARCHAR2(6 char),
	NAIC4CODE VARCHAR2(6 char),
	NCAPSCODE VARCHAR2(1 char),
	PCWRKLDCODE VARCHAR2(6 char),
	SNCCODE VARCHAR2(1 char),
	TSDTYPECODE VARCHAR2(5 char),
	UNIVWASTE VARCHAR2(1 char),
	ACCESSIBILITY VARCHAR2(1 char),
	ACTIVESITE VARCHAR2(5 char),
	ACTLOCCODE VARCHAR2(4000 char),
	ASCONVERTERTSDFCODE VARCHAR2(6 char),
	ASFEDERALREGULATEDTSDFCODE VARCHAR2(6 char),
	ASSTATEREGULATEDTSDFCODE VARCHAR2(9 char),
	CLOSWRKLDCODE VARCHAR2(6 char),
	COMMERCIALTSDCODE VARCHAR2(1 char),
	CONTACTEMAILCODE VARCHAR2(80 char),
	CONTACTFAXCODE VARCHAR2(15 char),
	CONTACTNAMECODE VARCHAR2(80 char),
	CONTACTPHONECODE VARCHAR2(22 char),
	CONTACTTITLECODE VARCHAR2(45 char),
	COUNTYCODE VARCHAR2(5 char),
	COUNTYNAME VARCHAR2(4000 char),
	EXTRACTFLAG VARCHAR2(1 char),
	FEDERALINDCODE VARCHAR2(3 char),
	FEDERALUNVWASTECODE VARCHAR2(1 char),
	FEDERALWASTEGENRTRCODE VARCHAR2(1 char),
	FEDERALWASTEGENRTROWNR VARCHAR2(2 char),
	FULLENFRCCODE VARCHAR2(6 char),
	FURNACEEXEMPTIONCODE VARCHAR2(1 char),
	HANDLERIDCODE VARCHAR2(12 char),
	HANDLERNAME VARCHAR2(80 char),
	IMPORTERACTCODE VARCHAR2(1 char),
	INAUNIVERSECODE VARCHAR2(1 char),
	INHANDLERUNIVERSECODE VARCHAR2(1 char),
	LANDTYPECODE VARCHAR2(1 char),
	MANIFESTBROKERIND VARCHAR2(1 char),
	MIXEDWASTEGENRTRCODE VARCHAR2(1 char),
	NONNOTIFIERIND VARCHAR2(1 char),
	NOTESCODE VARCHAR2(4000 char),
	OFFSITEWASTERECEIPTCODE VARCHAR2(1 char),
	ONSITEBURNEREXEMPTIONCODE VARCHAR2(1 char),
	OPERTSDFCODE VARCHAR2(6 char),
	OPERNAMECODE VARCHAR2(80 char),
	OPERSEQCODE NUMBER(6),
	OPERTYPECODE VARCHAR2(1 char),
	OWNRNAMECODE VARCHAR2(80 char),
	OWNRSEQCODE NUMBER(6),
	OWNRTYPECODE VARCHAR2(1 char),
	PERMPROGCODE VARCHAR2(6 char),
	PERMWRKLDCODE VARCHAR2(6 char),
	PERMITRENEWALWRKLDCODE VARCHAR2(6 char),
	PUBNOTESCODE VARCHAR2(4000 char),
	RECEIVEDATEITEM DATE,
	RECOGNIZEDTRADEREXPORTERIND VARCHAR2(1 char),
	RECOGNIZEDTRADERIMPORTERIND VARCHAR2(1 char),
	RECYCLERACTCODE VARCHAR2(1 char),
	RECYCLERNONSTORAGEIND VARCHAR2(1 char),
	REGION VARCHAR2(2 char),
	REPORTCYCLE NUMBER(4),
	SEQNUMBER NUMBER(6),
	SHORTTERMGENRTRIND VARCHAR2(1 char),
	SLABEXPORTERIND VARCHAR2(1 char),
	SLABIMPORTERIND VARCHAR2(1 char),
	SOURCETYPECODE VARCHAR2(1 char),
	STATE VARCHAR2(2 char),
	STATEADDRESSEDCODE VARCHAR2(1 char),
	STATEDISTRICTCODE VARCHAR2(10 char),
	STATEDISTRICTOWNRNAME VARCHAR2(2 char),
	STATESNCWITHCOMPSCHEDCODE VARCHAR2(1 char),
	STATEUNADDRESSEDCODE VARCHAR2(1 char),
	STATEWASTEGENRTRCODE VARCHAR2(1 char),
	STATEWASTEGENRTROWNR VARCHAR2(2 char),
	SUBJCACODE VARCHAR2(1 char),
	SUBJCADISCRETIONCODE VARCHAR2(1 char),
	SUBJCANONTSDCODE VARCHAR2(1 char),
	SUBJCATSD3004CODE VARCHAR2(1 char),
	SUBPARTKCODE VARCHAR2(4 char),
	TRANSFERFACIND VARCHAR2(1 char),
	TRNSPRTRACTCODE VARCHAR2(1 char),
	UNDRGRNDINJECTIONACTCODE VARCHAR2(1 char),
	UNVWASTEDESTINATIONFACIND VARCHAR2(1 char),
	USEDOILCODE VARCHAR2(7 char),
	CONTACTADDRESSID NUMBER(19)
		constraint FK_EXYGSULBX7DV20NBEOP971OYV
		references RCRA_MAILINGADDRESS,
	LOCADDRESSID NUMBER(19)
		constraint FK_70GV81H4IV14EXDFUTLFYYJY3
		references RCRA_LOCADDRESS,
	MAILINGADDRESSID NUMBER(19)
		constraint FK_9HMO3IM1VCFBKBQJ6KV784IWU
		references RCRA_MAILINGADDRESS,
	REPORTUNIVSUBID NUMBER(19)
)
/

create table RCRA_REPORTUNIVSUB
(
	ID NUMBER(19) not null
		primary key,
	HZRDWASTEREPORTUNIVID NUMBER(19)
		constraint FK_9UCQU4EI6TTNLCIO6NOCQXC0B
		references RCRA_HZRDWASTEREPORTUNIV
)
/

alter table RCRA_REPORTUNIV
	add constraint FK_KITQ4EYV9D612IXJWR7YMUIU8
foreign key (REPORTUNIVSUBID) references RCRA_REPORTUNIVSUB
/

create table RCRA_REQUEST
(
	ID NUMBER(19) not null
		primary key,
	AGENCYTXT VARCHAR2(4000 char),
	DATEOFREQUESTITEM DATE,
	DATERESPRECITEM DATE,
	NOTES VARCHAR2(4000 char),
	REQUESTAGENCY VARCHAR2(1 char),
	REQUESTSEQNUMBER NUMBER(6),
	TRANSACTIONCODE VARCHAR2(1 char),
	EVALID NUMBER(19)
		constraint FK_IK9YMTYQH8J2KXB61BS5QXMXG
		references RCRA_EVAL
)
/

create table RCRA_SITEWASTEACT
(
	ID NUMBER(19) not null
		primary key,
	FURNACEEXEMPTIONCODE VARCHAR2(1 char),
	IMPORTERACTCODE VARCHAR2(1 char),
	LANDTYPECODE VARCHAR2(1 char),
	LANDTYPETXT VARCHAR2(4000 char),
	MANIFESTBROKER VARCHAR2(1 char),
	MIXEDWASTEGENRTRCODE VARCHAR2(1 char),
	ONSITEBURNEREXEMPTIONCODE VARCHAR2(1 char),
	RECOGNIZEDTRADEREXPORTERIND VARCHAR2(1 char),
	RECOGNIZEDTRADERIMPORTERIND VARCHAR2(1 char),
	RECYCLERACTCODE VARCHAR2(1 char),
	RECYCLERACTNONSTORAGE VARCHAR2(1 char),
	SHORTTERMGENRTRIND VARCHAR2(1 char),
	SLABEXPORTERIND VARCHAR2(1 char),
	SLABIMPORTERIND VARCHAR2(1 char),
	STATEDISTRICTCODE VARCHAR2(10 char),
	STATEDISTRICTCODETXT VARCHAR2(4000 char),
	STATEDISTRICTOWNRNAME VARCHAR2(2 char),
	TRANSFERFACIND VARCHAR2(1 char),
	TRNSPRTRACTCODE VARCHAR2(1 char),
	TRTMNTSTORAGEDISPACTCODE VARCHAR2(1 char),
	UNDRGRNDINJECTIONACTCODE VARCHAR2(1 char),
	UNVWASTEDESTINATIONFACIND VARCHAR2(1 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_44YSHGJ7BQF9R01LWHW5RN1WD
foreign key (SITEWASTEACTID) references RCRA_SITEWASTEACT
/

create table RCRA_SOLICITHISTORY
(
	ID NUMBER(19) not null
		primary key,
	SCHEDULERUNDATE DATE,
	SOLICITTYPE VARCHAR2(255 char),
	PROCESSINGSTATUS VARCHAR2(255 char),
	TRANSACTIONID VARCHAR2(255 char)
)
/

create table RCRA_STATEACT
(
	ID NUMBER(19) not null
		primary key,
	STATEACTOWNRNAME VARCHAR2(2 char),
	STATEACTTYPECODE VARCHAR2(5 char),
	STATEACTTYPETXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	HANDLERID NUMBER(19)
		constraint FK_BSIUM76RWFIIB6N8200HU01BS
		references RCRA_HANDLER
)
/

create table RCRA_SUPPENVPROJ
(
	ID NUMBER(19) not null
		primary key,
	SEPACTUALDATEITEM DATE,
	SEPCODEOWNR VARCHAR2(2 char),
	SEPDEFAULTEDDATEITEM DATE,
	SEPDESCTXT VARCHAR2(3 char),
	SEPEXPENDITUREAMT NUMBER(13,2),
	SEPLONGDESCTXT VARCHAR2(4000 char),
	SEPSCHEDCMPLTDATEITEM DATE,
	SEPSEQNUMBER NUMBER(2),
	NOTES VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	ENFRCACTID NUMBER(19)
		constraint FK_LSDJMG3I3IUMUGNM10MHQT1Q6
		references RCRA_ENFRCACT
)
/

create table RCRA_UNVWASTEACT
(
	ID NUMBER(19) not null
		primary key,
	ACCUMULATEDWASTECODE VARCHAR2(1 char),
	GENERATEDHANDLERCODE VARCHAR2(1 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	UNVWASTEOWNRNAME VARCHAR2(2 char),
	UNVWASTETYPECODE VARCHAR2(1 char),
	UNVWASTETYPETXT VARCHAR2(4000 char),
	HANDLERID NUMBER(19)
		constraint FK_BXYQL2L905SX8WJIE01IARH33
		references RCRA_HANDLER
)
/

create table RCRA_USEDOIL
(
	ID NUMBER(19) not null
		primary key,
	FUELBURNERCODE VARCHAR2(1 char),
	MARKETBURNERCODE VARCHAR2(1 char),
	PROCESSORCODE VARCHAR2(1 char),
	REFINERCODE VARCHAR2(1 char),
	SPECIFICATIONMARKETERCODE VARCHAR2(1 char),
	TRANSFERFACCODE VARCHAR2(1 char),
	TRNSPRTRCODE VARCHAR2(1 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_KAGVX3RFK4UYS281MAW3FPJWX
foreign key (USEDOILID) references RCRA_USEDOIL
/

create table RCRA_VIO
(
	ID NUMBER(19) not null
		primary key,
	AGENCYTXT VARCHAR2(4000 char),
	AGENCYDETERMVIO VARCHAR2(1 char),
	FORMERCITNNAME VARCHAR2(35 char),
	NOTES VARCHAR2(4000 char),
	RETCOMPACTUALDATEITEM DATE,
	RETTOCOMPQUALIFIER VARCHAR2(1 char),
	RETTOCOMPQUALIFIERTXT VARCHAR2(4000 char),
	TRANSACTIONCODE VARCHAR2(1 char),
	VIOACTLOC VARCHAR2(2 char),
	VIODETERMDATEITEM DATE,
	VIORSPAGENCY VARCHAR2(1 char),
	VIORSPAGENCYTXT VARCHAR2(4000 char),
	VIOSEQNUMBER NUMBER(4),
	VIOTYPE VARCHAR2(10 char),
	VIOTYPEOWNR VARCHAR2(2 char),
	VIOTYPETXT VARCHAR2(4000 char),
	CMEFACSUBID NUMBER(19)
		constraint FK_NL8FONV908Q9BRGYI1AI98UQ2
		references RCRA_CMEFACSUB
)
/

alter table RCRA_CITN
	add constraint FK_R27U7OLEP4IM3Y7KYVVH3KC93
foreign key (VIOID) references RCRA_VIO
/

create table RCRA_VIOENFRC
(
	ID NUMBER(19) not null
		primary key,
	AGENCYTXT VARCHAR2(4000 char),
	AGENCYDETERMVIO VARCHAR2(1 char),
	RETCOMPSCHEDDATEITEM DATE,
	TRANSACTIONCODE VARCHAR2(1 char),
	VIOSEQNUMBER NUMBER(4),
	ENFRCACTID NUMBER(19)
		constraint FK_1QI1YI8DBDI6XV8PXBPID6MJI
		references RCRA_ENFRCACT
)
/

create table RCRA_WASTEGENRTR
(
	ID NUMBER(19) not null
		primary key,
	WASTEGENRTROWNRNAME VARCHAR2(2 char),
	WASTEGENRTRSTATUSCODE VARCHAR2(1 char),
	WASTEGENRTRSTATUSTXT VARCHAR2(4000 char)
)
/

alter table RCRA_HANDLER
	add constraint FK_AIITOQI1PPJ37J2I5D3ON5TAT
foreign key (WASTEGENRTRID) references RCRA_WASTEGENRTR
/

alter table RCRA_HANDLER
	add constraint FK_J6O819S62KF895FBTQOKWF488
foreign key (STATEWASTEGENRTRID) references RCRA_WASTEGENRTR
/

create table RCRA_WHERETYPE
(
	SRS_DIM NUMBER(19,2),
	SRS_NAME VARCHAR2(255 char),
	SRSDIMENSION NUMBER(20),
	SRSNAME VARCHAR2(255 char),
	ID NUMBER(19) not null
		primary key
		constraint FK_MK80QQN3Y3L4CV62DV8K2XL2D
		references RCRA_ABSFEATUREPROPTYPE
)
/

alter table RCRA_GEOGINF
	add constraint FK_EG9FDQA3HVK7NVW33W0PND3VQ
foreign key (WHEREID) references RCRA_WHERETYPE
/

