<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<cfcomponent name="teldata">

<cfset variables.URLstr = " " />


<cffunction name="getURL" access="remote" returntype="void">
<cfargument name="passURL" type="string">

<cfset variables.URLstr = arguments.passURL>

</cffunction>


<cffunction name="printURL" access="remote" returntype="string">

<cfreturn variables.URLstr>

</cffunction>


</cfcomponent>
