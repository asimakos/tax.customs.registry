<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfcontent type="text/html;charset=iso-8859-7">
 
<html>
<head>
<title>Καταχώρηση - Επιλογή &nbsp; Αντικειμένων &nbsp; Λαθρεμπορίας </title>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
</SCRIPT>	
</head>

<body>

<br>
<p align="center">
<font size="+1"> <b> Παρακαλώ επιλέξτε ένα αντικείμενο ή περισσότερα από την αντίστοιχη λίστα όπου εμφανίζονται</b></font>
</p>

<br>
<br>

<STYLE>

TH {font-family:arial;font-size:smaller;background:navy;color:white}
TD {font-family:arial;font-size:smaller}
TD.DataA {background:silver;color:black}
TD.DataB {background:lightgrey;color:black}

</STYLE>

<cfform name="form_items">
<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός αντικειμένων λαθρεμπορίας &nbsp; &nbsp;11</p>
</cfoutput>
</TD>
</TR>

<TR>
<TH> ΕΠΙΛΟΓΗ </TH>
<TH> ΠΕΡΙΓΡΑΦΗ &nbsp; ΑΝΤΙΚΕΙΜΕΝΩΝ &nbsp; ΛΑΘΡΕΜΠΟΡΙΑΣ </TH>
</TR>

<cfset REQUEST.counter=0>

<cfloop index="i" list="ΕΜΠΟΡΕΥΜΑΤΑ-ΑΝΤΙΚΕΙΜΕΝΑ,ΜΕΤΑΦΟΡΙΚΑ ΜΕΣΑ-ΟΧΗΜΑΤΑ,ΠΛΟΙΑ,ΣΚΑΦΗ-ΑΕΡΟΣΚΑΦΗ,ΟΠΛΑ,ΝΑΡΚΩΤΙΚΑ,ΠΛΕΙΣΤΗΡΙΑ,ΒΙΒΛΙΑ-ΣΤΟΙΧΕΙΑ,Η/Υ,ΦΜ-ΦΤΜ,ΛΟΙΠΑ"  delimiters=",">

<cfset Class= IIF(REQUEST.counter MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>
<TD class="#Class#"> 
<cfinput name="item" type="checkbox" value="#i#" checked="No">
</TD>
<TD class="#Class#"> #i#</TD>
</TR>

<cfset REQUEST.counter=REQUEST.counter+1>

</cfoutput>
</cfloop>

<TR>
<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>

<INPUT Type="button" value="Αποθήκευση &nbsp; Αντικειμένου" onclick="vitems_close();"> &nbsp; &nbsp;

</TD>
</TR>

</table>

</cfform>


</body>
</html>
