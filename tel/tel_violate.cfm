<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfset REQUEST.data="plasta">
 
<cfquery name="violate" datasource="#REQUEST.data#">
select * from tel_violation
</cfquery>

<cfcontent type="text/html;charset=iso-8859-7">
 
<html>
<head>
<title>Καταχώρηση - Επιλογή &nbsp; Τελωνειακών &nbsp; Παραβάσεων &nbsp; </title>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
</SCRIPT>	
</head>

<body onload="return Assign_violation();">

<br>
<p align="center">
<font size="+1"> <b> Παρακαλώ επιλέξτε μια παράβαση ή περισσότερες από την αντίστοιχη λίστα όπου εμφανίζονται</b></font>
</p>

<br>
<br>

<STYLE>

TH {font-family:arial;font-size:smaller;background:navy;color:white}
TD {font-family:arial;font-size:smaller}
TD.DataA {background:silver;color:black}
TD.DataB {background:lightgrey;color:black}

</STYLE>

<cfform name="form_violate">
<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός παραβάσεων &nbsp; &nbsp;#violate.recordcount#</p>
</cfoutput>
</TD>
</TR>

<TR>
<TH> ΕΠΙΛΟΓΗ </TH>
<TH> ΠΕΡΙΓΡΑΦΗ &nbsp; ΠΑΡΑΒΑΣΕΩΝ </TH>
</TR>

<cfloop query="violate">
<cfset Class= IIF(violate.CurrentRow MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>
<TD class="#Class#"> 
<cfinput name="viol" type="checkbox" value="#code# #description#" checked="No">
</TD>
<TD class="#Class#"> #code# &nbsp; #description#</TD>
</TR>

</cfoutput>
</cfloop>

<TR>
<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>

<INPUT Type="button" value="Αποθήκευση &nbsp; Παράβασης" onclick="violate_close();"> &nbsp; &nbsp;

</TD>
</TR>

</table>

</cfform>


</body>
</html>

