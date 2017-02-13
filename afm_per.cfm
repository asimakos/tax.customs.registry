<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>ΑΦΜ ΠΕΙΡΑΜΑΤΙΚΟ!!!</title>
</head>

<body>
<br>
<br>

<STYLE>

TH {font-family:arial;font-size:14;background:navy;color:white}
TD {font-family:arial;font-size:14}
TD.DataA {background:lightblue;color:black}
TD.DataB {background:lightgrey;color:black}

</STYLE>


<cfset REQUEST.afm=#Trim(FORM.t_afm)#>
<cfscript>

objafm=createObject("component","user");
rsafm=objafm.getafm(REQUEST.afm);
</cfscript>


<cfif #rsafm.recordcount# GT 0>
<p align="center"><font style="Arial"><b>Υπάρχει αυτό το ΑΦΜ  στην "ΠΑΛΙΑ" καταχωρημένη λίστα (ACCESS) με τους εκδότες-λήπτες!</b></font></p>
<br>

<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός εγγραφών &nbsp; &nbsp;#rsafm.recordcount#</p>
</cfoutput>
</TD>
</TR>

<TR>
<TH> ΕΠΩΝΥΜΙΑ </TH>
<TH> ΑΦΜ </TH>
<TH> ΟΔΟΣ </TH>
<TH> ΑΡΙΘΜΟΣ </TH>
<TH> ΤΑΧ. ΚΩΔΙΚΟΣ </TH>
<TH> ΠΟΛΗ </TH>
<TH> ΤΥΠΟΣ ΕΡΓΑΣΙΑΣ </TH>
<TH> ΑΝΑΦΟΡΑ </TH>
</TR>

<cfloop query="rsafm">
<cfset Class= IIF(rsafm.CurrentRow MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>

<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #tk# </TD>
<TD class="#Class#"> #poli# </TD>
<!---
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(afm.username)# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #username# </TD>
</cfif>
---> 
<TD class="#Class#"> #drast# </TD>
<TD class="#Class#"> 
<cftooltip tooltip="Εμφάνιση Αναφοράς">
<a href="access.cfm?id1=#Trim(afm)#&id2=#Trim(id_epix)#"> 
<!---
<img src="../plasta/images/report.jpg" width="30" height="30" border="1" hspace="15"> 
--->
<img src="report.jpg" width="30" height="30" border="1" hspace="15">
</a> 
</cftooltip>

</TD>
</TR>

</cfoutput>
</cfloop>

</table>
<cfelse>
<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχει αυτό το ΑΦΜ στην "ΠΑΛΙΑ" καταχωρημένη λίστα (ACCESS) με τους εκδότες-λήπτες!</b></font></p>
</cfif>
<br>

</body>
</html>
