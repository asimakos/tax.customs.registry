<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<html>
<head>
	<title>����� &nbsp; ������������ &nbsp; ��������� &nbsp; ������������� &nbsp; �����������</title>
</head>

<body>
<br>
<p align="center">
<font size="+1">
<b>
��������  ������������ - ���������  ������� ��� ������  �������������  ����������� 
</b>
</font>
</p>
<br>
<br>
<cfform name="requestform" action="">
<cfgrid name="requestgrid" format="html" pagesize="10"
striperows="yes" selectmode="edit"
bind="cfc:user.getrequests({cfgridpage},{cfgridpagesize},{cfgridsortcolumn},{cfgridsortdirection})"
onchange="cfc:user.editrequests({cfgridaction},{cfgridrow},{cfgridchanged})">
<cfgridcolumn name="id" display="No" />
<cfgridcolumn name="description" header="����� ���������" width="150" />
<cfgridcolumn name="problem" header="��������� ���������" width="300" />
<cfgridcolumn name="status" header="��������� ���������" width="200" />
</cfgrid>
</cfform> 
</body>
</html>
