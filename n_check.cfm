
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfset REQUEST.use=cookie.per>
<cfset #res_afm#=#Trim(FORM.afm)#>

<cfoutput>

<cfif #REQUEST.use# EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">

<CFSTOREDPROC 
procedure="check_data_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.afm)#">

<cfprocresult name="n_afm">
</CFSTOREDPROC>

<cfset records=n_afm.recordcount>

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

<cfprocresult name="n_afm">
</CFSTOREDPROC>

<cfset records=n_afm.recordcount>

</cfif>

<cfset cookie.stdata1="#FORM.epwnymia# * #FORM.titlos# * #FORM.odos# * #FORM.ar# * #FORM.taxk# * #FORM.poli# * #FORM.country# * #FORM.ergas# * #FORM.affair# * #FORM.legal#">
<cfset cookie.stdata2="#FORM.doy# * #FORM.per# * #FORM.essay# * #FORM.com# * #FORM.apotel#"> 
<cfset cookie.stdata3="#FORM.period# * #FORM.doc_date# * #FORM.remark# * #FORM.article# * #FORM.elegxos# * #FORM.stoixeia# * #FORM.afm_nomiko# * #FORM.ex_essay#">

<script type="text/javascript" language="JavaScript" charset="iso-8859-7">
var #ToScript(records,"counter")#;
var hafm=#DE(variables.res_afm)#

if (counter!=0){

//if (confirm("Error:Duplicate AFM! Do you want to continue?")){
if (confirm("Λάθος, αυτό το ΑΦΜ υπάρχει ήδη αποθηκευμένο! Θέλετε να συνεχίσετε?")){

location.href='n_insertdupl.cfm?id='+hafm;
}else{
location.href='n_insert.cfm';
}
}

</script>

<cfif #records# EQ 0>
<cfinclude template="n_insert_apo.cfm">
</cfif>

</cfoutput>




