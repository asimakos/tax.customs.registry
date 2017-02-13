<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<cfif not Isdefined("FORM.num_essay")>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="datereport_publish" 
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
procedure="dupl_datereport_publish" 
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
procedure="datereport_publish_num" 
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
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_datereport_publish_num" 
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
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

</cftransaction>

</cfif>

<cfelse>

<cfif not Isdefined("FORM.num_essay")>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="datereport_publish" 
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
procedure="dupl_datereport_publish" 
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
procedure="datereport_publish_perif" 
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
procedure="dupl_datereport_publish_perif" 
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

<cfelse>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="datereport_publish_num" 
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
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_datereport_publish_num" 
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
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>

<!---
<CFSTOREDPROC 
procedure="datereport_publish_perif_num" 
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

<CFPROCParam 
type="In" 
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="ndaterange">
</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="dupl_datereport_publish_perif_num" 
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

<CFPROCParam 
type="In" 
dbvarname="@Arg_numessay" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(Form.num_essay)#">

<cfprocresult name="dupl_afm">
</CFSTOREDPROC>
--->

</cftransaction>

</cfif>

</cfif>
</cfoutput>
<html>
<head>
   
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Ημερομηνία &nbsp;Εκδοτών &nbsp; Τιμολογίων &nbsp; (Αποτελέσματα)  </title>
	
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
Κεντρικό μενού </a> &nbsp; / &nbsp; <a href="essay.cfm"> Αναζήτηση εκδοτών τιμολογίων με αριθμό εκθέσεων ελέγχου υπόθεσης </a>
 &nbsp; /  &nbsp; Αποτελέσματα εκδοτών τιμολογίων με αριθμό εκθέσεων ελέγχου υπόθεσης </font>
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
<br>
</cfoutput>
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

<cfset  REQUEST.nameid=#Trim(num_id)#>
<cfset  REQUEST.nameid_part=REQUEST.nameid.split("-")>

<TR>
<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #p_afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #taxk# </TD>
<TD class="#Class#"> #poli# </TD>
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(REQUEST.nameid_part[3])# EQ "100">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #Trim(REQUEST.nameid_part[3])# </TD>
</cfif> 
<TD class="#Class#"> #ergasia# </TD>
<TD class="#Class#">

<cfif #Trim(form.perif)# EQ "100">

<cftooltip tooltip="Μορφή Flash">
<a href="daterange.cfm?id1=#Trim(p_afm)#&amp;id2=#Trim(date_id)#">
<img src="../plasta/images/f_image.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>
&nbsp;
<cftooltip tooltip="Μορφή xls">
<a href="p2_daterange.cfm?id1=#Trim(p_afm)#&amp;id2=#Trim(date_id)#">
<img src="../plasta/images/xls_image.jpg" border="1" width="30" height="30" hspace="25">
</a>
</cftooltip>

<cfelse>
<cftooltip tooltip="Μορφή Flash">
<a href="n_daterange.cfm?id1=#Trim(p_afm)#&amp;id2=#Trim(date_id)#&amp;id3=#form.perif#">
<img src="../plasta/images/f_image.jpg" border="1" width="30" height="30" hspace="15">
</a>
</cftooltip>
&nbsp;
<cftooltip tooltip="Μορφή xls">
<a href="p3_daterange.cfm?id1=#Trim(p_afm)#&amp;id2=#Trim(date_id)#&amp;id3=#form.perif#">
<img src="../plasta/images/xls_image.jpg" border="1" width="30" height="30" hspace="25">
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
<p align="center"><font style="Arial"><b>Επίσης, υπάρχουν &nbsp;ΔΙΠΛΟΙ &nbsp; εκδότες τιμολογίων που  πληρούν τα παραπάνω κριτήρια!</b></font></p>
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

<cfset  REQUEST.duplnameid=#Trim(num_id)#>
<cfset  REQUEST.duplnameid_part=REQUEST.duplnameid.split("-")>

<TR>

<TD class="#Class#"> #epwnymia# </TD>
<TD class="#Class#"> #afm# </TD>
<TD class="#Class#"> #odos# </TD>
<TD class="#Class#"> #ar# </TD>
<TD class="#Class#"> #taxk# </TD>
<TD class="#Class#"> #poli# </TD>
<TD class="#Class#"> #DateFormat(date_id,"dd/mm/yyyy")# </TD>
<cfif #Trim(REQUEST.duplnameid_part[3])# EQ "100">
<TD class="#Class#"> ΚΕΝΤΡΙΚΗ  ΥΠΗΡΕΣΙΑ </TD>
<cfelse>
<TD class="#Class#"> #Trim(REQUEST.duplnameid_part[3])# </TD>
</cfif> 
<TD class="#Class#"> #ergasia# </TD>
<TD class="#Class#">

<cfif #Trim(form.perif)# EQ "100">
<cftooltip tooltip="Εμφάνιση Flash">
<a href="duplreport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/report.jpg" width="30" height="30" border="1" hspace="15"> 
</a> 
</cftooltip>
&nbsp;
<cftooltip tooltip="Εμφάνιση xls">
<a href="x_dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/xls_image.jpg" width="30" height="30" border="1" hspace="35"> 
</a> 
</cftooltip>

<cfelse>

<cftooltip tooltip="Εμφάνιση Flash">
<a href="dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
<img src="../plasta/images/report.jpg" width="30" height="30" border="1" hspace="15"> 
</a> 
</cftooltip>
&nbsp;
<cftooltip tooltip="Εμφάνιση xls">
<a href="x_dupldatereport.cfm?id1=#Trim(afm)#&amp;id2=#Trim(id_epix)#"> 
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
<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν διπλοί εκδότες τιμολογίων που  επίσης πληρούν τα παραπάνω κριτήρια!</b></font></p>
</cfif>


</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
