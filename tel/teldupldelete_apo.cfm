<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="insert_duplhistory_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="5000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.excuse)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg10" maxlength="20" 
cfsqltype="CF_SQL_NUMERIC" 
value="#Val(FORM.element_id)#">

</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="delete_dupldata_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg30" maxlength="20" 
cfsqltype="CF_SQL_NUMERIC" 
value="#Val(FORM.element_id)#">

</CFSTOREDPROC>

<CFSET insertstatus=CFSTOREDPROC.StatusCode>

</cftransaction>

</cfoutput>

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Επιβεβαίωση &nbsp; διαγραφής &nbsp; ΔΙΠΛΩΝ &nbsp; ΕΓΓΡΑΦΩΝ &nbsp; Λαθρεμπόρου</title>
<SCRIPT src="../plasta.js">
	</SCRIPT>
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
Κεντρικό μενού </a> &nbsp; / &nbsp; <a href="tel_timh.cfm"> Διαγραφή &nbsp; ΔΙΠΛΩΝ &nbsp; ΕΓΓΡΑΦΩΝ &nbsp; Λαθρεμπόρου </a>
</font>
</p>
<br>
<br>

<cfoutput>
<cfif #insertstatus# EQ 0>
<p align="center"><font style="Arial"><b>Το στοιχείο ΔΙΠΛΩΝ ΕΓΓΡΑΦΩΝ Λαθρεμπόρου:&nbsp;&nbsp; #FORM.element# &nbsp;&nbsp;διαγράφτηκε επιτυχώς!</b></font></p>
<cfelse>
<p align="center"><font style="Arial"><b>Το στοιχείο ΔΙΠΛΩΝ ΕΓΓΡΑΦΩΝ Λαθρεμπόρου:&nbsp;&nbsp; #FORM.element# <h2> δεν </h2> διαγράφτηκε επιτυχώς!</b></font></p>
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
