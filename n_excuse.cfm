
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<html>
<head>
	<title>���������� &nbsp; ��������� &nbsp; ������ &nbsp; ����������</title>
	<SCRIPT src="plasta.js">
	</SCRIPT>
</head>

<body>
<br>
<p align="center">
<font size="+1"> <b> �������� ����������� ��� �������� ����� ��� ������� �� ������
��� �����������</b></font>
</p>
<cfform name="form_excuse">
<table align="center">
<TR>
<TH>
���������� &nbsp; ���������:
</TH>
<br>
<TD>
<TD colspan="2" bgcolor="#ff0000">
<cftextarea name="excu" rows="6" cols="55"
wrap="virtual"/>
</TD>

</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>
<br>
<INPUT Type="button" value="����������" onclick="save_excuse();"> &nbsp; &nbsp;
<INPUT Type="reset" value="����������">
</TD>
</TR>
</table>
</cfform>

</body>
</html>
