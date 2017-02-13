
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfajaximport tags="cftooltip">

<cfset REQUEST.use=cookie.per>

<cfparam name="URL.idafm" default="">

<cfoutput>

<cfif Len(#Trim(URL.idafm)#) EQ 0>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<CFSTOREDPROC 
procedure="check_data_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#URL.id#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<cfelse>

<CFSTOREDPROC 
procedure="check_data_user_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<!---
<cflocation url="n_insert.cfm">
--->
</cfif>

</cfif>

</cfoutput>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Εισαγωγή &nbsp; Διπλών &nbsp;  &nbsp; Ληπτών &nbsp;Τιμολογίων</title>
<SCRIPT src="extranew.js" charset="iso-8859-7">
	</SCRIPT>
<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body onload="extraduplicate_newdata();">
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
Κεντρικό μενού </a> &nbsp; / &nbsp; Εισαγωγή &nbsp;Διπλών &nbsp;Ληπτών&nbsp; Τιμολογίων
</font>
</p>

<cfif Len(#Trim(URL.idafm)#) EQ 0>

<cfif cust.recordcount EQ 0>

<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν στοιχεία στην λίστα ληπτών!</b></font></p>

<cfelse>

<cfform name="form_data" action="n_insertdupl_apo.cfm" method="post" onsubmit="return dupladdex_select();">
<div align="center"><font style="Arial" size="4"><b>
Εισαγωγή &nbsp;Διπλών &nbsp; Ληπτών &nbsp; Τιμολογίων</b></font>
</div>
<br>
<table align="center" bgcolor="#80FF80">
<cfoutput>
<TR>
<TD width="310">
<font style="Arial" size="3">
* Επωνυμία: &nbsp; </font>
<cfinput type="text" name="epwnymia" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για επωνυμία!"
required="yes" value="#Trim(cust.epwnymia)#" onFocus="set_field1();" onBlur="setold_field1();"> 
</TD>

<TD align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3">&nbsp; Διακριτικός Τίτλος: &nbsp; </font>
<cfinput type="text" name="titlos" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τίτλο!"
required="no" value="#Trim(cust.titlos)#"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 
 
<TD align="right">
<font style="Arial" size="3">* ΑΦΜ: &nbsp; </font>
<cfinput type="text" name="afm" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
required="yes"
disabled="disabled"
value="#Trim(cust.r_afm)#"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
</TD>
</TR>

<TR>
<TD width="200">
<font style="Arial" size="3">* ΔΟΥ: &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </font>
<cfinput type="text" name="doy"
message="Παρακαλώ εισάγετε ένα όνομα για ΔΟΥ!"
required="yes"
value="#Trim(cust.id_doy)#"
onFocus="set_field4();" onBlur="setold_field4();"/> 
</TD>

<TD align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3">&nbsp; Οδός: &nbsp; &nbsp; </font>
<cfinput type="text" name="odos" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για οδό!"
required="no"
value="#Trim(cust.odos)#"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Αριθμός:  </font>
<cfinput type="text" name="ar" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό!"
validate="integer"
required="no"
value="#Trim(cust.ar)#"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>

<TR>
<TD width="300">
<font style="Arial" size="3"> Ταχυδρ. &nbsp; κωδικός: &nbsp;  </font>
<cfinput type="text" name="taxk" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ταχυδρομικό κωδικό!"
validate="integer"
required="no"
value="#Trim(cust.taxk)#"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3">&nbsp; Πόλη: &nbsp; &nbsp; </font>
<cfinput type="text" name="poli" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πόλη!"
required="no"
value="#Trim(cust.poli)#"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Χώρα: </font>
<cfinput type="text" name="country" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για xώρα!"
required="no"
value="#Trim(cust.country)#"
onFocus="set_field15();" onBlur="setold_field15();"> 
</TD>

</TR>

<TR>

<TD width="350">
<font style="Arial" size="3">* Δραστηριότητα: &nbsp; </font>
&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τύπο εργασίας!"
required="yes" 
value="#Trim(cust.ergasia)#"
onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 
</TD>

<TD width="center">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp; &nbsp; 
<font style="Arial" size="3">Σχετ.&nbsp;υποθέσεις:&nbsp;</font>
<cftextarea type="text" name="affair" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για σχετικές υποθέσεις!"
required="no"
height="10"
width="5" 
value="#Trim(cust.rel_affair)#"
onFocus="set_field30();" onBlur="setold_field30();"/> 
</TD>

<TD width="350" align="right">
<font style="Arial" size="3">Νομ. εκπρόσωπος: </font>
<cftextarea type="text" name="legal" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για νομικό εκπρόσωπο!"
required="no"
height="10"
width="5" 
value="#Trim(cust.legal_st)#"
onFocus="set_field16();" onBlur="setold_field16();"/> 
</TD>

</TR>
<TR>

<TD>
<a href="javascript:void(0);" onclick="period_win();">
<font style="Arial" size="3">Διαχειριστική  &nbsp; Περίοδος:  </font>
</a>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="period" rows="5" cols="80" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για διαχειριστική περίοδο!"
required="no"
readonly="yes"
value="#Trim(cust.m_period)#"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> ΑΦΜ &nbsp; εκπροσώπου: </font>
<cftextarea type="text" name="afm_nomiko" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
height="10"
width="5"
required="no"
value="#Trim(cust.afm_nomiko)#"
maxlength="10"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3">Πλήθος  στοιχείων:  &nbsp;</font>
<cfinput type="text" name="n_element" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό στοιχείων!"
validate="integer"
required="yes"
value="#Val(cust.num_elements)#"
maxlength="10"
onFocus="set_field17();" onBlur="setold_field17();"> 
</TD>

<TD align="center">
&nbsp; &nbsp; &nbsp; 
<font style="Arial" size="3">Καθαρή αξία:  &nbsp;</font>
<cfinput type="text" name="value" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για καθαρή αξία!"
validate="numeric"
required="yes"
value="#Val(cust.c_value)#"
maxlength="20"
onFocus="set_field18();" onBlur="setold_field18();"> 
</TD>

<TD align="right">
<font style="Arial" size="3">Ποσό ΦΠΑ:  &nbsp;</font>
<cfinput type="text" name="fpa" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΦΠΑ!"
validate="numeric"
required="yes"
value="#Val(cust.vat)#"
maxlength="20"
onFocus="set_field19();" onBlur="setold_field19();"> 
</TD>
--->

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="essay_win();">
<font style="Arial" size="3">Αριθ. εκθ. ελέγχου υπόθεσης ή άλλου εγγράφου: </font>
</a>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="essay" rows="5" cols="23" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
required="no"
readonly="yes"
value="#Trim(cust.num_id)#"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</cftooltip> 
</TD>

<TD align="center" width="350">
<font style="Arial" size="3">* Κωδ. Περιφερειακής &nbsp; Διεύθυνσης:</font>
<cfinput type="text" name="per"
message="Παρακαλώ εισάγετε ένα όνομα για Περιφερειακή Δ/νση!"
required="yes"
value="#Trim(cust.id_perif)#"
onFocus="set_field21();" onBlur="setold_field21();"/>
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3"> Λήψη μέτρων άρθρο 14 &nbsp; Ν. 2523/97: &nbsp;</font>
<cfselect name="article" required="no" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">

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
<cfselect name="elegxos" required="no" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">

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
<cfselect name="stoixeia" required="no" multiple="yes"
message="Επιλέξτε μια τιμή!" size="9">

<cfset mylist="#Trim(cust.eidos_stoixeia)#">

<cfloop index="i" list="ΔΑ,ΤΔΑ,ΤΙΜ,ΑΠΥ,ΤΠΥ,ΦΟΡΤΩΤΙΚΗ,ΕΚΚΑΘΑΡΙΣΗ,ΣΔΑ,ΑΛΛΟ" delimiters=",">

<cfif ListFind(mylist,i) GT 0>
<cfoutput>
<option value="#i#" selected="yes"> #i# </option>
</cfoutput>

<cfelse>

<cfoutput>
<option value="#i#"> #i# </option>
</cfoutput>
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
<a href="javascript:void(0);" onclick="violation();">
<font style="Arial" size="3">* Κωδικός &nbsp; Παράβασης: </font>
</a>
<cftooltip tooltip="Επιλέξτε τα σχόλια για εμφάνιση λίστας">
<cftextarea name="com" rows="3" cols="25" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για παράβαση!"
required="yes"
readonly="yes"
value="#Trim(cust.comments)#"
onFocus="set_field10();"
onBlur="setold_field10();"
wrap="virtual"/> 
</cftooltip>
</TD>

<!---
</TR>

<TR>
--->
<TD align="center" width="470">
<font style="Arial" size="3"> <b>* Περιγραφή &nbsp; Παράβασης </b></font> &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&nbsp; 

<!---
<cfset res=#Trim(cust.apotel_per)#>

<cfif #len(res)# GT 22>

<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ KAI EIKONIKA ΣΤΟΙΧΕΙΑ" Checked="yes"> ΠΛΑΣΤΑ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ" Checked="no"> ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp; 
</p>

<cfelse>

<cfif #Findnocase("ΠΛΑΣΤΑ","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ ΣΤΟΙΧΕΙΑ" Checked="yes"> ΠΛΑΣΤΑ
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ KAI EIKONIKA ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ" Checked="no"> ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp; 
</p>

<cfelseif #Findnocase("ΩΣ","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ KAI EIKONIKA ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ" Checked="yes"> ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp; 
</p>

<cfelseif #Findnocase("ΕΙΚΟΝΙΚΑ","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ" Checked="yes"> ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΠΛΑΣΤΑ KAI EIKONIKA ΣΤΟΙΧΕΙΑ" Checked="no"> ΠΛΑΣΤΑ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ" Checked="no"> ΩΣ ΠΡΟΣΩΠΟ ΕΙΚΟΝΙΚΑ
&nbsp; &nbsp; 
</p>

</cfif>

</cfif>
--->

<cftextarea name="apotel" rows="5" cols="32" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αποτέλεσμα ελέγχου!"
required="yes"
readonly="yes"
value="#Trim(cust.apotel_per)#"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 

</TD>

<TD>
<font style="Arial" size="3"> Παρατηρήσεις - Σχόλια: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">

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
<a href="javascript:void(0);" onclick="exessay_win();">
<font style="Arial" size="3">Έγγραφα που οδήγησαν στον έλεγχο  </font>
</a>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
required="no"
readonly="yes"
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
<TD>&nbsp; &nbsp;&nbsp; &nbsp;
<INPUT TYPE="Button" value="Στοιχεία  Χρήστη" onclick="st_data();">
</TD>
<TD colspan="5" align="center">
<INPUT Type="submit" value="Εισαγωγή"> &nbsp; &nbsp;
<INPUT Type="reset" value="Επαναφορά">
</TD>
</TR>
</cfoutput>
</table>
<cfinput type="hidden" name="ex_afm" value=" ">
<cfoutput>
<cfinput type="hidden" name="element" value="#URL.id#">
<cfinput type="hidden" name="indata1" value="#cookie.stdata1#">
<cfinput type="hidden" name="indata2" value="#cookie.stdata2#">
<cfinput type="hidden" name="indata3" value="#cookie.stdata3#">
<cfinput type="hidden" name="doc_date" value=" ">
</cfoutput>
</cfform>

</cfif>

<cfelse>

<cfinclude template="n_insertnewdupl.cfm">

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
