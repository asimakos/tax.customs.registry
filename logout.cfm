<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<cfcookie name="per" expires="NOW">
<cfcookie name="perid" expires="NOW">

<!---
<cflock scope="session" type="readonly" timeout="5">
<cfcookie name="cfid" value="#session.cfid#" expires="NOW">
<cfcookie name="cftoken" value="#session.cftoken#" expires="NOW">

</cflock>
--->

<cflock scope="SESSION" type="EXCLUSIVE" timeout="5">
<cfset structclear(session)>
</cflock>

<cfapplication name="Timologia"
clientmanagement="yes"
sessionManagement="yes"
sessionTimeout="#CreateTimeSpan(0,0,0,0)#">

<cflocation url="login.cfm">

<!---
<cflocation url="login.cfm">
--->
