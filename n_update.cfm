
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="find_data_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.u_afm)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="find_dupldata_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.u_afm)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

</cftransaction>

<cfelse>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="find_data_user_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.u_afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="find_dupldatauser_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.u_afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

</cftransaction>

</cfif>
</cfoutput>

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Ενημέρωση &nbsp;Ληπτών &nbsp;Τιμολογίων</title>

<SCRIPT src="plasta.js">
	</SCRIPT>
</head>

<body>
<cflayout name="thelayout" type="hbox">
<cflayoutarea style="height:400;">
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
<a href="main.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; Ενημέρωση &nbsp;Ληπτών &nbsp; Τιμολογίων
</font>
</p>

<STYLE>

TH {font-family:arial;font-size:smaller;background:navy;color:white}
TD {font-family:arial;font-size:smaller}
TD.DataA {background:silver;color:black}
TD.DataB {background:lightgrey;color:black}

</STYLE>

<br>
<br>

<cfif cust.recordcount EQ 0>

<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχει το ΑΦΜ αυτό στην λίστα ληπτών! </b></font></p>

<cfelse>

<div align="center"><font style="Arial" size="4"><b>
 ΑΠΟΤΕΛΕΣΜΑΤΑ &nbsp; Λήπτες &nbsp; Τιμολογίων</b></font>
</div>
<br>

<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός εγγραφών &nbsp; &nbsp;#cust.recordcount#</p>
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
<TH> ΗΜΕΡΟΜΗΝΙΑ ΚΑΤΑΧΩΡΗΣΗΣ</TH>
<TH> ΠΕΡΙΦ. ΔΙΕΥΘΥΝΣΗ</TH>
<TH> ΤΥΠΟΣ ΕΡΓΑΣΙΑΣ </TH>
<TH> ΕΠΕΞΕΡΓΑΣΙΑ </TH>
</TR>

<cfloop query="cust">
<cfset Class= IIF(cust.CurrentRow MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>

<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #r_afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #taxk# </TD>
<TD class="#Class#"> #poli# </TD>
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(cust.username)# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #username# </TD>
</cfif> 
<TD class="#Class#"> #ergasia# </TD>
<TD class="#Class#">


<cfif #Trim(REQUEST.use)# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<cftooltip tooltip="Εμφάνιση Φόρμας Επεξεργασίας">
<a href="update_receiver.cfm?id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#">
<img src="../plasta/images/edit.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>

<cfelse>

<cftooltip tooltip="Εμφάνιση Φόρμας Επεξεργασίας">
<a href="update_receiver.cfm?id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#&amp;id3=#Trim(REQUEST.use)#">
<img src="../plasta/images/edit.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>

</cfif>

</TD>
</TR>

</cfoutput>
</cfloop>

</table>

</cfif>

<br>
<br>

<cfif dupl_afm.recordcount EQ 0>
<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν διπλοί λήπτες τιμολογίων που επίσης πληρούν το ΑΦΜ αυτό!</b></font></p>

<cfelse>
<br>
<div align="center"><font style="Arial" size="4"><b>
ΔΙΠΛΕΣ &nbsp; ΕΓΓΡΑΦΕΣ &nbsp; Ληπτών &nbsp; Τιμολογίων</b></font>
</div>
<br>
<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός εγγραφών &nbsp; &nbsp; #dupl_afm.recordcount#</p>
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
<TH> ΗΜΕΡΟΜΗΝΙΑ ΚΑΤΑΧΩΡΗΣΗΣ</TH>
<TH> ΠΕΡΙΦ. ΔΙΕΥΘΥΝΣΗ</TH>
<TH> ΤΥΠΟΣ ΕΡΓΑΣΙΑΣ </TH>
<TH> ΕΠΕΞΕΡΓΑΣΙΑ </TH>
</TR>

<cfloop query="dupl_afm">
<cfset Class= IIF(dupl_afm.CurrentRow MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>
<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #taxk# </TD>
<TD class="#Class#"> #poli# </TD>
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(dupl_afm.username)# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #username# </TD>
</cfif> 
<TD class="#Class#"> #ergasia# </TD>
<TD class="#Class#"> 
<cftooltip tooltip="Εμφάνιση Φόρμας Επεξεργασίας">
<a href="dupl_update_receiver.cfm?id1=#Trim(form.u_afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/edit.jpg" width="30" height="30" border="1" hspace="25"> 
</a> 
</cftooltip>

</TD>
</TR>

</cfoutput>
</cfloop>

</table>
</cfif>

</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>

</cflayout>
</cflayoutarea>
</cflayout>

</body>
</html>
