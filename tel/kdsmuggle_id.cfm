<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">
<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
<title>���������� &nbsp; ���������� &nbsp; ��������� &nbsp; ������������ &nbsp;�� &nbsp; �����������</title>
<SCRIPT src="tel_timolo.js" charset="iso-8859-7">
</SCRIPT>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
</SCRIPT>	
</head>

<body bgcolor="#8080FF">

<br>
<p align="center">
<font size="+1"> <b> �������� �������� ����� �������� ��������� ��� ��� ������� �� ��� ������������ �� �����������, ���
������ ������� ���������� ���,��� ������ ����������� ���,��� ������ ����������� ��� �������� ���,��� ���������� ���,
�� ����� ���,��� ���� �������� ��� ����� ��� ��� ���� �������� ���
</p>

<cfform name="form_id">

<table align="center">

<TR>
<TD>
<b>
���: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_afm"
validate="integer" 
message="�������� �������� ��� ������ ���� ��� ���!">
</TD>
</TR>
<br>

<TR>
<TD>
<b>
������� &nbsp; ������� &nbsp; ����������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_card"
 message="�������� �������� ��� ������ ���� ��� ���������!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
������� &nbsp; �����������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_passport"
 message="�������� �������� ��� ������ ���� ��� ����������!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
������� &nbsp; ����������� &nbsp; ��������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_vehicle"
 message="�������� �������� ��� ������ ���� ��� ������ ����������� ��������!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
����������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_nationality"
 message="�������� �������� ��� ������ ���� ��� ����������!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
�����: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfselect name="new_sex" required="Yes" multiple="no" 
message="�������� ��� �����!" size="1" width="400">
<option value=" "> �������: </option>
<option value="������"> ������ </option>
<option value="�������"> ������� </option>
</cfselect>

</TD>
</TR>

<br>
<TR>
<TD>
<b>
���� &nbsp; ��������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_origin"
 message="�������� �������� ��� ������ ���� ��� ���� ��������!">
</TD>
</TR>

<br>
<TR>
<TD>
<b>
���� &nbsp; ��������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_stay"
 message="�������� �������� ��� ������ ���� ��� ���� ��������!">
</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;

<br>
<br>
<br>

<INPUT Type="button" value="���������� & ��������" onclick="kdid_close();"> &nbsp; &nbsp;
<INPUT Type="reset" value="����������">
</TD>

</TR>

</table>
</cfform>
</body>
</html>