<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<html>
<head>
	<title>���������� &nbsp; ������� &nbsp;������� &nbsp;������� &nbsp;�������� &nbsp;� &nbsp;����� &nbsp;��������</title>
    <SCRIPT src="timolo.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>

<br>
<p align="center">
<font size="+1"> <b> �������� �������� �� �������� ��� ������� ��� ������ ������� �������
�������� � ����� ��������, ��� ���������� ��� �������� ��������!
</p>

<br>
<br>

<cfform name="form_num">

<table align="center">

<TR>
<TD>
<b>
������� &nbsp;������� &nbsp;������� &nbsp;��������: </b>
</TD>
<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfinput type="text" name="new_numessay"
validate="integer" 
message="�������� �������� ��� ������ ���� ��� ������ ������� ������� ��������!"
required="yes">
</TD>
</TR>
<br>
<TR>

<TH valign="top">
<b>
����������: 
</b>

</TH>
<!---
<TD align="left" style="position:absolute; left:579; top:165">
--->

<TD valign="top">
<cfinput type="datefield" name="new_numdate" 
message="�������� �������� ��� ������ ���� ��� ����������!"
mask="dd/mm/yyyy"
required="yes">
</TD>

</TR>
<TR>
<!---
<TD align="center" style="position:absolute; left:437; top:190">
--->
<TD align="center">
<b>
�������� &nbsp; ��������:
</b>
</TD>
<TD>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<cfselect name="new_essayextra" required="Yes" multiple="no" 
message="�������� ��� ������������ ���������!" size="1" width="400">
<option value=" "> �������: </option>
<option value="100"> �������� �������� </option>
<option value="������������ �/��� �������"> �.�. &nbsp;&nbsp; ������� </option>
<option value="������������ �/��� ��������� ����������"> �.�. &nbsp;&nbsp;��������� ���������� </option>
<option value="������������ �/��� ����.���������� - ������"> �.�. &nbsp;&nbsp;���������� ���������� - ������ </option>
<option value="������������ �/��� ������� ����������"> �.�. &nbsp;&nbsp;������� ���������� </option>
<option value="������������ �/��� �������"> �.�. &nbsp;&nbsp;������� </option>
<option value="������������ �/��� ���������"> �.�. &nbsp;&nbsp;��������� </option>
<option value="������������ �/��� ������ �����"> �.�. &nbsp;&nbsp;������ ����� </option>
<option value="������������ �/��� ������� �������"> �.�. &nbsp;&nbsp;������� ������� </option>
<option value="������������ �/��� ������� �������"> �.�. &nbsp;&nbsp;������� ������� </option>
<option value="������������ �/��� ������������"> �.�. &nbsp;&nbsp;������������ </option>
<option value="������������ �/��� ������� �������"> �.�. &nbsp;&nbsp;������� ������� </option>
<option value="������������ �/��� ������ �������"> �.�. &nbsp;&nbsp;������ ������� </option>
<option value="������������ �/��� ������"> �.�. &nbsp;&nbsp;������ </option>
</cfselect>

</TD>
</TR>

<TR>

<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;

<br>
<br>
<br>

<INPUT Type="button" value="���������� & ��������" onclick="close_numnew();"> &nbsp; &nbsp;
<INPUT Type="reset" value="����������">
</TD>

</TR>

</table>

</cfform>

</body>
</html>
