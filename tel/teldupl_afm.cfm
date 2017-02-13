
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>Καταχώρηση &nbsp; Στοιχείων &nbsp; (ΑΦΜ,ΑΔΤ,Διαβατήριο,Αρ.Κυκλ.Οχήματος)&nbsp; ΔΙΠΛΩΝ ΕΓΓΡΑΦΩΝ &nbsp; Συνυπαιτίων</title>
	<SCRIPT src="tel_timolo.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="tel_plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>
<body>
<br>

<cfform name="form_choice">
<p align="center">
<font size="+1">
Παρακαλώ επιλέξτε εάν υπάρχουν συνυπαίτιοι ή όχι 
για τον συγκεκριμένο λαθρέμπορο.
</font>
<br>
<br>
<cfinput type="Checkbox" name="yes1" value="exist" onclick="exist_cul();"> ΥΠΑΡΧΟΥΝ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<cfinput type="Checkbox" name="yes2" value="noexist" onclick="noexist_cul();"> ΔΕΝ ΥΠΑΡΧΟΥΝ
</p>
</cfform>

<br>
<br>
<div id="data2" style="visibility:hidden">
<p align="center">
<font size="+1"> <b> Παρακαλώ εισάγετε όποια στοιχεία ΔΙΠΛΩΝ ΕΓΓΡΑΦΩΝ γνωρίζετε που αφορούν το ΑΦΜ συνυπαιτίου σε λαθρεμπορία, τον
αριθμό δελτίου ταυτότητάς του,τον αριθμό διαβατηρίου του,τον αριθμό κυκλοφορίας του οχήματος του,την εθνικότητά του,
το φύλλο του,την χώρα γέννησής του καθώς και την χώρα διαμονής του και ύστερα χρησιμοποιήστε το κουμπί 
καταχώρηση για όλα αυτά</b></font>
</p>

<br>
<br>
<cfform name="form_afm">
<table align="center">

<TR>
<TD align="left" width="350">
<a href="javascript:void(0);" onclick="kdid_win();">
<b>
Εισαγωγή&nbsp; στοιχείων &nbsp;Συνυπαιτίων:&nbsp;
</b>
</a>
<cftextarea name="new_afm" rows="3" cols="15" 
message="Παρακαλώ εισάγετε τα στοιχεία εμπλεκομένου για λαθρεμπορία!"
required="yes" 
readonly="yes"
wrap="virtual"/> 
</TD>
<TD>&nbsp;&nbsp;
<INPUT Type="button" value="Καταχώρηση &nbsp; Στοιχείων" onclick="duplsave_afm();">
</TD>
<TD align="right" width="250"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Λίστα &nbsp;στοιχείων &nbsp;Συνυπαιτίων
</b>&nbsp;&nbsp;
<cfselect name="l_afm" multiple="yes"></cfselect>

</TD>
</TR>

<TR>
<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>

<INPUT Type="button" value="Αποθήκευση & Κλείσιμο" onclick="close_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="Διαγραφή στοιχείων" onclick="delete_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="Καθαρισμός" onclick="clear_afmnew();">
</TD>
</TR>

</table>
<cfinput type="hidden" name="valid_afm" value=" ">
<cfinput type="hidden" name="dupl_smuggle" value=" ">
<cfinput type="hidden" name="dupl_period" value=" ">
<cfinput type="hidden" name="dupl_doc" value=" ">
<cfinput type="hidden" name="dupl_perif" value=" ">
<cfinput type="hidden" name="dupl_violate" value=" ">
<cfinput type="hidden" name="dupl_description" value=" ">
<cfinput type="hidden" name="dupl_exdoc" value=" ">
<cfinput type="hidden" name="dupl_docdate" value=" ">
</cfform>
</div>

</body>
</html>
