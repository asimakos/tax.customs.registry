
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<cfcontent type="text/html;charset=iso-8859-7">
<cfset REQUEST.use=cookie.per>
<html>
<head>
    <title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Αριθμός &nbsp; εκθέσεων &nbsp; ελέγχου &nbsp; υπόθεσης &nbsp; εκδοτών </title>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
	
</head>

<body>
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="hidden">
<p align="left">
<font size="2">
<a href="main.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; Αναζήτηση εκδοτών τιμολογίων με αριθμό εκθέσεων ελέγχου υπόθεσης
</font>
</p>


<cfform name="date_sel" action="reportessay.cfm" method="post" onsubmit="return date_select();">
<table bgcolor="#00ffff">
<TR>
<TH><font size="+1">Αριθμός &nbsp; έκθεσης </font> </TH>
<TD>
<cfinput type="text" name="num_essay" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τον αριθμό έκθεσης!"
validate="integer"
required="no"
maxlength="6">
</TD>
</TR>
<TR>
<TH> <font size="+1">Υπηρεσία &nbsp; σύνταξης &nbsp; εγγράφου &nbsp; εκδότη: </font> </TH>
<TD>
<cfoutput>
<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
 <cfselect name="perif" required="Yes" multiple="no"
message="Επιλέξτε μια Περιφερειακή Διεύθυνση!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="100"> ΕΠΙΚΡΑΤΕΙΑ </option>
<!---
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
--->
</cfselect>
<cfelse>
<cfselect name="perif" required="Yes" multiple="no"
message="Επιλέξτε μια Περιφερειακή Διεύθυνση!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="100"> ΕΠΙΚΡΑΤΕΙΑ </option>
<!---
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
--->
</cfselect>
<!---
<cfselect name="perif" required="Yes" multiple="no"
message="Επιλέξτε μια Περιφερειακή Διεύθυνση!" size="1" width="400">
<option value=" "> Επιλογή: </option>
<option value="#REQUEST.use#"> #REQUEST.use# </option>
</cfselect>
--->
</cfif>
</cfoutput>
</TD>
</TR>

<TR>
<BR>
<TH valign="top">
<font size="+1">
Διάστημα &nbsp;ημερομηνίας &nbsp;σύνταξης &nbsp;εγγράφου &nbsp;εκδότη:&nbsp;&nbsp;
</font>
</TH>

<TD valign="top"> 
<cfinput type="datefield" name="date1" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ημερομηνία!"
mask="dd/mm/yyyy"
required="yes">
<!---
<cf_uicalendar  
               formfield="data1"
			   width="200"
			   height="200"
			   popup="no"
			   submitcontrols="yes"
			   required="yes"
			   message="Παρακαλώ επιλέξτε μια ημερομηνία!">

			  
<p align="center">		  
<b>από:</b> 
</p>	
---> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>μέχρι</b>
&nbsp;&nbsp;
</TD>

<TD valign="top">
<!---
<cf_uicalendar  
               formfield="data2"
			   width="200"
			   height="200"
			   popup="no"
			   submitcontrols="yes"
			   required="yes"
			   message="Παρακαλώ επιλέξτε μια ημερομηνία!">
--->
<cfinput type="datefield" name="date2" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ημερομηνία!"
mask="dd/mm/yyyy"
required="yes">
</TD>

</TR>
</table>
<BR>
<table>
<TR>
<TD width="100" bgcolor="#0000ff" align="center">
<input type="Submit" name="submitcode" value="Αναζήτηση">
</TD>
</TR>
</table>
</cfform>


</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
