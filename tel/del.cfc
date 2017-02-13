

<cfcomponent>

<cffunction name="insertdata" access="remote" returntype="string" output="false">
<cfargument name="dat1" required="yes">
<cfargument name="dat2" required="yes">
<cfargument name="dat3" required="yes">

<cfquery name="request_data" datasource="plasta">

select MAX(id) AS epix_id from request_perif

</cfquery>

<cfset REQUEST.maxepix=request_data.epix_id>

<cfif Len(REQUEST.maxepix) EQ 0>

<cfset REQUEST.maxepix=1>

<cfelse>

<cfset REQUEST.maxepix=request_data.epix_id+1>

</cfif>

<cfset REQUEST.tcode="ÄÅÍ ÕËÏÐÏÉÇÈÇÊÅ">

<cfquery name="request_insert" datasource="plasta">

insert into request_perif(id,description,problem,status,perif) 
values (<cfqueryparam value="#REQUEST.maxepix#" cfsqltype="CF_SQL_BIGINT">,
<cfqueryparam value="#Trim(arguments.dat1)#" cfsqltype="CF_SQL_VARCHAR">,
<cfqueryparam value="#Trim(arguments.dat2)#" cfsqltype="CF_SQL_VARCHAR">,
<cfqueryparam value="#REQUEST.tcode#" cfsqltype="CF_SQL_VARCHAR">,
<cfqueryparam value="#Trim(arguments.dat3)#" cfsqltype="CF_SQL_VARCHAR">)

</cfquery>

<cfreturn "y">

</cffunction>


<cffunction name="dellogin" access="remote" returntype="string" output="false">
<cfargument name="del1" required="Yes">
<cfargument name="del2" required="yes">

<cfquery name="k_login" datasource="plasta">

select * from valid_user
where 
id=<cfqueryparam value="#Trim(arguments.del1)#" cfsqltype="CF_SQL_VARCHAR"> 
and  pass=<cfqueryparam value="#Trim(arguments.del2)#" cfsqltype="CF_SQL_VARCHAR">
and perif='DELETE'
</cfquery>

<cfif k_login.recordcount GT 0>
<cfreturn "y">

<cfelse>

<cfreturn "n">
</cfif>

</cffunction>

<cffunction name="uplogin" access="remote" returntype="string" output="false">
<cfargument name="del1" required="Yes">
<cfargument name="del2" required="yes">

<cfquery name="k_login" datasource="plasta">

select * from valid_user
where 
id=<cfqueryparam value="#Trim(arguments.del1)#" cfsqltype="CF_SQL_VARCHAR"> 
and  pass=<cfqueryparam value="#Trim(arguments.del2)#" cfsqltype="CF_SQL_VARCHAR">
and perif='UPDATE'
</cfquery>

<cfif k_login.recordcount GT 0>
<cfreturn "y">

<cfelse>

<cfreturn "n">
</cfif>

</cffunction>

<cffunction name="getrequests" access="remote" returntype="struct">
<cfargument name="page" type="numeric" required="Yes">
<cfargument name="pagesize" type="numeric" required="Yes">
<cfargument name="gridsortcolumn" type="string" required="No" default=" ">
<cfargument name="gridsortdir" type="string" required="No" default=" ">

<cfset var requests=" ">

<cfquery name="requests" datasource="plasta">

SELECT id,description,problem,status,perif FROM request_perif

<cfif arguments.gridsortcolumn NEQ "" and arguments.gridsortdir NEQ "">

ORDER BY #arguments.gridsortcolumn# #arguments.gridsortdir#
</cfif>

</cfquery>

<cfreturn QueryConvertForGrid(requests,arguments.page,arguments.pagesize)>

</cffunction>

<cffunction name="editrequests" access="remote">
<cfargument name="gridaction" type="string" required="Yes">
<cfargument name="gridrow" type="struct" required="Yes">
<cfargument name="gridchanged" type="struct" required="Yes">

<cfset var colname="">
<cfset var value="">

<cfswitch expression="#arguments.gridaction#">

<cfcase value="U">
<cfset colname=StructKeyList(arguments.gridchanged)>
<cfset value=arguments.gridchanged[colname]>

<cfquery datasource="plasta">
UPDATE request_perif
SET #colname#='#value#'
WHERE id=#arguments.gridrow.id#
</cfquery>

</cfcase>
</cfswitch>

</cffunction>

</cfcomponent>


