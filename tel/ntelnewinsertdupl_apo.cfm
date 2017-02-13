
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<CFSTOREDPROC 
procedure="insert_duplicate_culprit" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg_epwnymia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.epwnymia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_titlos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.titlos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_afm" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_doy" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.doy)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_odos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.odos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ar" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ar)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_taxk" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.taxk)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_poli" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.poli)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_country" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.country)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ergasia" maxlength="300" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ergas)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_smuggle" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.smuggle)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_legal_st" maxlength="100" 
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
dbvarname="@Arg_tax_duty" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.tax#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_fine" maxlength="20" 
cfsqltype="CF_SQL_MONEY"  
value="#FORM.fine#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_sum_fine" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.sum_fine#">
--->

<CFPROCParam 
type="In" 
dbvarname="@Arg_num_id" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR"  
value="#Trim(FORM.essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_comments" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.com)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_apotelesma"  maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(FORM.apotel)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_perif" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.per)#">

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

<cfelse>

<CFSTOREDPROC 
procedure="insert_duplicate_culprit_user" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg_epwnymia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.epwnymia)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_titlos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.titlos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_afm" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_doy" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.doy)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_odos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.odos)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ar" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ar)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_taxk" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.taxk)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_poli" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.poli)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_country" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.country)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ergasia" maxlength="300" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.ergas)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_smuggle" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.smuggle)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_legal_st" maxlength="100" 
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
dbvarname="@Arg_tax_duty" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.tax#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_fine" maxlength="20" 
cfsqltype="CF_SQL_MONEY"  
value="#FORM.fine#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_sum_fine" maxlength="20" 
cfsqltype="CF_SQL_MONEY" 
value="#FORM.sum_fine#">
--->

<CFPROCParam 
type="In" 
dbvarname="@Arg_num_id" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR"  
value="#Trim(FORM.essay)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_comments" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.com)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_apotelesma"  maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(FORM.apotel)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_perif" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.per)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_username" maxlength="100"  
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

</cfif>
</cfoutput>

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Αποτελέσματα &nbsp; Καταχώρησης  &nbsp; Διπλών &nbsp; Συνυπαιτίου</title>
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
<a href="telmain.cfm">
Κεντρικό μενού </a> &nbsp; / 
<!---
<a href="ntel_insert.cfm">&nbsp; Καταχώρηση &nbsp; Συνυπαιτίου </a> &nbsp; / 
--->
&nbsp; Αποτελέσματα Διπλών Συνυπαιτίων
</font>
</p>

<br>
<br>

<cfoutput>
<cfif (#insertstatus# EQ 0)>
<p align="center"><font style="Arial"><b>Το στοιχείο ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ με επωνυμία Συνυπαιτίου &nbsp;&nbsp;#FORM.epwnymia# &nbsp;&nbsp; καταχωρήθηκε επιτυχώς!</b></font></p>
<cfelse>
<p align="center"><font style="Arial"><b>Το στοιχείο ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ με επωνυμία Συνυπαιτίου #FORM.epwnymia# <h2> δεν </h2> καταχωρήθηκε επιτυχώς!</b></font></p>
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


