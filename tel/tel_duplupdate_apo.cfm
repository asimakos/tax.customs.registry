<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfset REQUEST.oldlocale=SetLocale("German (Standard)")>

<cfset REQUEST.use=cookie.per>

<cftransaction action="BEGIN">

<cfset mytext1=ArrayNew(1)>
<cfset mytext2=ArrayNew(1)>
<cfset mytext3=ArrayNew(1)>

<cfset REQUEST.updata1=#Trim(FORM.outdata1)#>
<cfset REQUEST.updata2=#Trim(FORM.outdata2)#>
<cfset REQUEST.updata3=#Trim(FORM.outdata3)#>

<cfset mytext1=REQUEST.updata1.split("[*]+")>
<cfset mytext2=REQUEST.updata2.split("[*]+")>
<cfset mytext3=REQUEST.updata3.split("[*]+")>

<cfscript>

for(i=1;i<ArrayLen(mytext1);i++){
if (Len(mytext1[i])==0)
  mytext1[i]="-";
}

for(i=1;i<ArrayLen(mytext2);i++){
if (Len(mytext2[i])==0)
  mytext2[i]="-";
}

for(i=1;i<ArrayLen(mytext3);i++){
if (Len(mytext3[i])==0)
  mytext3[i]="-";
}

</cfscript>

<!---
<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
--->

<CFSTOREDPROC 
procedure="update_history_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg_epwnymia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_titlos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[2])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_afm" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_doy" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_odos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[3])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ar" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[4])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_taxk" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_poli" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[6])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_country" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[7])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ergasia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[8])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_smuggle" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[9])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_legal_st" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[10])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_period" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[1])#">

<!---
<CFPROCParam 
type="In" 
dbvarname="@Arg_tax_duty" maxlength="10" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_fine" maxlength="20" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(mytext3[2])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_sum_fine"  maxlength="20" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(mytext3[3])#">
--->

<CFPROCParam 
type="In" 
dbvarname="@Arg_num_id" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(mytext2[3])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_comments" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[4])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_apotelesma" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[4])#">


<CFPROCParam 
type="In" 
dbvarname="@Arg_id_perif" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[2])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_date"   
cfsqltype="CF_SQL_DATE" 
value="#mytext3[2]#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_remark" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[3])#">


<CFPROCParam 
type="In" 
dbvarname="@Arg_article" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_elegxos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[6])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_exnumid" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_nomikoafm" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element_nomiko)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_excuse" maxlength="5000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.excuse)#">

</CFSTOREDPROC>

<!---
<cfelse>

<CFSTOREDPROC 
procedure="update_history_smuggler_user" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg_epwnymia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_titlos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[2])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_afm" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_doy" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_odos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[3])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ar" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[4])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_taxk" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_poli" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[6])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_country" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[7])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_ergasia" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[8])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_smuggle" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[9])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_legal_st" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext1[10])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_period" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[1])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_num_id" maxlength="100"  
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(mytext2[3])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_comments" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[4])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_apotelesma" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[4])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_perif" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[2])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_username" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_date"   
cfsqltype="CF_SQL_DATE" 
value="#mytext3[2]#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_remark" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[3])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_article" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_elegxos" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext3[6])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_exnumid" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(mytext2[5])#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_nomikoafm" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element_nomiko)#">

</CFSTOREDPROC>

</cfif>
--->

<CFSTOREDPROC 
procedure="update_dupl_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg_index" maxlength="10" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element_id)#">

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
value="#Trim(FORM.element)#">

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
dbvarname="@Arg_apotelesma" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.apotel)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg_id_perif" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.per)#">

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

</cftransaction>

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Αποτελέσματα &nbsp; Ενημέρωσης &nbsp; ΔΙΠΛΩΝ &nbsp; ΕΓΓΡΑΦΩΝ &nbsp; Λαθρεμπόρων </title>
</head>

<body>
<cflayout name="thelayout" type="vbox">
<cflayoutarea style="height:400;">
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
<a href="telmain.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; <a href="tel_find.cfm"> Ενημέρωση &nbsp; ΔΙΠΛΩΝ &nbsp; ΕΓΓΡΑΦΩΝ &nbsp; Λαθρεμπόρων </a>
</font>
</p>
<br>
<br>

<cfoutput>
<cfif #insertstatus# EQ 0>
<p align="center"><font style="Arial"><b>Το στοιχείο με επώνυμο ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ λαθρέμπορου &nbsp;&nbsp;#FORM.epwnymia# &nbsp;&nbsp;ενημερώθηκε επιτυχώς!</b></font></p>
<cfelse>
<p align="center"><font style="Arial"><b>Το στοιχείο με επώνυμο ΔΙΠΛΗΣ ΕΓΓΡΑΦΗΣ λαθρέμπορου #FORM.epwnymia# <h2> δεν </h2> ενημερώθηκε επιτυχώς!</b></font></p>
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


