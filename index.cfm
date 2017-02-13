<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<cfif CGI.SERVER IS NOT '443'>

<cflocation url="https://#cgi.server_name#/plasta/login.cfm">

</cfif>


