
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>Καταχώρηση &nbsp; ΑΦΜ &nbsp; Εκδοτών &nbsp; Τιμολογίων</title>
	<SCRIPT src="timolo.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>
<body>
<br>

<cfform name="form_choice">
<p align="center">
<font size="+1">
Παρακαλώ επιλέξτε εάν υπάρχουν εκδότες ή όχι 
για τον συγκεκριμένο λήπτη.
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
<font size="+1"> <b> Παρακαλώ εισάγετε τα ΑΦΜ των εκδοτών ένα κάθε φορά στο αντίστοιχο
πλαίσιο της καταχώρησης και ύστερα χρησιμοποιήστε το κουμπί καταχώρηση για καθένα από αυτά</b></font>
</p>

<br>
<br>
<cfform name="form_afm">
<table align="center">

<TR>
<TD align="left" width="350">
<b>
Εισαγωγή&nbsp; ΑΦΜ &nbsp;Εκδότη:&nbsp;
</b>
<cfinput type="text" name="new_afm" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
required="yes"
maxlength="10">
</TD>
<TD>&nbsp;&nbsp;
<INPUT Type="button" value="Καταχώρηση &nbsp; ΑΦΜ" onclick="nsave_afmtt();">
</TD>
<TD align="right" width="250"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Λίστα &nbsp;ΑΦΜ &nbsp;Εκδοτών
</b>&nbsp;&nbsp;
<cfselect name="l_afm" multiple="yes"></cfselect>

</TD>
</TR>

<TR>
<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>

<INPUT Type="button" value="Αποθήκευση & Κλείσιμο" onclick="close_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="Διαγραφή ΑΦΜ" onclick="delete_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="Καθαρισμός" onclick="clear_afmnew();">
</TD>
</TR>

</table>
<cfinput type="hidden" name="dupl_affair" value=" ">
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
