<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfcomponent 
 displayname="Application"
 output="true"
 hint="Handle the application">
 
 <cfset  THIS.name="Timologia" />
 <!---
 <cfset  THIS.ApplicationTimeout="#CreateTimeSpan(0,0,,0)#" />
 --->
 <cfset THIS.SessionManagement="yes">
 <cfset THIS.setclientcookies="no">
 <cfset THIS.sessionTimeout=CreateTimeSpan(0,0,20,0)>
 <cfset THIS.applicationtimeout=CreateTimeSpan(2,0,0,0)>
 
 <cfset this.mappings["/expiration"]="C:\wamp\www\plasta" />
 
 <cfparam name="Session.endflag" type="boolean" default="false">
 
 
 <!---
 <cffunction name="OnSessionStart" 
 access="public" 
 returntype="void"
 output="false"
 hint="Fire a new session">
 
<cfset SESSION.perid="Yes">

<cfreturn/>
</cffunction>
<script type="text/javascript" language="JavaScript">
  alert("Your session time has ended!");
  </script>

  <cfif StructKeyExists(Sessionscope,"DateEnded")>
  <cfset OnSessionEnd(Session.DateEnded)>
  </cfif>
 --->
 
  <cffunction name="OnSessionEnd"
  access="public"
  returntype="void"
  output="false"
  hint="Fires when the session is terminated">
  
  <cfargument name="Session" type="struct" required="true">
  <cfargument name="AppScope" type="struct" required="false">
  
  <cflock scope="SESSION" type="exclusive" timeout="5" throwontimeout="no">
  <cfset ARGUMENTS.Session.endflag=true>
  </cflock>
  
 </cffunction>
  
 
 <cfif Session.endflag EQ true>
 
 <cfscript>
 
 objuser=createObject("component","user");
 objuser.terminate();
 
 </cfscript>
 
 </cfif>
 
 
 </cfcomponent>


