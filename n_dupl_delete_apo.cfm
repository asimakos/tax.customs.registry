
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cftransaction action="BEGIN">

<CFSTOREDPROC 
procedure="insert_duplhistory_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="5000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.excuse)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg10" maxlength="20" 
cfsqltype="CF_SQL_NUMERIC" 
value="#Val(FORM.element_id)#">

</CFSTOREDPROC>

<CFSTOREDPROC 
procedure="delete_dupldata_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(FORM.element)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg30" maxlength="20" 
cfsqltype="CF_SQL_NUMERIC" 
value="#Val(FORM.element_id)#">

</CFSTOREDPROC>

<CFSET insertstatus=CFSTOREDPROC.StatusCode>

</cftransaction>

</cfoutput>

<html>
<head>
	<title>���� &nbsp;  �������� &nbsp;  �������� - ����������� &nbsp; ��������� &nbsp; ������ &nbsp; �������� ������ &nbsp; ����������</title>
<SCRIPT src="plasta.js">
	</SCRIPT>
</head>

<body>
<cflayout name="thelayout" type="vbox">
<cflayoutarea style="height:400;">
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ��������� ����������� </font> <br/>
<font style="color: #996666" size="+1"> ���� ������ ����������� ���������� (����) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
<a href="main.cfm">
�������� ����� </a> &nbsp; / &nbsp; <a href="n_timh.cfm"> �������� &nbsp; ������ &nbsp; �������� &nbsp; ������ &nbsp; ���������� </a>
</font>
</p>
<br>
<br>

<cfoutput>
<cfif #insertstatus# EQ 0>
<p align="center"><font style="Arial"><b>�� ��� ������ �������� �����:&nbsp;&nbsp; #FORM.element# &nbsp;&nbsp;����������� ��������!</b></font></p>
<cfelse>
<p align="center"><font style="Arial"><b>�� ��� ������ �������� �����:&nbsp;&nbsp; #FORM.element# <h2> ��� </h2> ����������� ��������!</b></font></p>
</cfif>
</cfoutput>

</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  �.�.�.� </font> </br>
<font style="color:#666666" size="3" > ����� 2010 </font>
</cflayoutarea>

</cflayout>
</cflayoutarea>
</cflayout>

</body>
</html>

