Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Main Information', NULL, 'S', 
    'SELECT M.* FROM (SELECT A.CA_NUMBER,A.PREPARER_NAME ||CASE WHEN A.LC_PREPARER_NAME IS NOT NULL THEN  '' ('' ||A.LC_PREPARER_NAME||'')'' ELSE NULL END PREPARER_NAME,
TO_CHAR(A.APPLICATION_DATE,''DD/MM/YYYY'')APPLICATION_DATE,b.id,
FUNC_GET_CODE_VALUE((SELECT IND.INDUSTRY_TYPE_IN_CORE FROM SML_MAS_IND IND WHERE IND.ID = b.MAS_INDUSTRY_ID)) INDUSTRY,
(SELECT LOCAL_CODE_VALUE FROM CODE_VALUE WHERE ID=A.APPLICATION_REQ_TYPE) APP_TYPE,
(SELECT CODE_VALUE FROM CODE_VALUE WHERE ID=A.BRANCH_ID) BRANCH_ID,B.CUSTOMER_NAME,B.CIF_NUMBER, A.BORROWER_ID, 
GET_UDF_VALUE(a.ID,''CAS_DESCRIPTION'') STOCK_TRADE_NAME
FROM SML_CA A, SML_CUSTOMER B
WHERE A.BORROWER_ID=B.ID 
and A.id=@CA_ID) M
LEFT JOIN SML_BUSINESS C ON M.BORROWER_ID=C.CUSTOMER_ID', 'CA_NUMBER, PREPARER_NAME, APPLICATION_DATE, APP_TYPE, BRANCH_ID, CUSTOMER_NAME, CIF_NUMBER, BORROWER_ID,STOCK_TRADE_NAME, INDUSTRY', 1, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Address Information', NULL, 'S', 
    'SELECT TO_DATE(C.INCORPORATION_DATE,''DD-MM-YYYY'')INCORPORATION_DATE, 
A.ADDR_1||'' ''||A.ADDR_2||'' ''||A.ADDR_3||'' ''||A.ADDR_4||'' ''||A.ADDR_5||'' - ''||GET_LOCAL_CODE_VALUE(A.PROVINCE)||'' - ''||GET_LOCAL_CODE_VALUE(A.PROVINCE) ADDRESS,
GET_FCCY(B.CHARTERED_CAPITAL,''VND'') ||'' ''|| GET_CODE_BYID(B.CHARTERED_CAPITAL_CCY_ID) CHARTERED_CAPITAL,
(select CASE WHEN INDICATOR_VALUE IS NOT NULL THEN FUNC_FORMAT_CCY(INDICATOR_VALUE,''VND'')||'' ''||CURRENCY 
ELSE NULL END INDICATOR_VALUE from SML_OPTIMIST_FN_HIGHLIGHT OT 
where OT.STATEMENT_ID= (select max(id) from SML_FIN_ST ST where ST.BORROWER_ID=C.ID
and deprecated=''N'')
and OT.INDICATOR_ID=1760000)OWNERS_ENQUITY
FROM SML_CUSTOMER C JOIN SML_ADDRESS A ON C.ID= A.CUSTOMER_ID
LEFT JOIN SML_BUSINESS B ON C.ID = B.CUSTOMER_ID
WHERE C.ID=@CUSTOMER_ID', 'INCORPORATION_DATE, ADDRESS,CHARTERED_CAPITAL,OWNERS_ENQUITY', 2, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'SP RATING', NULL, 'S', 
    'SELECT UTL_I18N.UNESCAPE_REFERENCE(AGENCY_NAME) AGENCY_NAME 
from(
select SPAGENCY||'':''||SPRATING||'',''||SPDATE AGENCY_NAME from(
SELECT DISTINCT a.CREATION_DATE, (SELECT CODE_VALUE FROM CODE_VALUE WHERE ID=RATING_AGENCY_ID ) SPAGENCY,  
(SELECT CODE_VALUE FROM CODE_VALUE WHERE ID=RATING_ID ) SPRATING, TO_CHAR(A.RATING_DATE,''DD/MM/YYYY'') SPDATE
FROM SML_EXT_CREDIT_RATING A, SML_CA B WHERE A.CUSTOMER_ID=B.BORROWER_ID                
AND B.ID=@CA_ID order by CREATION_DATE desc
) where rownum=1)', 'AGENCY_NAME', 3, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Other Insitution', NULL, 'M', 
    'select * from (
SELECT DISTINCT (SELECT CODE_VALUE FROM CODE_VALUE WHERE ID=RATING_AGENCY_ID ) AGENCY,  
(SELECT CODE_VALUE FROM CODE_VALUE WHERE ID=RATING_ID ) RATING, TO_CHAR(A.RATING_DATE,''DD/MM/YYYY'') RATING_DATE
FROM SML_EXT_CREDIT_RATING A, SML_CA B WHERE A.CUSTOMER_ID=B.BORROWER_ID                
AND B.ID=@CA_ID
)
WHERE AGENCY<>''S''||''&''||''P'' ORDER BY AGENCY,RATING_DATE DESC', 'AGENCY, RATING, RATING_DATE', 4, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'INT RATING', NULL, 'S', 
    'SELECT * FROM (
select ''BIDV :''||b.FACTORS_VALUE||'',''||a.FACTORS_VALUE BIDV_AGENCY from (
select a.* from sml_rating_summary  a
join sml_rating_report b on A.REPORT_ID=b.id 
where customer_id=@CUSTOMER_ID and FACTORS_CODE=''H'') a
join (
select a.* from sml_rating_summary  a
join sml_rating_report b on A.REPORT_ID=b.id 
where customer_id=@CUSTOMER_ID and FACTORS_CODE=''N1'') b
on a.user_id=b.user_id
ORDER BY B.LAST_UPDATE_DATE DESC
) WHERE ROWNUM=1', 'BIDV_AGENCY', 4, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Facility_Collateral Information FOR NOCHANGE', NULL, 'M', 
    'select fac_stt.stt_fac, 
fac_data.* from (select
a.*,b.PROPOSED_LIMIT APROVED_LIMIT, B.COL_RATIO R_RATIO,B.AVAILABLE_PERIOD R_PERIOD, 
B.EXPIRY_DATE REXPIRY_DATE,B.FAC_PRICING R_PRICING,B.PSCHEDULE_PAYMENT R_SCHEDULE, B.GRACE_PERIOD R_GRACE from (
select FAC_NO,FAC_NUM, FAC_DESC, PURPOSE_DESC, 
case when DISPLAY_ORDER>1 and trim(PROPOSED_LIMIT) is not null then ''(''||PROPOSED_LIMIT||'')'' else PROPOSED_LIMIT end PROPOSED_LIMIT,  
case when DISPLAY_ORDER>1 and trim(EXISTING_LIMIT) is not null then ''(''||EXISTING_LIMIT||'')'' else EXISTING_LIMIT end EXISTING_LIMIT,
COL_RATIO, AVAILABLE_PERIOD, EXPIRY_DATE, FAC_PRICING,PSCHEDULE_PAYMENT, GRACE_PERIOD
from (
select decode(F.FOR_CANCELLATION_IND,''Y'',''Bị hủy'',decode(f.STATUS,''New'',''Mới'',''Update'',''Cập nhật'',''Không thay đổi''))FAC_NO,
F.FAC_NO FAC_NUM,
get_fac_ref(f.id) FAC_DESC, F.PURPOSE_DESC,nvl(F.DISPLAY_ORDER,1) DISPLAY_ORDER,
GET_FCCY(F.PROPOSED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1), get_code_byid(F.PROPOSED_LIMIT_CCY_ID)) ||'' ''||get_code_byid(F.PROPOSED_LIMIT_CCY_ID) PROPOSED_LIMIT,
GET_FCCY(F.APPROVED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1),get_code_byid(F.APPROVED_LIMIT_CCY_ID))||'' ''||get_code_byid(F.APPROVED_LIMIT_CCY_ID)  EXISTING_LIMIT,
GET_UDF_VALUE(f.id,''REQUIRED_SECURITY_COVERAGE_FACILITY_LIMIT'') COL_RATIO,
GET_AVAIL_PERIOD_VALUE(f.id) AVAILABLE_PERIOD,
GET_EXPIRY_MATURITY_TERM(f.id) EXPIRY_DATE,
FUNC_GET_PRICING_ES(f.ca_id,f.id,''vn'') FAC_PRICING,
''Gốc: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''')||'' ; ''||
''Lãi: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''') PSCHEDULE_PAYMENT,
c.TENOR_GRACE_PERIOD||'' ''||FUNC_GET_LOCAL_VALUE(c.TENOR_GRACE_PERIOD_PERIOD_ID) GRACE_PERIOD
from sml_ca ca
inner join sml_facility f on f.ca_id=CA.ID
left join sml_fac_tenor C on F.id = C.id
LEFT JOIN SML_FAC_CORP_REPAY repay on F.id=REPAY.FACILITY_ID
where ca.id=@CA_ID and F.OMNIBUS_IND=''N'' AND F.STATUS=''No Change'' AND F.FOR_CANCELLATION_IND<>''Y''
order by nvl(F.DISPLAY_ORDER,0),F.FAC_ALPHABETINDEX)) a
join ( 
select FAC_NUM, 
case when DISPLAY_ORDER>1 and trim(PROPOSED_LIMIT) is not null then ''(''||PROPOSED_LIMIT||'')'' else PROPOSED_LIMIT end PROPOSED_LIMIT,  
COL_RATIO, AVAILABLE_PERIOD, EXPIRY_DATE, FAC_PRICING,PSCHEDULE_PAYMENT, GRACE_PERIOD ', 'STT_FAC', 6, 'Y', 'A');
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Facility_Collateral Information FOR NOCHANGE', NULL, 'M', 
    'from (
select F.FAC_NO FAC_NUM,nvl(F.DISPLAY_ORDER,1) DISPLAY_ORDER,
GET_FCCY(F.PROPOSED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1), get_code_byid(F.PROPOSED_LIMIT_CCY_ID)) ||'' ''||get_code_byid(F.PROPOSED_LIMIT_CCY_ID) PROPOSED_LIMIT,
GET_UDF_VALUE(f.id,''REQUIRED_SECURITY_COVERAGE_FACILITY_LIMIT'') COL_RATIO,
GET_AVAIL_PERIOD_VALUE(f.id) AVAILABLE_PERIOD,
GET_EXPIRY_MATURITY_TERM(f.id) EXPIRY_DATE,
FUNC_GET_PRICING_ES(f.ca_id,f.id,''vn'') FAC_PRICING,
''Gốc: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''')||'' ; ''||
''Lãi: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''') PSCHEDULE_PAYMENT,
c.TENOR_GRACE_PERIOD||'' ''||FUNC_GET_LOCAL_VALUE(c.TENOR_GRACE_PERIOD_PERIOD_ID) GRACE_PERIOD
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
left outer join sml_fac_tenor C on F.id = C.id
LEFT JOIN SML_FAC_CORP_REPAY repay on F.id=REPAY.FACILITY_ID
where ca.id=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and F.OMNIBUS_IND=''N'' AND F.STATUS=''No Change'' AND F.FOR_CANCELLATION_IND<>''Y''
order by nvl(F.DISPLAY_ORDER,0),F.FAC_ALPHABETINDEX) )b
on a.FAC_NUM=b.FAC_NUM
)fac_data 
join 
(
select rownum stt, fac_no,STT_FAC from (
select m.fac_no, m.fac_alphabetindex, N.stt,
case when nvl(instr(m.fac_alphabetindex,''.''),0)>0 
then STT||substr(m.fac_alphabetindex,instr(m.fac_alphabetindex,''.'')) else to_char(STT) end STT_FAC
 from (
select DECODE (GET_LIST_PARENT(id),NULL,A.ID,GET_LIST_PARENT(id)) fac_cha,a.* from sml_facility a where ca_id=@CA_ID and A.OMNIBUS_IND=''N'') m
left join (
select rownum stt,
DECODE(PARENT_FACILITY_ID,null,b.id,PARENT_FACILITY_ID)PARENT_FACILITY,
 b.* from(
 SELECT FACTEM.* FROM(
select * from (select * from sml_facility a
where ca_id=@CA_ID  
and  omnibus_ind=''N''
and (display_order=1 or display_order is null) 
and A.PARENT_FACILITY_ID is null
order by Fac_no asc)
union all
select * from(
select *  from sml_facility aa
where ca_id=@CA_ID  
and  omnibus_ind=''Y''
order by aa.Fac_no asc
)
)FACTEM ORDER BY GET_CODE_BYID(FACTEM.CREDIT_PKG_ID) ASC, FACTEM.FAC_NO ASC
) b
) n on (m.fac_cha=n.PARENT_FACILITY)
order by STT, m.fac_alphabetindex
)
)fac_stt
on fac_data.fac_num=fac_stt.fac_no
order by fac_stt.stt asc', 'FAC_NO, FAC_NUM, FAC_DESC, PURPOSE_DESC, PROPOSED_LIMIT, EXISTING_LIMIT, COL_RATIO, AVAILABLE_PERIOD, EXPIRY_DATE, FAC_PRICING, PSCHEDULE_PAYMENT, GRACE_PERIOD, APROVED_LIMIT, R_RATIO, R_PERIOD, REXPIRY_DATE, R_PRICING, R_SCHEDULE, R_GRACE', 7, 'Y', 'A');
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Facility_Collateral Information FOR UPDATE/NEW/TBC', NULL, 'M', 
    'select fac_stt.stt_fac stt_fac_P, 
fac_data.* from (select
a.*,b.PROPOSED_LIMIT APROVED_LIMIT_P, B.COL_RATIO R_RATIO_P,B.AVAILABLE_PERIOD R_PERIOD_P, 
B.EXPIRY_DATE REXPIRY_DATE_P,B.FAC_PRICING R_PRICING_P,B.PSCHEDULE_PAYMENT R_SCHEDULE_P, B.GRACE_PERIOD R_GRACE_P from (
select FAC_NO FAC_NO_P,FAC_NUM FAC_NUM_P, FAC_DESC FAC_DESC_P, PURPOSE_DESC PURPOSE_DESC_P, 
case when DISPLAY_ORDER>1 and trim(PROPOSED_LIMIT) is not null then ''(''||PROPOSED_LIMIT||'')'' else PROPOSED_LIMIT end PROPOSED_LIMIT_P,  
case when DISPLAY_ORDER>1 and trim(EXISTING_LIMIT) is not null then ''(''||EXISTING_LIMIT||'')'' else EXISTING_LIMIT end EXISTING_LIMIT_P,
COL_RATIO COL_RATIO_P, AVAILABLE_PERIOD AVAILABLE_PERIOD_P, EXPIRY_DATE EXPIRY_DATE_P, FAC_PRICING FAC_PRICING_P,PSCHEDULE_PAYMENT PSCHEDULE_PAYMENT_P, GRACE_PERIOD GRACE_PERIOD_P
from (
select decode(F.FOR_CANCELLATION_IND,''Y'',''Bị hủy'',decode(f.STATUS,''New'',''Mới'',''Update'',''Cập nhật'',''Không thay đổi''))FAC_NO,
F.FAC_NO FAC_NUM,
get_fac_ref(f.id) FAC_DESC, F.PURPOSE_DESC,nvl(F.DISPLAY_ORDER,1) DISPLAY_ORDER,
GET_FCCY(F.PROPOSED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1), get_code_byid(F.PROPOSED_LIMIT_CCY_ID)) ||'' ''||get_code_byid(F.PROPOSED_LIMIT_CCY_ID) PROPOSED_LIMIT,
GET_FCCY(F.APPROVED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1),get_code_byid(F.APPROVED_LIMIT_CCY_ID))||'' ''|| get_code_byid(F.APPROVED_LIMIT_CCY_ID) EXISTING_LIMIT,
GET_UDF_VALUE(f.id,''REQUIRED_SECURITY_COVERAGE_FACILITY_LIMIT'') COL_RATIO,
GET_AVAIL_PERIOD_VALUE(f.id) AVAILABLE_PERIOD,
GET_EXPIRY_MATURITY_TERM(f.id) EXPIRY_DATE,
FUNC_GET_PRICING_ES(f.ca_id,f.id,''vn'') FAC_PRICING,
''Gốc: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''')||'' ; ''||
''Lãi: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''') PSCHEDULE_PAYMENT,
c.TENOR_GRACE_PERIOD||'' ''||FUNC_GET_LOCAL_VALUE(c.TENOR_GRACE_PERIOD_PERIOD_ID) GRACE_PERIOD
from sml_ca ca
inner join sml_facility f on f.ca_id=CA.ID
left join sml_fac_tenor C on F.id = C.id
LEFT JOIN SML_FAC_CORP_REPAY repay on F.id=REPAY.FACILITY_ID
where ca.id=@CA_ID and F.OMNIBUS_IND=''N'' AND (F.STATUS <> ''No Change'' or F.FOR_CANCELLATION_IND=''Y'')
order by nvl(F.DISPLAY_ORDER,0),F.FAC_ALPHABETINDEX)) a
join ( 
select FAC_NUM, 
case when DISPLAY_ORDER>1 and trim(PROPOSED_LIMIT) is not null then ''(''||PROPOSED_LIMIT||'')'' else PROPOSED_LIMIT end PROPOSED_LIMIT,  
COL_RATIO, AVAILABLE_PERIOD, EXPIRY_DATE, FAC_PRICING,PSCHEDULE_PAYMENT, GRACE_PERIOD ', 'STT_FAC_P', 8, 'A', 'B');
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Facility_Collateral Information FOR UPDATE/NEW/TBC', NULL, 'M', 
    'from (
select F.FAC_NO FAC_NUM,nvl(F.DISPLAY_ORDER,1) DISPLAY_ORDER,
GET_FCCY(F.PROPOSED_LIMIT/decode(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',1000000,1), get_code_byid(F.PROPOSED_LIMIT_CCY_ID)) ||'' ''||get_code_byid(F.PROPOSED_LIMIT_CCY_ID) PROPOSED_LIMIT,
GET_UDF_VALUE(f.id,''REQUIRED_SECURITY_COVERAGE_FACILITY_LIMIT'') COL_RATIO,
GET_AVAIL_PERIOD_VALUE(f.id) AVAILABLE_PERIOD,
GET_EXPIRY_MATURITY_TERM(f.id) EXPIRY_DATE,
FUNC_GET_PRICING_ES(f.ca_id,f.id,''vn'') FAC_PRICING,
''Gốc: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''')||'' ; ''||
''Lãi: ''||GET_UDF_VALUE_2(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY'')||'' ''||
Decode(GET_UDF_VALUE1(repay.FACILITY_ID,''INTEREST_REPAYMENT_FREQUENCY''),''1'',''Ngày'',''2'',''Tháng'',''3'',''Năm'','''') PSCHEDULE_PAYMENT,
c.TENOR_GRACE_PERIOD||'' ''||FUNC_GET_LOCAL_VALUE(c.TENOR_GRACE_PERIOD_PERIOD_ID) GRACE_PERIOD
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
left outer join sml_fac_tenor C on F.id = C.id
LEFT JOIN SML_FAC_CORP_REPAY repay on F.id=REPAY.FACILITY_ID
where ca.id=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and F.OMNIBUS_IND=''N'' AND (F.STATUS <> ''No Change'' or F.FOR_CANCELLATION_IND=''Y'')
order by nvl(F.DISPLAY_ORDER,0),F.FAC_ALPHABETINDEX) )b
on a.FAC_NUM_P=b.FAC_NUM
)fac_data 
join 
(
select rownum stt, fac_no,STT_FAC from (
select m.fac_no, m.fac_alphabetindex, N.stt,
case when nvl(instr(m.fac_alphabetindex,''.''),0)>0 
then STT||substr(m.fac_alphabetindex,instr(m.fac_alphabetindex,''.'')) else to_char(STT) end STT_FAC
 from (
select DECODE (GET_LIST_PARENT(id),NULL,A.ID,GET_LIST_PARENT(id)) fac_cha,a.* from sml_facility a where ca_id=@CA_ID and A.OMNIBUS_IND=''N'') m
left join (
select rownum stt,
DECODE(PARENT_FACILITY_ID,null,b.id,PARENT_FACILITY_ID)PARENT_FACILITY,
 b.* from(
 SELECT FACTEM.* FROM(
select * from (select * from sml_facility a
where ca_id=@CA_ID  
and  omnibus_ind=''N''
and (display_order=1 or display_order is null) 
and A.PARENT_FACILITY_ID is null
order by Fac_no asc)
union all
select * from(
select *  from sml_facility aa
where ca_id=@CA_ID  
and  omnibus_ind=''Y''
order by aa.Fac_no asc
)
)FACTEM ORDER BY GET_CODE_BYID(FACTEM.CREDIT_PKG_ID) ASC, FACTEM.FAC_NO ASC
) b
) n on (m.fac_cha=n.PARENT_FACILITY)
order by STT, m.fac_alphabetindex
)
)fac_stt
on fac_data.fac_num_P=fac_stt.fac_no
order by fac_stt.stt asc', 'FAC_NO_P, FAC_NUM_P, FAC_DESC_P, PURPOSE_DESC_P, PROPOSED_LIMIT_P, EXISTING_LIMIT_P, COL_RATIO_P, AVAILABLE_PERIOD_P, EXPIRY_DATE_P, FAC_PRICING_P, PSCHEDULE_PAYMENT_P, GRACE_PERIOD_P, APROVED_LIMIT_P, R_RATIO_P, R_PERIOD_P, REXPIRY_DATE_P, R_PRICING_P, R_SCHEDULE_P, R_GRACE_P', 9, 'A', 'B');
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'Total Proposed limit', NULL, 'S', 
    'SELECT GET_FCCY(SUM(APR_BASE),''USD'') T_APR_BASE,GET_FCCY(SUM(PRO_BASE),''USD'') T_PRO_BASE, GET_FCCY(SUM(CHANGE_BASE),''USD'') T_CHANGE_BASE 
FROM (
select a.*, b.APR_BASE, a.PRO_BASE-b.APR_BASE CHANGE_BASE from (
select  FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE),f.fac_no, 
nvl(FOREX_MANAGER.CONVERT_TO_BASE(F.PROPOSED_LIMIT, F.PROPOSED_LIMIT_CCY_ID),0)/1000000  PRO_BASE
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
where ca.id=@CA_ID and F.OMNIBUS_IND=''N'' and nvl(F.DISPLAY_ORDER,1)=1
and  FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) in (''New'',''New (Express Lane)'',''Full Cancellation'')) a 
join (select  FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE),f.fac_no, 
nvl(FOREX_MANAGER.CONVERT_TO_BASE(F.PROPOSED_LIMIT, F.PROPOSED_LIMIT_CCY_ID),0)/1000000  APR_BASE
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
where ca.id=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and F.OMNIBUS_IND=''N'' and nvl(F.DISPLAY_ORDER,1)=1
and  FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) in (''New'',''New (Express Lane)'',''Full Cancellation'')) b
on a.fac_no=b.fac_no)', 'T_APR_BASE, T_PRO_BASE, T_CHANGE_BASE', 10, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Template_Corporate_Express Lane', 'List Other Bank', NULL, 'S', 
    'select GET_FCCY(sum(OUTSTANDING_BAL),''VND'') TOTAL_OS from(
select F.FAC_NO,
nvl(F.OUTSTANDING_BAL,0)/1000000 OUTSTANDING_BAL
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
where ca.id=@CA_ID and F.OMNIBUS_IND=''N''  
AND FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) not in (''New'',''New (Express Lane)'',''Full Cancellation'')
)', 'TOTAL_OS', 11, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Collateral Information', NULL, 'M', 
    'SELECT M.*, N.RATIO_POLICY R_RATIO_POLICY,N.PRO_VALUE  FROM (
SELECT DISTINCT A.COLLATERAL_NO, A.COLLATERAL_NAME, FUNC_GET_LOCAL_VALUE(A.COL_TYPE_ID) COL_TYPE,
A.RATIO_POLICY,
GET_FCCY(decode(A.HELD_AMOUNT,null,A.HELD_AMOUNT,A.HELD_AMOUNT/decode(get_code_byid(A.HELD_AMOUNT_CCY_ID),''VND'',1000000,1)), get_code_byid(A.HELD_AMOUNT_CCY_ID)) HELD_AMT
FROM SML_COLLATERAL A
JOIN SML_CA_COLLATERAL B ON A.ID=B.COLLATERAL_ID
WHERE B.CA_ID=@CA_ID and GET_CHARGE_DK(a.id)=''TRUE''
AND B.EXISTING_IND<>''Y'') M
JOIN (SELECT DISTINCT A.COLLATERAL_NO, A.COLLATERAL_NAME, FUNC_GET_LOCAL_VALUE(A.COL_TYPE_ID) COL_TYPE,
A.RATIO_POLICY,
GET_FCCY(decode(A.HELD_AMOUNT,null,A.HELD_AMOUNT,A.HELD_AMOUNT/decode(get_code_byid(A.HELD_AMOUNT_CCY_ID),''VND'',1000000,1)), get_code_byid(A.HELD_AMOUNT_CCY_ID)) HELD_AMT,
GET_FCCY(decode(A.PROPOSED_VALUE,null,A.PROPOSED_VALUE,A.PROPOSED_VALUE/decode(get_code_byid(A.PROPOSED_VALUE_CCY_ID),''VND'',1000000,1)), get_code_byid(A.PROPOSED_VALUE_CCY_ID)) PRO_VALUE,
GET_FCCY(decode(A.EXISTING_VALUE,null,A.EXISTING_VALUE,A.EXISTING_VALUE/decode(get_code_byid(A.EXISTING_VALUE_CCY_ID),''VND'',1000000,1)), get_code_byid(A.EXISTING_VALUE_CCY_ID)) APR_VALUE
FROM SML_COLLATERAL A
JOIN SML_CA_COLLATERAL B ON A.ID=B.COLLATERAL_ID
WHERE B.CA_ID=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and GET_CHARGE_DK(a.id)=''TRUE''
AND B.EXISTING_IND<>''Y'') N ON M.COLLATERAL_NO=N.COLLATERAL_NO', 'COLLATERAL_NO, COLLATERAL_NAME, COL_TYPE, RATIO_POLICY, HELD_AMT,R_RATIO_POLICY, PRO_VALUE', 12, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'PL03 TNC', NULL, 'M', 
    'select FUNC_GET_LOCAL_VALUE(A.APPLICATION_TYPE_ID) PLAPP_TYPE,FUNC_GET_LOCAL_VALUE(A.CONDITION_TYPE_ID) PL_COND,
FUNC_GET_LOCAL_VALUE(A.CONDITION_SUB_TYPE_ID) PL_SUB_COND,CLAUSE_DESC PL_DESC,''(''||decode(a.statustc,''NO_CHANGE'',''Không Thay Đổi'',''NEW'',''Mới'',''UPDATED'', ''Đã Cập Nhật'',a.statustc)||'')'' PL_STATUS,
decode(A.COMPLIANCE_IND,null,''-'',''Y'',''Có'',''Không'') PL_COMPLIANCE, decode(A.WAIVE_IND,null,''-'',''Y'',''Có'',''Không'') PL_WAIVE_IND,
(select NVL(TRIM(XMLAGG(XMLELEMENT(E, TNC_NAME||''#break#'')).EXTRACT (''//text()'')),'' '')
from (select get_code_byid(f.branch)||''-''||F.FAC_NO||''-''||F.FAC_DESC TNC_NAME from
SML_TNC_GEN_FAC b   
JOIN SML_FACILITY F ON (F.ID=B.FAC_ID) where B.TNC_GEN_ID=a.id)) PL_TNC_NAME, 
decode(A.LAST_UPDATE_BY,''SML'','' '',func_get_cust_name_for_tnc(a.APPROVAL_LEVEL_ID,a.LAST_UPDATE_BY)) PL_UPDATE_BY from SML_TNC_GEN a 
join sml_ca ca on a.ca_id=ca.id 
where a.ca_id=@CA_ID
and A.DEPRECATED=''N'' and get_code_byid(A.APPLICATION_TYPE_ID)=''FACILITY''
and FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) NOT in (''New (Express Lane)'',''New'')
AND A.STATUSTC IN (''NEW'',''UPDATED'')
union
select FUNC_GET_LOCAL_VALUE(A.APPLICATION_TYPE_ID) PLAPP_TYPE,FUNC_GET_LOCAL_VALUE(A.CONDITION_TYPE_ID) PL_COND,
FUNC_GET_LOCAL_VALUE(A.CONDITION_SUB_TYPE_ID)PL_SUB_COND,CLAUSE_DESC PL_DESC,''(''||decode(a.statustc,''NO_CHANGE'',''Không Thay Đổi'',''NEW'',''Mới'',''UPDATED'', ''Đã Cập Nhật'',a.statustc)||'')'' PL_STATUS,
decode(A.COMPLIANCE_IND,null,''-'',''Y'',''Có'',''Không'') PL_COMPLIANCE, decode(A.WAIVE_IND,null,''-'',''Y'',''Có'',''Không'') PL_WAIVE_IND,
(select NVL(TRIM(XMLAGG(XMLELEMENT(E, TNC_NAME||''#break#'')).EXTRACT (''//text()'')),'' '')
from (select get_code_byid(f.branch)||''-''||F.COLLATERAL_NO||''-''||F.COLLATERAL_NAME TNC_NAME from
SML_TNC_GEN_Col b  
INNER JOIN SML_COLLATERAL F ON (F.ID=B.COL_ID) where B.TNC_GEN_ID=a.id)) PL_TNC_NAME , 
decode(A.LAST_UPDATE_BY,''SML'','' '',func_get_cust_name_for_tnc(a.APPROVAL_LEVEL_ID,a.LAST_UPDATE_BY)) PL_UPDATE_BY from SML_TNC_GEN a 
join sml_ca ca on a.ca_id=ca.id
where a.ca_id=@CA_ID
and A.DEPRECATED=''N'' and get_code_byid(A.APPLICATION_TYPE_ID)=''COLLATERAL''
and FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) NOT in (''New (Express Lane)'',''New'')
AND A.STATUSTC IN (''NEW'',''UPDATED'')
union
select FUNC_GET_LOCAL_VALUE(A.APPLICATION_TYPE_ID) PLAPP_TYPE,FUNC_GET_LOCAL_VALUE(A.CONDITION_TYPE_ID) PL_COND,
FUNC_GET_LOCAL_VALUE(A.CONDITION_SUB_TYPE_ID)PL_SUB_COND,CLAUSE_DESC PL_DESC,''(''||decode(a.statustc,''NO_CHANGE'',''Không Thay Đổi'',''NEW'',''Mới'',''UPDATED'', ''Đã Cập Nhật'',a.statustc)||'')'' PL_STATUS,
decode(A.COMPLIANCE_IND,null,''-'',''Y'',''Có'',''Không'') PL_COMPLIANCE, decode(A.WAIVE_IND,null,''-'',''Y'',''Có'',''Không'') PL_WAIVE_IND,
F.NAME PL_TNC_NAME , 
decode(A.LAST_UPDATE_BY,''SML'','' '',func_get_cust_name_for_tnc(a.APPROVAL_LEVEL_ID,a.LAST_UPDATE_BY)) PL_UPDATE_BY from SML_TNC_GEN a
join sml_ca ca on a.ca_id=ca.id 
join SML_TNC_GEN_cp b on a.id=B.TNC_GEN_ID 
INNER JOIN SML_CREDIT_PACKAGE F ON (F.ID=B.CP_ID)
where a.ca_id=@CA_ID
and A.DEPRECATED=''N''
and FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) NOT in (''New (Express Lane)'',''New'')
AND A.STATUSTC IN (''NEW'',''UPDATED'')
union
select FUNC_GET_LOCAL_VALUE(A.APPLICATION_TYPE_ID) PLAPP_TYPE,FUNC_GET_LOCAL_VALUE(A.CONDITION_TYPE_ID) PL_COND,
FUNC_GET_LOCAL_VALUE(A.CONDITION_SUB_TYPE_ID)PL_SUB_COND,CLAUSE_DESC PL_DESC,''(''||decode(a.statustc,''NO_CHANGE'',''Không Thay Đổi'',''NEW'',''Mới'',''UPDATED'', ''Đã Cập Nhật'',a.statustc)||'')'' PL_STATUS,
decode(A.COMPLIANCE_IND,null,''-'',''Y'',''Có'',''Không'') PL_COMPLIANCE, decode(A.WAIVE_IND,null,''-'',''Y'',''Có'',''Không'') PL_WAIVE_IND,
'' '' PL_TNC_NAME , 
decode(A.LAST_UPDATE_BY,''SML'','' '',func_get_cust_name_for_tnc(a.APPROVAL_LEVEL_ID,a.LAST_UPDATE_BY)) PL_UPDATE_BY from SML_TNC_GEN a
join sml_ca ca on a.ca_id=ca.id 
where a.ca_id=@CA_ID and FUNC_GET_CODE_VALUE(A.APPLICATION_TYPE_ID)=''Customer''
and A.DEPRECATED=''N''
and FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) NOT in (''New (Express Lane)'',''New'')', 'PLAPP_TYPE,PL_COND, PL_SUB_COND, PL_DESC, PL_STATUS, PL_COMPLIANCE, PL_WAIVE_IND,PL_TNC_NAME, PL_UPDATE_BY', 13, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Total EXP', NULL, 'S', 
    'SELECT GET_FCCY(NVL(EXP_FAC_FULLY_IN_CAS_FULLY,0)/1000000+NVL(EXP_FAC_FULLY_IN_CAS_LOCAL,0)/1000000,''VND'') EXP_FULLY,
GET_FCCY(NVL(EXP_FAC_LOCAL_IN_CAS_FULLY,0)/1000000+NVL(EXP_FAC_LOCAL_IN_CAS_LOCAL,0)/1000000,''VND'') EXP_NON_FULLY,
GET_FCCY(NVL(EXP_FAC_FULLY_IN_CAS_FULLY,0)/1000000+
NVL(EXP_FAC_LOCAL_IN_CAS_FULLY,0)/1000000+
NVL(EXP_FAC_FULLY_IN_CAS_LOCAL,0)/1000000+
NVL(EXP_FAC_LOCAL_IN_CAS_LOCAL,0)/1000000,''VND'') CUST_EXP FROM SML_CA 
WHERE ID=@CA_ID and  FUNC_GET_CODE_VALUE(APPLICATION_REQ_TYPE) not in (''New'',''New (Express Lane)'',''Full Cancellation'')', 'EXP_FULLY,EXP_NON_FULLY,CUST_EXP', 14, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Total notional limit', NULL, 'S', 
    'select GET_FCCY(sum(APR_LC),''VND'') TOTAL_APR , GET_FCCY(sum(PRO_LC),''VND'') TOTAL_PRO,
 GET_FCCY(sum(PRO_LC)-sum(APR_LC),''VND'') TOTAL_CHANGE,
 GET_FCCY(sum(PRIN_OUTSTANDING),''VND'') TOTAL_PRIN_OUTSTANDING
  from(
select F.FAC_NO,
NVL(DECODE(get_code_byid(F.APPROVED_LIMIT_CCY_ID),''VND'',F.APPROVED_LIMIT,FOREX_MANAGER.CONVERT_TO_BASE(F.APPROVED_LIMIT,F.APPROVED_LIMIT_CCY_ID)),0)/1000000 APR_LC,
NVL(DECODE(get_code_byid(F.PROPOSED_LIMIT_CCY_ID),''VND'',F.PROPOSED_LIMIT,FOREX_MANAGER.CONVERT_TO_BASE(F.PROPOSED_LIMIT,F.PROPOSED_LIMIT_CCY_ID)),0)/1000000 PRO_LC,
F.PRIN_OUTSTANDING/1000000 PRIN_OUTSTANDING
from sml_ca ca
inner join sml_facility F on f.ca_id=CA.ID
where ca.id=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and F.OMNIBUS_IND=''N'' and nvl(F.DISPLAY_ORDER,1)=1 
and FUNC_GET_CODE_VALUE(APPLICATION_REQ_TYPE) not in (''New'',''New (Express Lane)'',''Full Cancellation'')
order by nvl(F.DISPLAY_ORDER,0),F.FAC_ALPHABETINDEX
)M', 'TOTAL_APR,TOTAL_PRO,TOTAL_CHANGE,TOTAL_PRIN_OUTSTANDING', 15, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'outstanding', NULL, 'S', 
    'select GET_FCCY(sum(nvl(fac.OUTSTANDING_BAL,0))/1000000,''VND'') OUTSTANDING_BAL from sml_facility  fac where fac.ca_id=@CA_ID ', 'OUTSTANDING_BAL', 16, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'PL01_2', NULL, 'M', 
    'SELECT DISTINCT A.COLLATERAL_NO COL_NO, A.COLLATERAL_NAME COL_NAME, FUNC_GET_LOCAL_VALUE(A.COL_TYPE_ID) COL_SUB_TYPE,
GET_FCCY(decode(A.HELD_AMOUNT,null,A.HELD_AMOUNT,A.HELD_AMOUNT/decode(get_code_byid(A.HELD_AMOUNT_CCY_ID),''VND'',1000000,1)), get_code_byid(A.HELD_AMOUNT_CCY_ID)) HELD_VALUE,
GET_FCCY(decode(A.PROPOSED_VALUE,null,A.PROPOSED_VALUE,A.PROPOSED_VALUE*A.RATIO_POLICY/decode(get_code_byid(A.PROPOSED_VALUE_CCY_ID),''VND'',1000000,1)), get_code_byid(A.PROPOSED_VALUE_CCY_ID)) RATIO_POLICY_PL2,
GET_FCCY(decode(A.PROPOSED_VALUE,null,A.PROPOSED_VALUE,A.PROPOSED_VALUE/decode(get_code_byid(A.PROPOSED_VALUE_CCY_ID),''VND'',1000000,1)), get_code_byid(A.PROPOSED_VALUE_CCY_ID)) PRO_AMT,
GET_FCCY(decode(A.EXISTING_VALUE,null,A.EXISTING_VALUE,A.EXISTING_VALUE/decode(get_code_byid(A.EXISTING_VALUE_CCY_ID),''VND'',1000000,1)), get_code_byid(A.EXISTING_VALUE_CCY_ID)) APR_AMT,
decode(GET_COL_STATUS(a.id),''New'',''Mới'',''Updated'',''Cập nhật'',''Discharged'',''Đã giải chấp'',''No Change'',''Không thay đổi'')||'' / ''||
decode(GET_COL_STATUS(a.id),''New'','' '', decode(B.SMLC_COL_STATUS,''HE'',''Đã thế chấp'',''HPU'',''Đã thế chấp, chờ hoàn thiện cập nhật'',''Đã phê duyệt, chưa hoàn thiện'')) COL_STS,
GET_CHARGE_INFO(a.id) CHARGE_INFO
FROM SML_COLLATERAL A
JOIN SML_CA_COLLATERAL B ON A.ID=B.COLLATERAL_ID
JOIN SML_CA CA ON CA.ID=B.CA_ID
WHERE ca.id=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID)
AND FUNC_GET_CODE_VALUE(CA.APPLICATION_REQ_TYPE) NOT IN (''New'',''New (Express Lane)'',''Full Cancellation'')
and B.EXISTING_IND<>''Y'' 
order by A.COLLATERAL_NO', 'COL_NO, COL_NAME, COL_SUB_TYPE, HELD_VALUE,RATIO_POLICY_PL2, PRO_AMT,APR_AMT, COL_STS, CHARGE_INFO', 17, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'OBFAC VAMC', NULL, 'S', 
    'SELECT case when sum(nvl(LOCAL_AMT,0))>0 then ''Có'' else ''Không'' end OBFAC_VAMC FROM SML_CUST_REL_BOR A
JOIN SML_CUST_REL_BOR_DEBT B ON A.id=B.REL_BOR_ID
WHERE A.CUSTOMER_ID=@CUSTOMER_ID and DEBT_TYPE=6', 'OBFAC_VAMC', 19, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'OBFAC 1Y', NULL, 'S', 
    'SELECT case when sum(nvl(LOCAL_AMT,0))>0 then ''Có'' else ''Không'' end OBFAC_1Y FROM SML_CUST_REL_BOR A
JOIN SML_CUST_REL_BOR_DEBT B ON A.id=B.REL_BOR_ID
WHERE A.CUSTOMER_ID=@CUSTOMER_ID and DEBT_TYPE=4', 'OBFAC_1Y', 20, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'OBFAC', NULL, 'S', 
    'SELECT case when sum(nvl(LOCAL_AMT,0))>0 then ''Có'' else ''Không'' end OBFAC_NAME FROM SML_CUST_REL_BOR A
JOIN SML_CUST_REL_BOR_DEBT B ON A.id=B.REL_BOR_ID
WHERE A.CUSTOMER_ID=@CUSTOMER_ID and DEBT_TYPE=2', 'OBFAC_NAME', 21, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'OBFAC 5Y', NULL, 'S', 
    'SELECT case when sum(nvl(LOCAL_AMT,0))>0 then ''Có'' else ''Không'' end OBFAC_5Y FROM SML_CUST_REL_BOR A
JOIN SML_CUST_REL_BOR_DEBT B ON A.id=B.REL_BOR_ID
WHERE A.CUSTOMER_ID=@CUSTOMER_ID and DEBT_TYPE=1', 'OBFAC_5Y', 22, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Comment', NULL, 'S', 
    'select distinct 
 AP.COMMENTS  from sml_user a
join sml_task_history b
on (A.LOGIN_ID=b.create_by and A.MASTER_ID is null
 and a.status=''ACTIVE'' 
 AND B.TASK_TYPE=''TASK_APP'')
join sml_task_app_history ap on b.id=ap.id
WHERE B.STAGE_REF_ID=@CA_ID and B.STATUS<>''DRAFT''
and AP.COMMENTS is not null and GET_CODE_BYID(A.ROLE_ID) =''CA''', 'COMMENTS', 25, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Group info', NULL, 'S', 
    'SELECT rtrim(NVL(TRIM(XMLAGG(XMLELEMENT(E, GROUP_NAME ||'','')).EXTRACT (''//text()'')),''''),''#break#'') GROUP_NAME_CUS_INFO FROM(
SELECT A.GROUP_NAME||''(''||CNT||'' thành viên)''GROUP_NAME FROM (
SELECT DISTINCT og.GROUP_NAME
FROM SML_OOE_GROUP og
join SML_OOE_GROUP_MEMBER om
on (og.ID=om.OOE_GROUP_ID AND og.STATUS=''ACTIVE'')
join sml_customer c on om.CUSTOMER_ID=c.id
WHERE c.id=@CUSTOMER_ID) A
JOIN (
SELECT DISTINCT og.GROUP_NAME, COUNT(CUSTOMER_ID) CNT
FROM SML_OOE_GROUP og
join SML_OOE_GROUP_MEMBER om
on (og.ID=om.OOE_GROUP_ID AND og.STATUS=''ACTIVE'')
GROUP BY GROUP_NAME) B ON A.GROUP_NAME=B.GROUP_NAME
)', 'GROUP_NAME_CUS_INFO', 26, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Financial Highlight', NULL, 'M', 
    'select distinct m.ACCOUNT_NAME_VN,m.INDICATOR_ID,decode(m.IS_TITLE,''Y'','''', m.value1) value1,m.DISPLAY_ORD, decode(m.IS_TITLE,''Y'','''', n.value1) value2,decode(m.IS_TITLE,''Y'','''', k.value1) vaue3 from(
select distinct B.INDICATOR_ID,
decode(B.VALUE_TYPE,''Currency'',FUNC_FORMAT_CCY(to_number(B.INDICATOR_VALUE)/st.unit,b.CURRENCY),
 ''Numeric'',case when (round(B.INDICATOR_VALUE,2)>0 and round(B.INDICATOR_VALUE,2) <1) then to_char(''0''||round(B.INDICATOR_VALUE,2)) else to_char(round(B.INDICATOR_VALUE,2)) end ,B.INDICATOR_VALUE)VALUE1,
 C.ACCOUNT_NAME_EN, C.ACCOUNT_NAME_VN, C.IS_TITLE , C.DISPLAY_ORD
from sml_ca ca
join SML_FIN_ST st on (ca.id=ST.CA_ID and st.deprecated=''N'')
join SML_OPTIMIST_FN_HIGHLIGHT b
        on ST.PARENT_ID=B.STATEMENT_ID
join SML_INDUSTRY_TEMPLATE_OPT c
        on (B.INDICATOR_ID=C.ALIAS and ST.STATEMENT_TYPE=C.TEMPLATE)        
where ca.id=@CA_ID and to_char(ST.FIN_YEAR_END,''YYYY'')= to_char((select max(FIN_YEAR_END) from SML_FIN_ST where ca_id=@CA_ID and deprecated=''N''),''YYYY'')) m
left join (select distinct ca_number,ST.FIN_YEAR_END, ST.NO_MONTH, ST.REMARKS, B.INDICATOR_ID,
decode(B.VALUE_TYPE,''Currency'',FUNC_FORMAT_CCY(to_number(B.INDICATOR_VALUE)/st.unit,b.CURRENCY),
 ''Numeric'',case when (round(B.INDICATOR_VALUE,2)>0 and round(B.INDICATOR_VALUE,2) <1) then to_char(''0''||round(B.INDICATOR_VALUE,2)) else to_char(round(B.INDICATOR_VALUE,2)) end ,B.INDICATOR_VALUE)VALUE1,
 C.ACCOUNT_NAME_EN, C.ACCOUNT_NAME_VN, C.IS_TITLE , C.DISPLAY_ORD
from sml_ca ca
join SML_FIN_ST st on (ca.id=ST.CA_ID and st.deprecated=''N'')
join SML_OPTIMIST_FN_HIGHLIGHT b
        on ST.PARENT_ID=B.STATEMENT_ID
join SML_INDUSTRY_TEMPLATE_OPT c
        on (B.INDICATOR_ID=C.ALIAS and ST.STATEMENT_TYPE=C.TEMPLATE)        
where ca.id=@CA_ID and to_char(ST.FIN_YEAR_END,''YYYY'')= to_char((select max(FIN_YEAR_END) from SML_FIN_ST where ca_id=@CA_ID and deprecated=''N''),''YYYY'')-1) n
on m.INDICATOR_ID=n.INDICATOR_ID
left join (select distinct ca_number,ST.FIN_YEAR_END, ST.NO_MONTH, ST.REMARKS, B.INDICATOR_ID,
decode(B.VALUE_TYPE,''Currency'',FUNC_FORMAT_CCY(to_number(B.INDICATOR_VALUE)/st.unit,b.CURRENCY),
 ''Numeric'',case when (round(B.INDICATOR_VALUE,2)>0 and round(B.INDICATOR_VALUE,2) <1) then to_char(''0''||round(B.INDICATOR_VALUE,2)) else to_char(round(B.INDICATOR_VALUE,2)) end ,B.INDICATOR_VALUE)VALUE1,
 C.ACCOUNT_NAME_EN, C.ACCOUNT_NAME_VN, C.IS_TITLE , C.DISPLAY_ORD
from sml_ca ca
join SML_FIN_ST st on (ca.id=ST.CA_ID and st.deprecated=''N'')
join SML_OPTIMIST_FN_HIGHLIGHT b
        on ST.PARENT_ID=B.STATEMENT_ID
join SML_INDUSTRY_TEMPLATE_OPT c
        on (B.INDICATOR_ID=C.ALIAS and ST.STATEMENT_TYPE=C.TEMPLATE)        
where ca.id=@CA_ID and to_char(ST.FIN_YEAR_END,''YYYY'')= to_char((select max(FIN_YEAR_END) from SML_FIN_ST where ca_id=@CA_ID and deprecated=''N''),''YYYY'')-2) k
on m.INDICATOR_ID=k.INDICATOR_ID
order by m.DISPLAY_ORD', 'ACCOUNT_NAME_VN,INDICATOR_ID, VALUE1, DISPLAY_ORD, VALUE2,VAUE3', 30, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Total Coll PL', NULL, 'S', 
    'select GET_FCCY(sum(HELD_AMOUNT),''USD'') PL_HELD_BASE,
GET_FCCY(sum(EXISTING_VALUE),''USD'') PL_APR_BASE,
GET_FCCY(sum(PROPOSED_VALUE),''USD'') PL_PRO_BASE
FROM(
SELECT DISTINCT A.COLLATERAL_NO, 
nvl(FOREX_MANAGER.CONVERT_TO_BASE(a.PROPOSED_VALUE,a.PROPOSED_VALUE_CCY_ID),0)/1000000 PROPOSED_VALUE, 
nvl(FOREX_MANAGER.CONVERT_TO_BASE(a.EXISTING_VALUE,a.EXISTING_VALUE_CCY_ID),0)/1000000 EXISTING_VALUE,
nvl(FOREX_MANAGER.CONVERT_TO_BASE(a.HELD_AMOUNT,a.HELD_AMOUNT_CCY_ID),0)/1000000 HELD_AMOUNT
FROM SML_COLLATERAL A
JOIN SML_CA_COLLATERAL B ON A.ID=B.COLLATERAL_ID
WHERE B.CA_ID=(select Id from sml_ca where APPRV_MEMO_RISK_CA_ID= @CA_ID) and GET_CHARGE_DK(a.id)=''TRUE''and B.EXISTING_IND<>''Y''
)', 'PL_HELD_BASE,PL_APR_BASE,PL_PRO_BASE', 31, 'N', NULL);
Insert into DEAL_SLIP
   (TMPCODE, TMPNAME, TMPDESC, TMPDESCCHILD, QRTYPE, 
    QRCONTENT, LSTVAR, ORD, LINK_QR, STS)
 Values
   ('ES05CR', 'ES Risk Assessment HO', 'Year label', NULL, 'S', 
    'select to_char(sysdate,''YYYY'') CurYear,to_char(sysdate,''YYYY'')-1 Year1,to_char(sysdate,''YYYY'')-2 year2,to_char(sysdate,''YYYY'')-3 year3,to_char(sysdate,''YYYY'')-4 year4 from dual', 'CURYEAR, YEAR1, YEAR2, YEAR3, YEAR4', 37, 'N', NULL);
COMMIT;
