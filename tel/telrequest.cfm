<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfajaxproxy cfc="del" jsclassname="remotedel">

<html>
<head>
	<title>���������� &nbsp; ��������� &nbsp; ��������� &nbsp; � &nbsp;��������� &nbsp; �����������</title>
	<SCRIPT src="tel_plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>
<br>
<br>
<cfoutput>
<p align="center">
<font size="+1"> <b> ����� � ������� #cookie.per#, �������� ����������� �� ������ ��� ���� ��������
�����  ��� �������� � �������� ����������� ��������������� �� ������ ��� �����������. </b></font>
</p>
</cfoutput>
<cfform name="form_request">
<table align="center">
<TR>
<TH>
��������� &nbsp; ���������:
</TH>
<br>
<TD>
<TD colspan="2" bgcolor="#ffff00">
<cftextarea name="request" rows="6" cols="55"
wrap="virtual"/>
</TD>

</TD>
</TR>
<br>
<TR>
<TH>
����� &nbsp; ���������:
</TH>
<br>
<br>
<TD>
<cfinput type="Radio" name="type1" value="��������" checked="Yes"> ��������
&nbsp; &nbsp;
<cfinput type="Radio" name="type1" value="��������"> ��������
</TD>

</TR>
<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>
<br>
<INPUT Type="button" value="����������" onclick="userrequest();"> &nbsp; &nbsp;
<INPUT Type="reset" value="����������">
</TD>
</TR>
</table>
<cfoutput>
<cfinput type="hidden" name="username" value="#cookie.per#">
</cfoutput>
</cfform>

</body>
</html>
