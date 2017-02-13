
<cfparam name="URL.idafm" default="">

<cfset REQUEST.data="plasta">

<cfajaximport tags="cftooltip">

<SCRIPT src="extranew.js" charset="iso-8859-7">
	</SCRIPT>
<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>

<cftransaction action="BEGIN">

<cfquery name="doy_data" datasource="#REQUEST.data#">
SELECT id_doy,name FROM doy
ORDER BY name ASC
</cfquery>

<cfquery name="per_data" datasource="#REQUEST.data#">
SELECT id_perif,perifer FROM perifer
ORDER BY id_perif
</cfquery>

</cftransaction>

<cfform name="form_data" action="n_newinsertdupl_apo.cfm" method="post">
<div align="center"><font style="Arial" size="4"><b>
Εισαγωγή &nbsp;Διπλών &nbsp; Ληπτών &nbsp; Τιμολογίων</b></font>
</div>
<br>
<table align="center" bgcolor="#FFFF80">
<TR>
<TD>
<font style="Arial" size="3">
* Επωνυμία: &nbsp; </font>
<cfinput type="text" name="epwnymia" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για επωνυμία!"
required="yes" onFocus="set_field1();" onBlur="setold_field1();"> 
</TD>

<TD align="center">
<font style="Arial" size="3">&nbsp; Διακριτικός Τίτλος: &nbsp; </font>
<cfinput type="text" name="titlos" message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τίτλο!"
required="no"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 
<TD align="right">
<font style="Arial" size="3">* ΑΦΜ: &nbsp; </font>
<cfinput type="text" name="afm" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
value="#Trim(URL.idafm)#"
required="yes"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
</TD>
</TR>
<TR>
<TD width="200">
<font style="Arial" size="3">* ΔΟΥ: &nbsp;  </font>
<cfselect name="doy"
query="doy_data" 
value="id_doy"
display="name"
message="Παρακαλώ εισάγετε ένα όνομα για ΔΟΥ!"
required="yes"
onFocus="set_field4();" onBlur="setold_field4();"/> 
</TD>

<TD align="center">
<font style="Arial" size="3">&nbsp; Οδός: &nbsp; &nbsp; </font>
<cfinput type="text" name="odos" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για οδό!"
required="no"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Αριθμός:  </font>
<cfinput type="text" name="ar" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό!"
validate="integer"
required="no"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>
<TR>

<TD>
<font style="Arial" size="3"> Ταχυδρ. &nbsp; κωδικός: &nbsp;  </font>
<cfinput type="text" name="taxk" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ταχυδρομικό κωδικό!"
validate="integer"
required="no"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD align="center">
&nbsp;&nbsp;
<font style="Arial" size="3">Πόλη:&nbsp; &nbsp;</font>
<cfinput type="text" name="poli" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για πόλη!"
required="no"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>

<TD align="right">

<font style="Arial" size="3"> Χώρα: </font>
<cfinput type="text" name="country" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για xώρα!"
required="no"
onFocus="set_field15();" onBlur="setold_field15();"> 
</TD>
</TR>
<TR>

<TD width="300">
<font style="Arial" size="3">* Δραστηριότητα: &nbsp; </font>&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για τύπο εργασίας!"
required="yes" onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<font style="Arial" size="3">Σχετ. &nbsp;υποθέσεις: &nbsp;</font>
<cftextarea type="text" name="affair" 
height="10"
width="5" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για σχετικές υποθέσεις!"
required="no" onFocus="set_field30();" onBlur="setold_field30();"/> 
</TD>

<TD width="450" align="right">
<font style="Arial" size="3">Νομ. εκπρόσωπος: </font>
<cftextarea type="text" name="legal" 
height="10"
width="5" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για νομικό εκπρόσωπο!"
required="no" onFocus="set_field16();" onBlur="setold_field16();"/> 
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
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> ΑΦΜ &nbsp; εκπροσώπου: </font>&nbsp;
<cftextarea type="text" name="afm_nomiko" 
bind="{afm}"
bindonload="true"
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΑΦΜ!"
validate="integer"
required="no"
height="10"
width="5"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3">Πλήθος  στοιχείων:  &nbsp;</font>
<cfinput type="text" name="n_element" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αριθμό στοιχείων!"
validate="integer"
required="yes"
maxlength="10"
onFocus="set_field17();" onBlur="setold_field17();"> 
</TD>

<TD>
<font style="Arial" size="3">Καθαρή αξία:  &nbsp;</font>
<cfinput type="text" name="value" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για καθαρή αξία!"
validate="numeric"
required="yes"
maxlength="20"
onFocus="set_field18();" onBlur="setold_field18();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> Ποσό ΦΠΑ:  &nbsp;</font>
<cfinput type="text" name="fpa" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για ΦΠΑ!"
validate="numeric"
required="yes"
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
<cftextarea name="essay" rows="3" cols="20" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για έκθεση ελέγχου!"
required="no"
readonly="yes"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</cftooltip> 
</TD>

<TD align="center">
<font style="Arial" size="3">* Κωδ. Περιφερειακής &nbsp; Διεύθυνσης:</font>
<cfselect name="per"
query="per_data" 
value="id_perif"
display="perifer"
message="Παρακαλώ εισάγετε ένα όνομα για Περιφερειακή Δ/νση!"
required="yes"
onFocus="set_field21();" onBlur="setold_field21();"/>
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3"> Λήψη μέτρων άρθρο 14 &nbsp; Ν. 2523/97: &nbsp;</font>
<cfselect name="article" required="no" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">
<option value="ΝΑΙ"> ΝΑΙ </option>
<option value="ΟΧΙ"> ΟΧΙ </option>
</cfselect>
</TD>

<TD>
<font style="Arial" size="3"> Είδος &nbsp; ελέγχου: &nbsp;</font>
<cfselect name="elegxos" required="no" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">
<option value="ΤΑΚΤΙΚΟΣ"> ΤΑΚΤΙΚΟΣ </option>
<option value="ΠΡΟΣΩΡΙΝΟΣ">ΠΡΟΣΩΡΙΝΟΣ </option>
<option value="ΠΡΟΛΗΠΤΙΚΟΣ">ΠΡΟΛΗΠΤΙΚΟΣ </option>
</cfselect>
</TD>

<TD>
<font style="Arial" size="3"> Είδος &nbsp; στοιχείων: &nbsp;</font>
<cfselect name="stoixeia" required="no" multiple="yes"
message="Επιλέξτε μια τιμή!" size="9">
<option value="ΔΑ"> ΔΑ </option>
<option value="ΤΔΑ">ΤΔΑ </option>
<option value="ΤΙΜ">ΤΙΜ </option>
<option value="ΑΠΥ">ΑΠΥ </option>
<option value="ΤΠΥ">ΤΠΥ </option>
<option value="ΦΟΡΤΩΤΙΚΗ">ΦΟΡΤΩΤΙΚΗ </option>
<option value="ΕΚΚΑΘΑΡΙΣΗ"> ΕΚΚΑΘΑΡΙΣΗ </option>
<option value="ΣΔΑ">ΣΔΑ </option>
<option value="ΑΛΛΟ">ΑΛΛΟ </option>
</cfselect>
</TD>

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="violation();">
<font style="Arial" size="3">* Κωδικός &nbsp; Παράβασης  </font>
</a>
<cftooltip tooltip="Επιλέξτε τα σχόλια για εμφάνιση λίστας">
<cftextarea name="com" rows="3" cols="25"
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για παράβαση!"
required="yes"
readonly="yes"
onFocus="set_field10();"
onBlur="setold_field10();"
wrap="virtual"/> 
</cftooltip>
</TD>
<TD align="center">
<font style="Arial" size="3">* Περιγραφή &nbsp; Παράβασης </font> &nbsp; &nbsp; 
<!---
<cfselect name="apotel" required="Yes" multiple="No" 
message="Παρακαλώ επιλέξτε μια τιμή από τα αποτελέσματα ελέγχου" width="250"
onFocus="set_field22();" onBlur="setold_field22();">
<option value=" "> Επιλογή: </option>
<option value="ΠΛΑΣΤΑ ΣΤΟΙΧΕΙΑ"> ΠΛΑΣΤΑ </option>
<option value="ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ"> ΕΙΚΟΝΙΚΑ </option>
<option value="ΜΗ ΣΥΜΜΕΤΟΧΗ"> ΜΗ &nbsp; ΣΥΜΜΕΤΟΧΗ </option>
<option value="ΠΛΑΣΤΑ ΚΑΙ ΕΙΚΟΝΙΚΑ ΣΤΟΙΧΕΙΑ"> ΠΛΑΣΤΑ - ΕΙΚΟΝΙΚΑ </option>
</cfselect>
--->

<cftextarea name="apotel" rows="5" cols="32" 
message="Παρακαλώ εισάγετε μια έγκυρη τιμή για αποτέλεσμα ελέγχου!"
required="yes"
readonly="yes"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 

</TD>

<TD>
<font style="Arial" size="3"> Παρατηρήσεις - Σχόλια: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="Επιλέξτε μια τιμή!" size="1">
<option value="ΥΠΑΡΚΤΟΣ"> Υπαρκτός </option>
<option value="ΑΝΥΠΑΡΚΤΟΣ">Ανύπαρκτος </option>
<option value="ΑΝΕΝΕΡΓΟ ΑΦΜ"> Ανενεργό ΑΦΜ </option>
<option value="ΕΙΚΟΝΙΚΟ ΩΣ ΠΡΟΣΩΠΟ"> Εικονικό ως Πρόσωπο </option>
<option value="ΥΠΟΚΡΥΠΤΟΜΕΝΟΣ"> Υποκρυπτόμενος </option>
<option value="ΑΛΛΟ"> Άλλο </option>
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
onFocus="set_field41();"
onBlur="setold_field41();"
wrap="virtual"/> 
</cftooltip>
</TD>
</TR>

<br>
<br>
<TR>
<TD colspan="5" align="center">
<INPUT Type="submit" value="Καταχώρηση"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>
</TR>
</table>
<cfinput type="hidden" name="ex_afm" value=" ">
<cfinput type="hidden" name="doc_date" value=" ">
</cfform>

<script language="JavaScript">
var qparam=location.search;

if (qparam)
windefault_values();
</script>