

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfoutput>

<cfreport format="FlashPaper" template="receiver_invoiceuser.cfr">
<cfreportparam name="n_kon1" value="#Trim(URL.id1)#">
<cfreportparam name="n_kon2" value="#Trim(URL.id2)#">
<cfreportparam name="n_kon3" value="#Trim(URL.id3)#">
</cfreport>

</cfoutput>