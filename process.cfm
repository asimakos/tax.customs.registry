<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<SCRIPT language="JavaScript" src="plasta.js" charset="iso-8859-7">
</SCRIPT>

<cfquery name="Getuser" datasource="plasta">

select id,pass,perif
FROM valid_user
where id=<cfqueryparam value="#Trim(Form.LoginID)#" cfsqltype="CF_SQL_VARCHAR"> 
and  pass=<cfqueryparam value="#Trim(Form.LoginPassword)#" cfsqltype="CF_SQL_VARCHAR">
</cfquery>


<cfif Getuser.recordcount GT 0>

<cflock scope="session" type="Exclusive" timeout="3">

<cfset SESSION.perid="Yes">

<cfparam name="SESSION.CFID" default=" ">
<cfparam name="SESSION.CFTOKEN" default=" ">

<cfcookie name="CFID" value="#SESSION.CFID#">
<cfcookie name="CFTOKEN" value="#SESSION.CFTOKEN#">

</cflock>

<cfset cookie.per=Getuser.perif>

<cfset cookie.perid=Getuser.id>

<cfset cookie.counter=FORM.usercount>


<cflog file="Applog" type="Information"
text="Περιφερειακή Διεύθυνση: #cookie.per# - #TimeFormat(now(),'HH:mm:ss')# - #dateFormat(now(),'yyyy-mm-dd')#">

<cfinclude template="mainmenu.cfm">

<cfelse>

<script language="javascript" charset="iso-8859-7">
display_message();
</script>

<!---
<cfwindow x="0" y="100" width="200" height="150"
name="mywindow" title="Λάθος στην ταυτότητα του χρήστη!"
closable="true" draggable="yes" resizable="yes">
Τα στοιχεία που εισάγατε αντιστοιχούν σε μη έγκυρο χρήστη! <br>
Παρακαλώ προσπαθήστε ξανα!
</cfwindow>
<cfinclude template="login.cfm">
--->

<cfinclude template="login.cfm">

</cfif>


