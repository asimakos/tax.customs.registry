
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>���������� &nbsp; ��������� &nbsp; (���,���,����������,��.����.��������)&nbsp; ������ �������� &nbsp; �����������</title>
	<SCRIPT src="tel_timolo.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="tel_plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>
<body>
<br>

<cfform name="form_choice">
<p align="center">
<font size="+1">
�������� �������� ��� �������� ����������� � ��� 
��� ��� ������������ ����������.
</font>
<br>
<br>
<cfinput type="Checkbox" name="yes1" value="exist" onclick="exist_cul();"> �������� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<cfinput type="Checkbox" name="yes2" value="noexist" onclick="noexist_cul();"> ��� ��������
</p>
</cfform>

<br>
<br>
<div id="data2" style="visibility:hidden">
<p align="center">
<font size="+1"> <b> �������� �������� ����� �������� ������ �������� ��������� ��� ������� �� ��� ����������� �� �����������, ���
������ ������� ���������� ���,��� ������ ����������� ���,��� ������ ����������� ��� �������� ���,��� ���������� ���,
�� ����� ���,��� ���� �������� ��� ����� ��� ��� ���� �������� ��� ��� ������ �������������� �� ������ 
���������� ��� ��� ����</b></font>
</p>

<br>
<br>
<cfform name="form_afm">
<table align="center">

<TR>
<TD align="left" width="350">
<a href="javascript:void(0);" onclick="kdid_win();">
<b>
��������&nbsp; ��������� &nbsp;�����������:&nbsp;
</b>
</a>
<cftextarea name="new_afm" rows="3" cols="15" 
message="�������� �������� �� �������� ������������ ��� �����������!"
required="yes" 
readonly="yes"
wrap="virtual"/> 
</TD>
<TD>&nbsp;&nbsp;
<INPUT Type="button" value="���������� &nbsp; ���������" onclick="duplsave_afm();">
</TD>
<TD align="right" width="250"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
����� &nbsp;��������� &nbsp;�����������
</b>&nbsp;&nbsp;
<cfselect name="l_afm" multiple="yes"></cfselect>

</TD>
</TR>

<TR>
<TD colspan="2" align="center">&nbsp; &nbsp;&nbsp; &nbsp;
<br>

<INPUT Type="button" value="���������� & ��������" onclick="close_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="�������� ���������" onclick="delete_afmnew();"> &nbsp; &nbsp;
<INPUT Type="button" value="����������" onclick="clear_afmnew();">
</TD>
</TR>

</table>
<cfinput type="hidden" name="valid_afm" value=" ">
<cfinput type="hidden" name="dupl_smuggle" value=" ">
<cfinput type="hidden" name="dupl_period" value=" ">
<cfinput type="hidden" name="dupl_doc" value=" ">
<cfinput type="hidden" name="dupl_perif" value=" ">
<cfinput type="hidden" name="dupl_violate" value=" ">
<cfinput type="hidden" name="dupl_description" value=" ">
<cfinput type="hidden" name="dupl_exdoc" value=" ">
<cfinput type="hidden" name="dupl_docdate" value=" ">
</cfform>
</div>

</body>
</html>
