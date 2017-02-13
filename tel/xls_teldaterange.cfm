
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfset setEncoding("URL","utf-8")>

<CFSTOREDPROC 
procedure="find_daterange_smuggler" 
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
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(URL.id2)#">

<cfprocresult name="date_range">
</CFSTOREDPROC>

<cfcontent type="application/msexcel;charset=utf-8">

<cfheader name="Content-Disposition" value="filename=smuggle.xls">

<html>
<head>
<title> ΛΙΣΤΑ  &nbsp;ΛΑΘΡΕΜΠΟΡΩΝ</title>
</head>
<body>
<br>
<p align="center">
ΛΙΣΤΑ &nbsp;ΛΑΘΡΕΜΠΟΡΩΝ
</p>
<br>
<table>
<tr>

<th>
Όνομα - Επώνυμο: 
</th>

<th>
Τίτλος
</th>

<cfoutput query="date_range">

<cfset REQUEST.str=#afm#>

<cfset myArray1=REQUEST.str.split(",")>

<cfloop from="1" to="#ArrayLen(myArray1)#" index="i">
<th>
#Mid(myArray1[i],1,FindNoCase(":",myArray1[i])-1)# 
</th>
</cfloop>

</cfoutput>

<th>
Κωδικός  ΔΟΥ
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
Δραστηριότητα - Συμμετοχή:
</th>

<th>
Αντικείμενο Λαθρεμπορίας
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
Δασμοί και Φόροι
</th>

<th>
Πολλαπλά  τέλη  και  πρόστιμα
</th>

<th>
Σύνολο
</th>
--->

<th>
Αριθμός εκθέσεων ελέγχου υπόθεσης ή άλλου εγγράφου
</th>

<th>

Κωδικός Περιφερειακής Διεύθυνσης

</th>

<th>

Σχόλια

</th>

<th>

Αποτέλεσμα Ελέγχου

</th>

<th>

Παρατηρήσεις

</th>

<th>

Ημερομηνία καταχώρησης

</th>
<th>

Στοιχεία Συνυπαιτίων

</th>

<th>
Λήψη μέτρων άρθρο 14   Ν. 2523/97
</th>

<th>
Είδος   ελέγχου
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

<!---
#DE(afm)#
--->
<cfset REQUEST.str2=#DE(afm)#>

<cfset myArray2=REQUEST.str2.split(",")>
<cfset REQUEST.count=#ArrayLen(myArray2)#-1>

<cfloop from="1" to="#REQUEST.count#" index="j">
<td>
<cfset REQUEST.mystr = #Mid(myArray2[j],FindNoCase(":",myArray2[j])+1,Len(myArray2[j]))#>
#DE(REQUEST.mystr)#
</td>

</cfloop>

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

#smuggle#

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

#LSNumberFormat(tax_duty,",_______")#
</td>
<td>

#LSNumberFormat(fine,"-_______.__")#

</td>
<td>

#LSNumberFormat(sum_fine,"-_______.__")#
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

#apotelesma#

</td>

<td>

#remark#

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
