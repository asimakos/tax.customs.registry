<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">
<cfajaxproxy cfc="user" jsclassname="remotedel">

<html>
<head>
    <title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Εμφάνιση &nbsp;Εκδοτών&nbsp;  Τιμολογίων</title>
	<SCRIPT src="timolo.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="extranew.js" charset="iso-8859-7">
	</SCRIPT>
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
Κεντρικό μενού </a> &nbsp; / &nbsp; Διαγραφή εκδοτών τιμολογίων κατά ΑΦΜ
</font>
</p>
<br>

<p align="center">
<font size="+1">
<b>
Παρακαλώ εισάγετε τα στοιχεία χρήστη προκειμένου να αποχτήσει δικαιώματα
διαγραφής εκδοτών! Συμπληρώστε την <a href="javascript:void(0);" onclick="open_request();"> <b>φόρμα </b></a> για αποστολή των απαιτούμενων
στοιχείων στην κεντρική υπηρεσία. 
</b>
</font>
<br>
<br>
<cfform name="dellogin">
<table bgcolor="#FFFF80">
<tr>
<td>Όνομα &nbsp; χρήστη: &nbsp;</td>
<td><cfinput type="Text" name="deluser"></td>
</tr>
<tr>
<td>Κωδικός &nbsp; χρήστη: &nbsp;</td>
<td><cfinput type="Password" name="delpass"></td>
</tr>
</table>
<br>
<cfinput type="button" name="del" value="'Ελεγχος" onclick="userdelete();">
&nbsp;&nbsp;&nbsp;
<INPUT Type="button" value="Καθαρισμός" onClick="clear_del();">
</cfform>
</p>
<br>
<br>

<div id="data2" style="visibility:hidden">
<p align="center">
Παρακαλώ ανοίξτε την <a href="javascript:void(0);" onclick="open_manipulate();"> φόρμα </a> για επεξεργασία αιτημάτων των περιφερειακών διευθύνσεων
<br>
<br>
<cfform name="form_afm" action="delete.cfm" method="post">
<font face="Arial" size="3">
Εισαγωγή &nbsp; ΑΦΜ:&nbsp;
</font>
<cfinput type="text" 
name="t_afm" 
onFocus="set_Color();"
onBlur="setold_Color();"
Message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!" 
Validate="integer"
Required="Yes"
maxlength="10">
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<INPUT Type="submit" value="Αναζήτηση"> 
&nbsp;
&nbsp;
<INPUT Type="button" value="Καθαρισμός" onClick="clear_afm();">
</cfform>
</p>
</div>
</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
