<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfoutput>

<cfreport format="FlashPaper" template="publisher_invoiceuser.cfr">
<cfreportparam name="kon1" value="#Trim(URL.id1)#">
<cfreportparam name="kon2" value="#URL.id2#">
<cfreportparam name="kon3" value="#Trim(URL.id3)#">
</cfreport>

</cfoutput>