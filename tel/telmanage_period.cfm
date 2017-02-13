<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfcontent type="text/html;charset=iso-8859-7">
<html>
<head>
	<title>Καταχώρηση &nbsp; Διαχειριστικών &nbsp; Περιόδων</title>
	<SCRIPT src="tel_timolo.js" charset="iso-8859-7">
	</SCRIPT>
	
</head>

<body>
<br>
<p align="center">
<font size="+1"> <b> Παρακαλώ επιλέξτε μια ή περισσότερες διαχειριστικές περιόδους, εισάγετε
τα αντίστοιχα στοιχεία που αφορούν τους δασμούς και φόρους καθώς και τα πολλαπλά τέλη και πρόστιμα
για κάθε μια περίδο και χρησιμοποιήστε το κουμπί Καταχώρηση για
καθένα από αυτά</b></font>
</p>

<br>
<cfform name="form_period">
<table align="center">

<TR>

<TD>
<b>
Περίοδοι &nbsp;&nbsp;
</b>
<cfselect name="period_date" required="Yes" multiple="no" 
message="Επιλέξτε μια Περίοδο!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="1/1/2000-31/12/2000"> 1/1/2000-31/12/2000 </option>
<option value="1/1/2001-31/12/2001"> 1/1/2001-31/12/2001 </option>
<option value="1/1/2002-31/12/2002"> 1/1/2002-31/12/2002 </option>
<option value="1/1/2003-31/12/2003"> 1/1/2003-31/12/2003 </option>
<option value="1/1/2004-31/12/2004"> 1/1/2004-31/12/2004 </option>
<option value="1/1/2005-31/12/2005"> 1/1/2005-31/12/2005 </option>
<option value="1/1/2006-31/12/2006"> 1/1/2006-31/12/2006 </option>
<option value="1/1/2007-31/12/2007"> 1/1/2007-31/12/2007 </option>
<option value="1/1/2008-31/12/2008"> 1/1/2008-31/12/2008 </option>
<option value="1/1/2009-31/12/2009"> 1/1/2009-31/12/2009 </option>
<option value="1/1/2010-31/12/2010"> 1/1/2010-31/12/2010 </option>
</cfselect>

</TD>
<TD>
</TD>
</TR>

<TR>
<TD><b>
Δασμοί - Φόροι: &nbsp; 
</b>
<cfinput type="text" name="tax" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για δασμούς-φόρους!"
validate="integer"
required="yes"
maxlength="10">

</TD>

<TD width="650"><b>
Πολλαπλά τέλη - Πρόστιμα: &nbsp;
</b>
<cfinput type="text" name="fine" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πολλαπλά τέλη-πρόστιμα!"
validate="integer"
required="yes"
maxlength="10">

</TD>

</TR>

<TR>
<TD align="center" width="3500">
<b>
Διαχειριστικές &nbsp; &nbsp; περίοδοι: &nbsp;
</b>
<cftextarea name="results" cols="90" rows="5" 
multiple="yes" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για διαχειριστική περίοδο!"
wrap="virtual"/> 

</TD>
</TR>

<TR>

<TD colspan="5" align="center">
<br>

<INPUT Type="button" value="Καταχώρηση στοιχείου" onclick="save_period();"> &nbsp; &nbsp;
<INPUT Type="button" value="Αποθήκευση & Κλείσιμο" onclick="close_period();">

</TD>
</TR>
</table>

</cfform>

</body>
</html>

