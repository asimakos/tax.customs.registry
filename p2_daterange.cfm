<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<CFSTOREDPROC 
procedure="find_daterange_publisher" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_DATE"
value="#URL.id2#">

<cfprocresult name="date_range">
</CFSTOREDPROC>

<cfcontent type="application/msexcel;charset=utf-8">

<cfheader name="Content-Disposition" value="filename=Timologia_ekd.xls">

<html>
<head>
<title> ΛΙΣΤΑ &nbsp;ΕΚΔΟΤΩΝ &nbsp;ΤΙΜΟΛΟΓΙΩΝ</title>
</head>
<body>
<br>
<p align="center">
ΛΙΣΤΑ &nbsp;ΕΚΔΟΤΩΝ &nbsp;ΤΙΜΟΛΟΓΙΩΝ
</p>
<br>
<table>
<tr>

<th>
Επωνυμία
</th>

<th>
Διακριτικός Τίτλος
</th>

<th>
ΑΦΜ Εκδότη
</th>

<th>
ΔΟΥ
</th>

<th>
Οδός

</th>

<th>
Αριθμός
</th>

<th>
Ταχυδρομικός Κώδικας

</th>

<th>
Πόλη
</th>

<th>
Χώρα
</th>

<th>
Δραστηριότητα
</th>

<th>
Σχετικές υποθέσεις
</th>

<th>
Νόμιμος εκπρόσωπος
</th>

<th>
ΑΦΜ νόμιμου εκπροσώπου
</th>

<th>
Διαχειριστική περίοδος
</th>
<!---
<th>
Πλήθος στοιχείων
</th>

<th>
Καθαρή αξία
</th>

<th>
Ποσό ΦΠΑ
</th>
--->

<th>
Αριθμός εκθέσεων ελέγχου υπόθεσης ή άλλου εγγράφου
</th>

<th>
Κωδικός Περιφερειακής Διεύθυνσης
</th>

<th>

Κωδικός &nbsp; Παράβασης

</th>

<th>

Περιγραφή &nbsp; Παράβασης

</th>
<th>

Ημερομηνία καταχώρησης

</th>

<th>
ΑΦΜ Λήπτη
</th>

<th>
Λήψη μέτρων άρθρο 14   Ν. 2523/97
</th>

<th>
Είδος   ελέγχου
</th>

<th>
Είδος   στοιχείων
</th>

<th>
Έγγραφα που προκάλεσαν τον έλεγχο
</th>

</tr>

<cfoutput query="date_range">
<tr>
<td>
#epwnymia#

</td>
<td>

#titlos#

</td>
<td>

#DE(p_afm)#

</td>
<td>

#id_doy#

</td>
<td>

#odos#

</td>
<td>

#ar#

</td>
<td>

#taxk#

</td>
<td>

#poli#

</td>

<td>

#country#

</td>

<td>

#ergasia#

</td>
<td>

#rel_affair#

</td>
<td>

#legal_st#

</td>

<td>
#DE(afm_nomiko)#

</td>

<td>
#m_period#
</td>

<!---
<td>

#LSNumberFormat(num_elements,",_______")#
</td>
<td>

#LSNumberFormat(c_value,"-_______.__")#

</td>
<td>

#LSNumberFormat(vat,"-_______.__")#
</td>
--->
<td>

#num_id#

</td>
<td>

#id_perif#

</td>
<td>

#comments#

</td>

<td>

#apotel_per#

</td>
<td>

#date_id#

</td>
<td>

#DE(r_afm)#

</td>

<td>
#article_14#

</td>

<td>
#eidos_stoixeia#

</td>

<td>
#eidos_elegxos#

</td>

<td>
#ex_num_id#

</td>

</tr>
</cfoutput>

</table>

</body>
</html>