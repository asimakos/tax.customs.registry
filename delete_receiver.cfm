
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<CFSTOREDPROC 
procedure="find_single_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_DATE"  
value="#URL.id2#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<cfelse>

<CFSTOREDPROC 
procedure="find_single_user_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_DATE"  
value="#URL.id2#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

</cfif>
</cfoutput>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Διαγραφή &nbsp;ΕΓΓΡΑΦΩΝ &nbsp;Ληπτών &nbsp; Τιμολογίων</title>

<SCRIPT src="plasta.js" charset="iso-8859-7">
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
Κεντρικό μενού </a> &nbsp; / &nbsp; Διαγραφή &nbsp;ΕΓΓΡΑΦΩΝ &nbsp;Ληπτών &nbsp; Τιμολογίων
</font>
</p>

<br>


<cfif cust.recordcount EQ 0>
<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν ΕΓΓΡΑΦΕΣ Ληπτών Τιμολογίων που πληρούν το ΑΦΜ αυτό!</b></font></p>

<cfelse>

<cfform name="form_data" action="n_delete_apo.cfm" method="post" onsubmit="return delete_data();">
<div align="center"><font style="Arial" size="4"><b>
Διαγραφή &nbsp;ΕΓΓΡΑΦΩΝ &nbsp;Ληπτών &nbsp; Τιμολογίων</b></font>
</div>

<table align="center" bgcolor="#FF8080">
<cfoutput>
<TR>
<TD width="500">
<font style="Arial" size="3">
* Επωνυμία:</font> &nbsp;
<cfinput type="text" name="epwnymia" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για επωνυμία!"
required="no" value="#Trim(cust.epwnymia)#" disabled="disabled" onFocus="set_field1();" onBlur="setold_field1();" > 
</TD>

<TD width="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> Διακριτικός Τίτλος: 
</font>&nbsp;
<cfinput type="text" name="titlos" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τίτλο!"
required="no" value="#Trim(cust.titlos)#" disabled="disabled"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 

<TD align="right" width="400">
<font style="Arial" size="3">* ΑΦΜ:  </font> &nbsp;&nbsp;&nbsp;
<cfinput type="text" name="afm" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
required="no"
value="#Trim(cust.r_afm)#"
disabled="disabled"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
</TD>
</TR>
<TR>

<TD >
<font style="Arial" size="3">* ΔΟΥ: </font> &nbsp;&nbsp;
<cfinput type="text" name="doy" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για Κωδικό ΔΟΥ!"
validate="integer"
required="no"
value="#Trim(cust.id_doy)#"
disabled="disabled"
maxlength="5"
onFocus="set_field4();" onBlur="setold_field4();"> 
</TD>

<TD width="450">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">Οδός:</font>&nbsp;
<cfinput type="text" name="odos" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για οδό!"
required="no"
value="#Trim(cust.odos)#"
disabled="disabled"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Αριθμός: </font> 
<cfinput type="text" name="ar" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό!"
validate="integer"
required="no"
value="#Trim(cust.ar)#"
disabled="disabled"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>

<TR>
<TD >
<font style="Arial" size="3"> Ταχυδρ. κωδικός: </font> 
<cfinput type="text" name="taxk" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ταχυδρομικό κωδικό!"
validate="integer"
required="no"
value="#Trim(cust.taxk)#"
disabled="disabled"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> Πόλη:  </font>&nbsp; 
<cfinput type="text" name="poli" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πόλη!"
required="no"
value="#Trim(cust.poli)#"
disabled="disabled"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>


<TD align="right">
<font style="Arial" size="3">
Χώρα: </font>
<cfinput type="text" name="country" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πόλη!"
required="no"
value="#Trim(cust.country)#"
disabled="disabled"> 
</TD>
</TR>


<TR>
<TD>
<font style="Arial" size="3">* 
Δραστηριότητα:</font>&nbsp;&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τύπο εργασίας!"
required="yes" 
disabled="disabled"
value="#Trim(cust.ergasia)#"
onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 
</TD>
&nbsp;

<TD>&nbsp;&nbsp;
<font style="Arial" size="3"> 
Σχετ.&nbsp;υποθέσεις:</font>&nbsp;
<cftextarea type="text" name="affair" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για σχετικές υποθέσεις!"
required="no"
height="10"
width="5"
value="#Trim(cust.rel_affair)#"
disabled="disabled"/> 
</TD>

<TD align="right" width="450">
<font style="Arial" size="3"> 
Νομ.&nbsp;εκπρόσωπος:</font>
<cftextarea type="text" name="legal" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για νομικό εκπρόσωπο!"
required="no"
height="10"
width="5"
value="#Trim(cust.legal_st)#"
disabled="disabled"/> 
</TD>
</TR>

<TR>

<TD>
<font style="Arial" size="3">Διαχειριστική  &nbsp; Περίοδος:  </font>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="period" rows="5" cols="80" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για διαχειριστική περίοδο!"
required="yes"
disabled="disabled"
value="#Trim(cust.m_period)#"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>
</TD>

<TD width="1100" align="right">
<font style="Arial" size="3"> ΑΦΜ &nbsp; εκπροσώπου: </font>
<cftextarea type="text" name="afm_nomiko" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
disabled="disabled"
height="10"
width="5"
validate="integer"
value="#Trim(cust.afm_nomiko)#"
required="yes"
maxlength="10"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3"> 
Πλήθος&nbsp;στοιχείων:</font>
<cfinput type="text" name="n_element" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό στοιχείων!"
required="no"
value="#Trim(cust.num_elements)#"
disabled="disabled"> 
</TD>

<TD >&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<font style="Arial" size="3"> 
Καθαρή &nbsp;αξία:</font>&nbsp;
<cfinput type="text" name="value" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για καθαρή αξία!"
required="no"
value="#Val(cust.c_value)#"
disabled="disabled"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> 
Ποσό ΦΠΑ:</font>&nbsp;
<cfinput type="text" name="fpa" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΦΠΑ!"
required="no"
value="#Val(cust.vat)#"
disabled="disabled"> 
</TD>
--->

</TR>

<TR>

<TD>
<font style="Arial" size="3"> 
Αριθ. εκθ. ελέγχου υπόθεσης ή άλλου εγγράφου:</font>&nbsp;&nbsp;
<cftextarea name="essay" rows="3" cols="20" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
required="yes"
value="#Trim(cust.num_id)#"
disabled="disabled"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</TD>
&nbsp; &nbsp; 
<TD>
<font style="Arial" size="3">* Κωδ. Περιφερειακής &nbsp; Διεύθυνσης:</font>
<cfinput type="text" name="per"  
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για κωδικό περιφερειακής!"
validate="integer"
required="no"
value="#Trim(cust.id_perif)#"
disabled="disabled"
maxlength="5"
onFocus="set_field11();"
onBlur="setold_field11();"> 
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3"> Λήψη μέτρων άρθρο 14 &nbsp; Ν. 2523/97: &nbsp;</font>
<cfselect name="article" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.article_14)#">
<cfcase value="ΝΑΙ">
<option value="ΝΑΙ" selected="yes"> ΝΑΙ </option>
<option value="ΟΧΙ"> ΟΧΙ </option>
</cfcase>
<cfcase value="ΟΧΙ">
<option value="ΝΑΙ"> ΝΑΙ </option>
<option value="ΟΧΙ" selected="yes"> ΟΧΙ </option>
</cfcase>
</cfswitch>

</cfselect>

</TD>

<TD>
<font style="Arial" size="3"> Είδος &nbsp; ελέγχου: &nbsp;</font>
<cfselect name="elegxos" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.eidos_elegxos)#">
<cfcase value="ΤΑΚΤΙΚΟΣ">
<option value="ΤΑΚΤΙΚΟΣ" selected="yes"> ΤΑΚΤΙΚΟΣ </option>
<option value="ΠΡΟΣΩΡΙΝΟΣ">ΠΡΟΣΩΡΙΝΟΣ </option>
<option value="ΠΡΟΛΗΠΤΙΚΟΣ">ΠΡΟΛΗΠΤΙΚΟΣ </option>
</cfcase>
<cfcase value="ΠΡΟΣΩΡΙΝΟΣ">
<option value="ΤΑΚΤΙΚΟΣ"> ΤΑΚΤΙΚΟΣ </option>
<option value="ΠΡΟΣΩΡΙΝΟΣ" selected="yes">ΠΡΟΣΩΡΙΝΟΣ </option>
<option value="ΠΡΟΛΗΠΤΙΚΟΣ">ΠΡΟΛΗΠΤΙΚΟΣ </option>
</cfcase>
<cfcase value="ΠΡΟΛΗΠΤΙΚΟΣ">
<option value="ΤΑΚΤΙΚΟΣ"> ΤΑΚΤΙΚΟΣ </option>
<option value="ΠΡΟΣΩΡΙΝΟΣ">ΠΡΟΣΩΡΙΝΟΣ </option>
<option value="ΠΡΟΛΗΠΤΙΚΟΣ" selected="yes">ΠΡΟΛΗΠΤΙΚΟΣ </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>

<TD>
<font style="Arial" size="3"> Είδος &nbsp; στοιχείων: &nbsp;</font>
<cfselect name="stoixeia" required="Yes" multiple="yes"
message="Επιλέξτε μια τιμή!" 
disabled="disabled"
size="9">

<cfset mylist="#ValueList(cust.eidos_stoixeia)#">

<cfloop index="i" list="ΔΑ,ΤΔΑ,ΤΙΜ,ΑΠΥ,ΤΠΥ,ΦΟΡΤΩΤΙΚΗ,ΕΚΚΑΘΑΡΙΣΗ,ΣΔΑ,ΑΛΛΟ" delimiters=",">

<cfif ListFind(mylist,i) GT 0>

<option value="#i#" selected="yes"> #i# </option>
<cfelse>
<option value="#i#"> #i# </option>

</cfif>
</cfloop>
<!---
<cfswitch expression="#Trim(cust.eidos_stoixeia)#">
<cfcase value="ΔΑ">
<option value="ΔΑ" selected="yes"> ΔΑ </option>
<option value="ΤΔΑ">ΤΔΑ </option>
<option value="ΤΙΜ">ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΤΔΑ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ" selected="yes"> ΤΔΑ </option>
<option value="ΤΙΜ">ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΤΙΜ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ" selected="yes"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΑΠΥ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ" selected="yes">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΤΠΥ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ" selected="yes">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΦΟΡΤΩΤΙΚΗ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ" selected="yes">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΕΚΚΑΘΑΡΙΣΗ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ" selected="yes"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΣΔΑ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ" selected="yes">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfcase>
<cfcase value="ΑΛΛΟ">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ"> ΤΔΑ </option>
<option value="ΤΙΜ"> ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ" selected="yes">ΑΛΛΟ </option>
</cfcase>

</cfswitch>
--->

</cfselect>
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3">* Κωδικός &nbsp; Παράβασης:  </font>
<cftextarea name="com" rows="4" cols="25" 
wrap="virtual"
value="#Trim(cust.comments)#"
disabled="disabled"
onFocus="set_field10();"
onBlur="setold_field10();"/>
</TD>

<TD width="450">
<font style="Arial" size="3">* Περιγραφή &nbsp; Παράβασης: </font>  &nbsp; 
<cftextarea name="apotel" rows="3" cols="28" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αποτέλεσμα ελέγχου!"
required="yes"
value="#Trim(cust.apotel_per)#"
disabled="disabled"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 
</TD>

<TD>
<font style="Arial" size="3"> Παρατηρήσεις - Σχόλια: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.remark)#">
<cfcase value="ΥΠΑΡΚΤΟΣ">
<option value="ΥΠΑΡΚΤΟΣ" selected="yes"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
</cfcase>
<cfcase value="ΑΝΥΠΑΡΚΤΟΣ">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ" selected="yes"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
</cfcase>
<cfcase value="ΑΝΕΝΕΡΓΟ ΑΦΜ">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ" selected="yes"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
</cfcase>
<cfcase value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ" selected="yes"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
</cfcase>
<cfcase value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ" selected="yes"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
</cfcase>
<cfcase value="ΑΛΛΟ">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ"> Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ" selected="yes"> Άλλο </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>
</TR>

<TR>
<TD>
<font style="Arial" size="3">Έγγραφα που οδήγησαν στον έλεγχο  </font>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
disabled="disabled"
required="yes"
value="#Trim(cust.ex_num_id)#"
onFocus="set_field41();"
onBlur="setold_field41();"
wrap="virtual"/> 
</cftooltip>
</TD>
</TR>

<br>
<br>
<TR>
<TD>
</TD>
<TD align="center">
<INPUT Type="submit" value="Διαγραφή"> &nbsp; &nbsp;
<INPUT Type="reset" value="Επαναφορά">
</TD>
</TR>
</cfoutput>
</table>
<cfoutput>
<cfinput type="hidden" name="element" value="#Trim(URL.id1)#">
<cfinput type="hidden" name="element_id" value="#Trim(URL.id2)#">
<cfinput type="hidden" name="excuse" value=" ">
</cfoutput>
</cfform>

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


