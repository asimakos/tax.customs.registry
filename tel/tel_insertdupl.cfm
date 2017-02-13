
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfset setEncoding("URL","iso-8859-7")>
<cfajaximport tags="cftooltip">

<cfset REQUEST.use=cookie.per>

<cfparam name="URL.idafm" default="">

<cfoutput>

<cfif Len(#Trim(URL.idafm)#) EQ 0>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<CFSTOREDPROC 
procedure="check_data_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#URL.id#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<cfelse>

<CFSTOREDPROC 
procedure="check_data_user_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#URL.id#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<!---
<cflocation url="insert.cfm">
--->
</cfif>
</cfif>

</cfoutput>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Εισαγωγή &nbsp; Διπλών &nbsp;  &nbsp; Λαθρεμπόρων</title>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
	</SCRIPT>
<SCRIPT src="tel_plasta.js" charset="iso-8859-7">
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
<a href="telmain.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; Εισαγωγή &nbsp;Διπλών &nbsp;Λαθρεμπόρων
</font>
</p>

<cfif Len(#Trim(URL.idafm)#) EQ 0>

<cfif cust.recordcount EQ 0>

<p align="center"><font style="Arial"><b><h2> Δεν </h2> υπάρχουν στοιχεία στην λίστα λαθρεμπόρων!</b></font></p>

<cfelse>

<cfform name="form_data" action="tel_insertdupl_apo.cfm" method="post" onsubmit="return duplinsert_select();">
<div align="center"><font style="Arial" size="4"><b>
Εισαγωγή &nbsp;Διπλών &nbsp; Λαθρεμπόρων</b></font>
</div>
<br>
<table align="center" bgcolor="#80FF80">
<cfoutput>
<TR>
<TD width="310">
<font style="Arial" size="3">
 Όνομα - Επώνυμο: &nbsp; </font>
<cfinput type="text" name="epwnymia" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για επωνυμία!"
required="yes" value="#Trim(cust.epwnymia)#" onFocus="set_field1();" onBlur="setold_field1();"> 
</TD>

<TD align="center">
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3">&nbsp; Τίτλος: &nbsp; </font>
<cfinput type="text" name="titlos" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τίτλο!"
required="yes" value="#Trim(cust.titlos)#"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 
 
<TD align="right">
<a href="javascript:void(0);" onclick="id_win();">
<font style="Arial" size="3"> Στοιχεία: &nbsp; </font>
</a>
<!---
<cfinput type="text" name="afm" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
required="yes"
disabled="disabled"
value="#Trim(cust.afm)#"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
--->
<cftextarea name="afm" rows="3" cols="15" 
message="Παρακαλώ εισάγετε τα στοιχεία εμπλεκομένου για λαθρεμπορία!"
required="yes" 
readonly="yes"
value="#Trim(cust.afm)#"
onFocus="set_field3();" onBlur="setold_field3();"
wrap="virtual"/> 
</TD>
</TR>

<TR>
<TD width="200">
<font style="Arial" size="3">Όνομα &nbsp; ΔΟΥ: &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
<cfinput type="text" name="doy"
message="Παρακαλώ εισάγετε ένα όνομα για ΔΟΥ!"
required="yes"
value="#Trim(cust.id_doy)#"
onFocus="set_field4();" onBlur="setold_field4();"/> 
</TD>

<TD align="center">
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3"> Οδός: &nbsp; &nbsp; </font>
<cfinput type="text" name="odos" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για οδό!"
required="yes"
value="#Trim(cust.odos)#"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Αριθμός:  </font>
<cfinput type="text" name="ar" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό!"
validate="integer"
required="yes"
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
required="yes"
value="#Trim(cust.taxk)#"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD align="center">
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<font style="Arial" size="3">&nbsp; Πόλη: &nbsp; &nbsp; </font>
<cfinput type="text" name="poli" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πόλη!"
required="yes"
value="#Trim(cust.poli)#"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Χώρα: </font>
<cfinput type="text" name="country" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για xώρα!"
required="yes"
value="#Trim(cust.country)#"
onFocus="set_field15();" onBlur="setold_field15();"> 
</TD>

</TR>

<TR>

<TD width="300">
<font style="Arial" size="3">Δραστηριότητα - Συμμετοχή: &nbsp; </font>
&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τύπο εργασίας!"
required="yes" 
value="#Trim(cust.ergasia)#"
onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 
</TD>

<TD align="center">
<a href="javascript:void(0);" onclick="items_win();">
<font style="Arial" size="3">Αντικειμ. &nbsp;λαθρεμπορίας: </font>
</a>
<!---
<cfinput type="text" name="smuggle" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αντικείμενο λαθρεμπορίας!"
required="yes" 
value="#Trim(cust.smuggle)#"
onFocus="set_field30();" onBlur="setold_field30();"> 
--->
<cftextarea name="smuggle" rows="3" cols="15" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αντικείμενο λαθρεμπορίας!"
required="yes" 
readonly="yes"
value="#Trim(cust.smuggle)#"
onFocus="set_field30();" onBlur="setold_field30();"
wrap="virtual"/> 
</TD>

<TD width="380" align="right">
<font style="Arial" size="3">Νομ. εκπρόσωπος: </font>
<cftextarea type="text" name="legal" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για νομικό εκπρόσωπο!"
required="yes" 
height="20"
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
required="yes"
readonly="yes"
value="#Trim(cust.m_period)#"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> Στοιχεία &nbsp; εκπροσώπου: </font>
<cftextarea type="text" name="afm_nomiko" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
height="10"
width="5"
required="yes"
value="#Trim(cust.afm_nomiko)#"
maxlength="10"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3">Δασμοί και Φόροι:  &nbsp;</font>
<cfinput type="text" name="tax" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για δασμούς - φόρους!"
validate="integer"
required="yes"
value="#Val(cust.tax_duty)#"
maxlength="10"
onFocus="set_field17();" onBlur="setold_field17();"> 
</TD>

<TD align="center">
 
<font style="Arial" size="3">Πολλαπλά &nbsp;τέλη &nbsp;και&nbsp; πρόστιμα:  &nbsp;</font>
<cfinput type="text" name="fine" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τέλη - πρόστιμα!"
validate="numeric"
required="yes"
value="#Val(cust.fine)#"
maxlength="20"
onFocus="set_field18();" onBlur="setold_field18();"> 
</TD>

<TD align="right">
<font style="Arial" size="3">Σύνολο:  &nbsp;</font>
<cfinput type="text" name="sum_fine" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για σύνολο δασμών - φόρων!"
validate="numeric"
required="yes"
value="#Val(cust.sum_fine)#"
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
required="yes"
readonly="yes"
value="#Trim(cust.num_id)#"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/>
</cftooltip> 
</TD>

<TD width="450">
<font style="Arial" size="3">Κωδ. &nbsp; Περιφερειακής &nbsp; Διεύθυνσης: &nbsp;  </font>
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
<cfselect name="article" required="Yes" multiple="no"
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
<font style="Arial" size="3"> Έλεγχος: &nbsp; &nbsp;</font>
<cfselect name="elegxos" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">

<cfswitch expression="#Trim(cust.eidos_elegxos)#">
<cfcase value="ΥΠΑΡΚΤΟΣ">
<option value="ΥΠΑΡΚΤΟΣ" selected="yes">ΥΠΑΡΚΤΟΣ </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ">ΑΝΥΠΑΡΚΤΟΣ </option>
<option value="ΣΥΝΥΠΑΙΤΙΟΣ">ΣΥΝΥΠΑΙΤΙΟΣ </option>
<option value="ΑΛΛΟΔΑΠΟΣ">ΑΛΛΟΔΑΠΟΣ</option>
<option value="ΑΛΛΟ">ΑΛΛΟ</option>
</cfcase>
<cfcase value="ΑΝΥΠΑΡΚΤΟΣ">
<option value="ΥΠΑΡΚΤΟΣ">ΥΠΑΡΚΤΟΣ </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ" selected="yes">ΑΝΥΠΑΡΚΤΟΣ </option>
<option value="ΣΥΝΥΠΑΙΤΙΟΣ">ΣΥΝΥΠΑΙΤΙΟΣ </option>
<option value="ΑΛΛΟΔΑΠΟΣ">ΑΛΛΟΔΑΠΟΣ</option>
<option value="ΑΛΛΟ">ΑΛΛΟ</option>
</cfcase>
<cfcase value="ΣΥΝΥΠΑΙΤΙΟΣ">
<option value="ΥΠΑΡΚΤΟΣ">ΥΠΑΡΚΤΟΣ </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ">ΑΝΥΠΑΡΚΤΟΣ </option>
<option value="ΣΥΝΥΠΑΙΤΙΟΣ" selected="yes">ΣΥΝΥΠΑΙΤΙΟΣ </option>
<option value="ΑΛΛΟΔΑΠΟΣ">ΑΛΛΟΔΑΠΟΣ</option>
<option value="ΑΛΛΟ">ΑΛΛΟ</option>
</cfcase>
<cfcase value="ΑΛΛΟΔΑΠΟΣ">
<option value="ΥΠΑΡΚΤΟΣ">ΥΠΑΡΚΤΟΣ </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ">ΑΝΥΠΑΡΚΤΟΣ </option>
<option value="ΣΥΝΥΠΑΙΤΙΟΣ">ΣΥΝΥΠΑΙΤΙΟΣ </option>
<option value="ΑΛΛΟΔΑΠΟΣ" selected="yes">ΑΛΛΟΔΑΠΟΣ</option>
<option value="ΑΛΛΟ">ΑΛΛΟ</option>
</cfcase>
<cfcase value="ΑΛΛΟ">
<option value="ΥΠΑΡΚΤΟΣ">ΥΠΑΡΚΤΟΣ </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ">ΑΝΥΠΑΡΚΤΟΣ </option>
<option value="ΣΥΝΥΠΑΙΤΙΟΣ">ΣΥΝΥΠΑΙΤΙΟΣ </option>
<option value="ΑΛΛΟΔΑΠΟΣ">ΑΛΛΟΔΑΠΟΣ</option>
<option value="ΑΛΛΟ" selected="yes">ΑΛΛΟ</option>
</cfcase>
</cfswitch>

</cfselect>
</TD>
</TR>

<TR>
<TD>
<a href="javascript:void(0);" onclick="tel_violation();">
<font style="Arial" size="3">Κωδικός Παράβασης  </font>
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
<font style="Arial" size="3"> Περιγραφή &nbsp; Παράβασης </font> 

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
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΜΗ ΣΥΜΜΕΤΟΧΗ" Checked="no"> ΜΗ ΣΥΜΜΕΤΟΧΗ
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
&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="ΜΗ ΣΥΜΜΕΤΟΧΗ" Checked="no"> ΜΗ ΣΥΜΜΕΤΟΧΗ
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
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΜΗ ΣΥΜΜΕΤΟΧΗ" Checked="no"> ΜΗ ΣΥΜΜΕΤΟΧΗ
</p>

<cfelseif #Findnocase("ΜΗ","#Trim(cust.apotel_per)#")# NEQ 0>
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
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="ΜΗ ΣΥΜΜΕΤΟΧΗ" Checked="yes"> ΜΗ ΣΥΜΜΕΤΟΧΗ
</p>

</cfif>
</cfif>
--->

<cftextarea name="apotel" rows="5" cols="32" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αποτέλεσμα ελέγχου!"
required="yes"
readonly="yes"
value="#Trim(cust.apotelesma)#"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 

</TD>

<TD>
<font style="Arial" size="3"> Παρατηρήσεις - Σχόλια: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">

<cfswitch expression="#Trim(cust.remark)#">
<cfcase value="ΥΠΟΤΡΟΠΟΣ">
<option value="ΥΠΟΤΡΟΠΟΣ" selected="yes"> ΥΠΟΤΡΟΠΟΣ </option>
<option value="ΜΗ ΥΠΟΤΡΟΠΟΣ"> ΜΗ ΥΠΟΤΡΟΠΟΣ </option>
<option value="ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ"> ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ </option>
</cfcase>
<cfcase value="ΜΗ ΥΠΟΤΡΟΠΟΣ">
<option value="ΥΠΟΤΡΟΠΟΣ"> ΥΠΟΤΡΟΠΟΣ </option>
<option value="ΜΗ ΥΠΟΤΡΟΠΟΣ" selected="yes"> ΜΗ ΥΠΟΤΡΟΠΟΣ  </option>
<option value="ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ"> ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ </option>
</cfcase>
<cfcase value="ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ">
<option value="ΥΠΟΤΡΟΠΟΣ"> ΥΠΟΤΡΟΠΟΣ </option>
<option value="ΜΗ ΥΠΟΤΡΟΠΟΣ"> ΜΗ ΥΠΟΤΡΟΠΟΣ  </option>
<option value="ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ" selected="yes"> ΕΝΤΟΣ ΤΟΥ ΕΤΟΥΣ ΥΠΟΤΡΟΠΟΣ </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>

</TR>

<TR>
<TD>
<a href="javascript:void(0);" onclick="exessay_win();">
<font style="Arial" size="3">Έγγραφα σχετιζόμενα με την λαθρεμπορία  </font>
</a>
<cftooltip tooltip="Επιλέξτε την ετικέτα για εμφάνιση της φόρμας">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
required="yes"
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
<br>
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
<cfinput type="hidden" name="doc_date" value="#cust.docum_date#">
</cfoutput>
</cfform>

</cfif>

<cfelse>

<cfinclude template="tel_insertnewdupl.cfm">

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

