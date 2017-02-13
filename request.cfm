<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfajaxproxy cfc="user" jsclassname="remotedel">

<html>
<head>
	<title>Καταχώρηση &nbsp; αιτήματος &nbsp; μεταβολής &nbsp; ή &nbsp;διαγραφής &nbsp; εκδοτών - ληπτών</title>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>
<br>
<br>
<cfoutput>
<p align="center">
<font size="+1"> <b> Είστε ο χρήστης #cookie.per#, παρακαλώ καταχωρήστε το αίτημά σας στην παρακάτω
φόρμα  για μεταβολή ή διαγραφή εκδότη - λήπτη χρησιμοποιώντας το κουμπί της καταχώρησης. </b></font>
</p>
</cfoutput>
<cfform name="form_request">
<table align="center">
<TR>
<TH>
Περιγραφή &nbsp; Αιτήματος:
</TH>
<br>
<TD>
<TD colspan="2" bgcolor="#ffff00">
<cftextarea name="request" rows="6" cols="55"
wrap="virtual"/>
</TD>

</TD>
</TR>
<br>
<TR>
<TH>
Είδος &nbsp; Αιτήματος:
</TH>
<br>
<br>
<TD>
<cfinput type="Radio" name="type1" value="ΜΕΤΑΒΟΛΗ" checked="Yes"> ΜΕΤΑΒΟΛΗ
&nbsp; &nbsp;
<cfinput type="Radio" name="type1" value="ΔΙΑΓΡΑΦΗ"> ΔΙΑΓΡΑΦΗ
</TD>

</TR>
<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>
<br>
<INPUT Type="button" value="Καταχώρηση" onclick="userrequest();"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>
</TR>
</table>
<cfoutput>
<cfinput type="hidden" name="username" value="#cookie.per#">
</cfoutput>
</cfform>

</body>
</html>
