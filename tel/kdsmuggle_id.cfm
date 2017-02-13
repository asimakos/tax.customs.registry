<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
<title>Καταχώρηση &nbsp; προσωπικών &nbsp; στοιχείων &nbsp; εμπλεκομένων &nbsp;σε &nbsp; λαθρεμπορία</title>
<SCRIPT src="tel_timolo.js" charset="iso-8859-7">
</SCRIPT>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
</SCRIPT>	
</head>

<body bgcolor="#8080FF">

<br>
<p align="center">
<font size="+1"> <b> Παρακαλώ εισάγετε όποια στοιχεία γνωρίζετε και που αφορούν το ΑΦΜ εμπλεκομένου σε λαθρεμπορία, τον
αριθμό δελτίου ταυτότητάς του,τον αριθμό διαβατηρίου του,τον αριθμό κυκλοφορίας του οχήματος του,την εθνικότητά του,
το φύλλο του,την χώρα γέννησής του καθώς και την χώρα διαμονής του
</p>

<cfform name="form_id">

<table align="center">

<TR>
<TD>
<b>
ΑΦΜ: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_afm"
validate="integer" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!">
</TD>
</TR>
<br>

<TR>
<TD>
<b>
Αριθμός &nbsp; Δελτίου &nbsp; Ταυτότητας: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_card"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για Ταυτότητα!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
Αριθμός &nbsp; Διαβατηρίου: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_passport"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για Διαβατήριο!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
Αριθμός &nbsp; Κυκλοφορίας &nbsp; Οχήματος: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_vehicle"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό κυκλοφορίας οχήματος!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
Εθνικότητα: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_nationality"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για εθνικότητα!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
Φύλλο: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfselect name="new_sex" required="Yes" multiple="no" 
message="Επιλέξτε ένα φύλλο!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="ΑΝΔΡΑΣ"> ΑΝΔΡΑΣ </option>
<option value="ΓΥΝΑΙΚΑ"> ΓΥΝΑΙΚΑ </option>
</cfselect>

</TD>
</TR>

<br>
<TR>
<TD>
<b>
Χώρα &nbsp; Γέννησης: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_origin"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για χώρα γέννησης!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
Χώρα &nbsp; Διαμονής: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_stay"
 message="Παρακαλώ εισάγετε μια έγκυρη τιμή για χώρα διαμονής!">
</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;

<br>
<br>
<br>

<INPUT Type="button" value="Αποθήκευση & Κλείσιμο" onclick="kdid_close();"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>

</TR>

</table>
</cfform>
</body>
</html>