
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<html>
<head>
	<title>Καταχώρηση &nbsp; εγγράφων &nbsp;ή &nbsp;εκθέσεων &nbsp;που &nbsp;οδήγησαν &nbsp;στον &nbsp;έλεγχο</title>
    <SCRIPT src="timolo.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>
<h3 align="center"> <font color="#0000ff">΄Εγγραφα που οδήγησαν στον έλεγχο </font> </h3>

<p align="center">
<font size="+1"> <b> Παρακαλώ εισάγετε τα στοιχεία που αφορούν τον αριθμό έκθεσης ελέγχου
υπόθεσης ή άλλου εγγράφου, την ημερομηνία και υπηρεσία σύνταξης!
</p>

<br>
<br>

<cfform name="form_num">

<table align="center">

<TR>
<TD>
<b>
Αριθμός &nbsp;έκθεσης &nbsp;ελέγχου &nbsp;υπόθεσης: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_numessay"
validate="integer" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό έκθεσης ελέγχου υπόθεσης!"
required="yes">
</TD>
</TR>
<br>
<TR>

<TH valign="top">
<b>
Ημερομηνία: 
</b>

</TH>
<!---
<TD align="left" style="position:absolute; left:579; top:165">
--->

<TD valign="top">
<cfinput type="datefield" name="new_numdate" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ημερομηνία!"
mask="dd/mm/yyyy"
required="yes">
</TD>

</TR>
<TR>
<!---
<TD align="center" style="position:absolute; left:437; top:190">
--->
<TD align="center">
<b>
Υπηρεσία &nbsp; σύνταξης:
</b>
</TD>
<TD>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfselect name="new_essayextra" required="Yes" multiple="no" 
message="Επιλέξτε μια Περιφερειακή Διεύθυνση!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="100"> Κεντρική Υπηρεσία </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΑΤΤΙΚΗΣ"> Π.Δ. &nbsp;&nbsp; Αττικής </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΚΕΝΤΡΙΚΗΣ ΜΑΚΕΔΟΝΙΑΣ"> Π.Δ. &nbsp;&nbsp;Κεντρικής Μακεδονίας </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΑΝΑΤ.ΜΑΚΕΔΟΝΙΑΣ - ΘΡΑΚΗΣ"> Π.Δ. &nbsp;&nbsp;Ανατολικής Μακεδονίας - Θράκης </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΔΥΤΙΚΗΣ ΜΑΚΕΔΟΝΙΑΣ"> Π.Δ. &nbsp;&nbsp;Δυτικής Μακεδονίας </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΗΠΕΙΡΟΥ"> Π.Δ. &nbsp;&nbsp;Ηπείρου </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΘΕΣΣΑΛΙΑΣ"> Π.Δ. &nbsp;&nbsp;Θεσσαλίας </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΙΟΝΙΩΝ ΝΗΣΩΝ"> Π.Δ. &nbsp;&nbsp;Ιονίων Νήσων </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΔΥΤΙΚΗΣ ΕΛΛΑΔΑΣ"> Π.Δ. &nbsp;&nbsp;Δυτικής Ελλάδας </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΣΤΕΡΕΑΣ ΕΛΛΑΔΑΣ"> Π.Δ. &nbsp;&nbsp;Στερεάς Ελλάδας </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΠΕΛΟΠΟΝΝΗΣΟΥ"> Π.Δ. &nbsp;&nbsp;Πελοποννήσου </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΒΟΡΕΙΟΥ ΑΙΓΑΙΟΥ"> Π.Δ. &nbsp;&nbsp;Βορείου Αιγαίου </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΝΟΤΙΟΥ ΑΙΓΑΙΟΥ"> Π.Δ. &nbsp;&nbsp;Νοτίου Αιγαίου </option>
<option value="ΠΕΡΙΦΕΡΕΙΑΚΗ Δ/ΝΣΗ ΚΡΗΤΗΣ"> Π.Δ. &nbsp;&nbsp;Κρήτης </option>
</cfselect>

</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;

<br>
<br>
<br>

<INPUT Type="button" value="Αποθήκευση & Κλείσιμο" onclick="exclose_numnew();"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>

</TR>

</table>

</cfform>

</body>
</html>
