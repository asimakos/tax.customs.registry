
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
procedure="daterange_receive" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_daterange_receive" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

</cftransaction>

<cfelse>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="daterange_receive" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_daterange_receive" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

<!---
<CFSTOREDPROC 
procedure="daterange_receive_perif" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.perif)#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_daterange_receive_perif" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.perif)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>
--->

</cftransaction>

</cfif>
</cfoutput>
<html>
<head>
   
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Ημερομηνία &nbsp;Ληπτών &nbsp; Τιμολογίων &nbsp; (Αποτελέσματα)  </title>
	
</head>

<body>

<cflayout name="thelayout" type="border">
<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>


<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
<a href="main.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; <a href="n_date.cfm"> Αναζήτηση ληπτών τιμολογίων κατά Ημερομηνία </a>
 &nbsp; /  &nbsp; Αποτελέσματα ληπτών τιμολογίων κατά Ημερομηνία </font>
</p>

<br>
<br>

<STYLE>

TH {font-family:arial;font-size:14;background:navy;color:white}
TD {font-family:arial;font-size:14}
TD.DataA {background:silver;color:black}
TD.DataB {background:lightgrey;color:black}

</STYLE>



<cfif #ndaterange.recordcount# GT 0> 
<cfoutput>
<p align="center">
<font size="+1">
<b>ΑΠΟΤΕΛΕΣΜΑΤΑ &nbsp; ΗΜΕΡΟΜΗΝΙΑΣ  &nbsp; ΑΠΟ &nbsp; &nbsp;</b> #DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")# &nbsp; &nbsp; <b>ΕΩΣ &nbsp;</b>
&nbsp; #DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#
</font>
</p>
</cfoutput>
<br>

<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός εγγραφών &nbsp; &nbsp;#ndaterange.recordcount#</p>
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
<TH> ΑΝΑΦΟΡΑ </TH>
</TR>

<cfloop query="ndaterange">
<cfset Class= IIF(ndaterange.CurrentRow MOD 2 EQ 0,"'DataA'","'DataB'")>

<cfoutput>
<TR>

<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #r_afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #taxk# </TD>
<TD class="#Class#"> #poli# </TD>
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(ndaterange.username)# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #username# </TD>
</cfif> 
<TD class="#Class#"> #ergasia# </TD>
<TD class="#Class#">


<cfif #Trim(form.perif)# EQ "100">

<cftooltip tooltip="Μορφή Flash">
<a href="ndaterange.cfm?id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#">
<img src="../plasta/images/f_image.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>
&nbsp;
<cftooltip tooltip="Μορφή xls">
<a href="p4_daterange.cfm?id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#">
<img src="../plasta/images/xls_image.jpg" border="1" width="30" height="30" hspace="35">
</a>
</cftooltip>

<cfelse>

<cftooltip tooltip="Μορφή Flash">
<a href="nn_daterange.cfm?id1=id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#&amp;id3=#form.perif#">
<img src="../plasta/images/f_image.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>
&nbsp;
<cftooltip tooltip="Μορφή xls">
<a href="p5_daterange.cfm?id1=#Trim(r_afm)#&amp;id2=#Trim(date_id)#&amp;id3=#form.perif#">
<img src="../plasta/images/xls_image.jpg" border="1" width="30" height="30" hspace="35">
</a>
</cftooltip>
</cfif>

</TD>
</TR>

</cfoutput>
</cfloop>

</table>
<cfelse>
<cfoutput>
<p align="center">
<font size="+1">
<h3>Δεν &nbsp;υπάρχουν</h3>
<br>
<b>ΑΠΟΤΕΛΕΣΜΑΤΑ &nbsp; ΗΜΕΡΟΜΗΝΙΑΣ  &nbsp; ΑΠΟ &nbsp; &nbsp;</b> #DateFormat(LsParseDateTime(form.date1),"dd/mm/yyyy")# &nbsp; &nbsp; <b>ΕΩΣ &nbsp;</b>
&nbsp; #DateFormat(LsParseDateTime(form.date2),"dd/mm/yyyy")#
</font>
<br>
<br>
</cfoutput>
</cfif>

<br>
<br>

<cfif #dupl_afm.recordcount# GT 0>
<p align="center"><font style="Arial"><b>Επίσης, υπάρχουν &nbsp;ΔΙΠΛΟΙ &nbsp; λήπτες τιμολογίων που  πληρούν τα παραπάνω κριτήρια!</b></font></p>
<br>

<table align="center">

<TR>
<TD>
<cfoutput>
<p align="center"> Αριθμός εγγραφών &nbsp; &nbsp;#dupl_afm.recordcount#</p>
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
<TH> ΑΝΑΦΟΡΑ </TH>
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

<cfif #Trim(form.perif)# EQ "100">

<cftooltip tooltip="Εμφάνιση Flash">
<a href="n_duplreport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/report.jpg" width="30" height="30" border="1" hspace="15"> 
</a> 
</cftooltip>
&nbsp;
<cftooltip tooltip="Εμφάνιση xls">
<a href="nx_dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/xls_image.jpg" width="30" height="30" border="1" hspace="35"> 
</a> 
</cftooltip>

<cfelse>

<cftooltip tooltip="Εμφάνιση Flash">
<a href="n_dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/report.jpg" width="30" height="30" border="1" hspace="15"> 
</a> 
</cftooltip>
&nbsp;
<cftooltip tooltip="Εμφάνιση xls">
<a href="nx_dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/xls_image.jpg" width="30" height="30" border="1" hspace="35"> 
</a> 
</cftooltip>

</cfif>

</TD>
</TR>

</cfoutput>
</cfloop>

</table>
<cfelse>
<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν διπλοί λήπτες τιμολογίων που  επίσης πληρούν τα παραπάνω κριτήρια!</b></font></p>
</cfif>



</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>




<!---
<cflocation url="reportdate.cfm?id1=#form.date1#&amp;id2=#form.date2#">

<cfoutput>

<cfreport format="FlashPaper" template="reportdatem1.cfr">
<cfreportparam name="data1" value="#URL.id1#">
<cfreportparam name="data2" value="#URL.id2#">
</cfreport>

</cfoutput>

--->
