


<cfapplication name="Timologia"
sessionmanagement="yes"
<!---
sessionTimeout="#CreateTimeSpan(0,0,20,0)#"
--->
clientmanagement="yes"
setclientcookies="no">

<cflock scope="SESSION" type="EXCLUSIVE" timeout="5">
<cfparam name="SESSION.perid" default="No">

</cflock>

