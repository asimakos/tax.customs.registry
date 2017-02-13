
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<cftransaction action="BEGIN">

<cfquery name="maxid" datasource="plasta">

SELECT MAX(id_epix) AS epix_max
from dupl_publish_receive

</cfquery>

<cfset REQUEST.maxepix=maxid.epix_max>

<cfif Len(REQUEST.maxepix) EQ 0>

<cfset REQUEST.maxepix=1>

<cfelse>

<cfset REQUEST.maxepix=maxid.epix_max+1>

</cfif>

<CFSTOREDPROC 
procedure="insert_duplicate_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.epwnymia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.titlos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg4" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.doy)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg5" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.odos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg6" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ar)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg7" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.taxk)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg8" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.poli)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg9" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ergas)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg10" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.com)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg11" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.per)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg12" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.apotel)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg13" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.country)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg14" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.affair)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg15" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.legal)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_period" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.period)#">

<!---
<CFPROCParam 
type="In" 
dbvarname="@Arg16" maxlength="10" 
cfsqltype="CF_SQL_NUMERIC" 
value="#FORM.n_element#">

<CFPROCParam 
type="In" 
dbvarname="@Arg17" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.value#">

<CFPROCParam 
type="In" 
dbvarname="@Arg18"  maxlength="20" 
cfsqltype="CF_SQL_MONEY"
value="#FORM.fpa#">
--->

<CFPROCParam 
type="In" 
dbvarname="@Arg19" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_date"   
cfsqltype="CF_SQL_DATE" 
value="#FORM.doc_date#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_remark" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.remark)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_article" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.article)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_stoixeia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.stoixeia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_elegxos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.elegxos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_exnumid" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ex_essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_nomikoafm" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm_nomiko)#">


</CFSTOREDPROC>

<CFSET insertstatus=CFSTOREDPROC.StatusCode>

</cftransaction>

<cfelse>

<cftransaction action="BEGIN">

<cfquery name="maxid" datasource="plasta">

SELECT MAX(id_epix) AS epix_max
from dupl_publish_receive

</cfquery>

<cfset REQUEST.maxepix=maxid.epix_max>

<cfif Len(REQUEST.maxepix) EQ 0>

<cfset REQUEST.maxepix=1>

<cfelse>

<cfset REQUEST.maxepix=maxid.epix_max+1>

</cfif>

<CFSTOREDPROC 
procedure="insert_duplicate_receiver_user" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.epwnymia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.titlos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg4" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.doy)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg5" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.odos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg6" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ar)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg7" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.taxk)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg8" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.poli)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg9" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ergas)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg10" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.com)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg11" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.per)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg12" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.apotel)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg13" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.country)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg14" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.affair)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg15" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.legal)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_period" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.period)#">

<!---
<CFPROCParam 
type="In" 
dbvarname="@Arg16" maxlength="10" 
cfsqltype="CF_SQL_NUMERIC" 
value="#FORM.n_element#">

<CFPROCParam 
type="In" 
dbvarname="@Arg17" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.value#">

<CFPROCParam 
type="In" 
dbvarname="@Arg18"  maxlength="20" 
cfsqltype="CF_SQL_MONEY"
value="#FORM.fpa#">
--->

<CFPROCParam 
type="In" 
dbvarname="@Arg19" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_user" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(REQUEST.use)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_date"   
cfsqltype="CF_SQL_DATE" 
value="#FORM.doc_date#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_remark" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.remark)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_article" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.article)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_stoixeia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.stoixeia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_elegxos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.elegxos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_exnumid" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ex_essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_nomikoafm" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm_nomiko)#">

</CFSTOREDPROC>

<CFSET insertstatus=CFSTOREDPROC.StatusCode>

</cftransaction>

</cfif>
</cfoutput>

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Αποτελέσματα &nbsp; Καταχώρησης &nbsp; Διπλών&nbsp;Ληπτών &nbsp; Τιμολογίων</title>
</head>

<body>
<cflayout name="thelayout" type="vbox">
<cflayoutarea style="height:400;">
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="hidden">
<p align="left">
<font size="2">
<a href="main.cfm">
Κεντρικό μενού </a> &nbsp; / <a href="n_insert.cfm">&nbsp; Καταχώρηση &nbsp;διπλών&nbsp;ληπτών &nbsp; τιμολογίων </a> &nbsp; / &nbsp;
Αποτελέσματα διπλών ληπτών τιμολογίων κατά ΑΦΜ
</font>
</p>
<br>
<br>

<cfoutput>
<cfif (#insertstatus# EQ 0)>
<p align="center"><font style="Arial"><b>Το ΑΦΜ ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ με επωνυμία λήπτη &nbsp;&nbsp;#FORM.epwnymia# &nbsp;&nbsp; καταχωρήθηκε επιτυχώς!</b></font></p>
<cfelse>
<p align="center"><font style="Arial"><b>Το ΑΦΜ ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ με επωνυμία λήπτη #FORM.epwnymia#  <h2> δεν </h2> καταχωρήθηκε επιτυχώς!</b></font></p>
</cfif>
</cfoutput>

</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>

</cflayout>
</cflayoutarea>

</cflayout>

</body>
</html>
