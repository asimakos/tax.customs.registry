<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfquery name="deluser" datasource="plasta">

SELECT id FROM valid_user WHERE perif='UPDATE'

</cfquery>

<html>
<head>
	<title>Αιτιολογία &nbsp; Μεταβολής &nbsp; Λαθρεμπόρου</title>
	<SCRIPT src="tel_plasta.js">
	</SCRIPT>
</head>

<body>
<br>
<cfoutput>
<p align="center">
<font size="+1"> <b> Είστε ο χρήστης #deluser.id#, παρακαλώ συμπληρώστε την παρακάτω φόρμα και πατήστε
το κουμπί της μεταβολής. Το όνομά σας θα αποθηκευτεί στο αρχείο καταγραφής. </b></font>
</p>
</cfoutput>
<cfform name="form_excuse">
<table align="center">
<TR>
<TH>
Αιτιολογία &nbsp; Μεταβολής:
</TH>
<br>
<TD>
<TD colspan="2" bgcolor="#00ff00">
<cftextarea name="excu" rows="6" cols="55"
wrap="virtual"/>
</TD>

</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>
<br>
<INPUT Type="button" value="Αποθήκευση" onclick="save_excuse();"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>
</TR>
</table>
</cfform>

</body>
</html>
