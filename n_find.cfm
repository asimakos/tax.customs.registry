
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">
<cfajaxproxy cfc="user" jsclassname="remotedel">

<html>
<head>
    <title>���� &nbsp;  �������� &nbsp;  �������� - �������� &nbsp;������ &nbsp;����������</title>
	<SCRIPT src="timolo.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="extranew.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ��������� ����������� </font> <br/>
<font style="color: #996666" size="+1"> ���� ������ ����������� ���������� (����) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="hidden">
<p align="left">
<font size="2">
<a href="main.cfm">
�������� ����� </a> &nbsp; / &nbsp; ��������� ������ ���������� ���� ���
</font>
</p>

<br>
<p align="center">
<font size="+1">
<b>
�������� �������� �� �������� ������ ����������� �� ��������� ����������
��������� ������! ����������� ��� <a href="javascript:void(0);" onclick="open_request();"> <b>����� </b></a> ��� �������� ��� ������������
��������� ���� �������� ��������. 
</b>
</font>
<br>
<br>
<cfform name="dellogin">
<table bgcolor="#00ff00">
<tr>
<td>����� &nbsp; ������: &nbsp;</td>
<td><cfinput type="Text" name="deluser"></td>
</tr>
<tr>
<td>������� &nbsp; ������: &nbsp;</td>
<td><cfinput type="Password" name="delpass"></td>
</tr>
</table>
<br>
<cfinput type="button" name="del" value="'�������" onclick="userupdate();">
&nbsp;&nbsp;&nbsp;
<INPUT Type="button" value="����������" onClick="clear_del();">
</cfform>
</p>
<br>
<br>

<div id="data2" style="visibility:hidden">
<p align="center">
�������� ������� ��� <a href="javascript:void(0);" onclick="open_manipulate();"> ����� </a> ��� ����������� ��������� ��� ������������� �����������
<br>
<br>
<cfform name="form_afm" action="n_update.cfm" method="post">
<font face="Arial" size="3">
�������� &nbsp; ���:&nbsp;
</font>
<cfinput type="text" 
name="u_afm" 
onFocus="setu_Color();"
onBlur="setoldu_Color();"
Message="�������� �������� ��� ������ ���� ��� ���!" 
Validate="integer"
Required="Yes"
maxlength="10">
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<INPUT Type="submit" value="���������"> 
&nbsp;
&nbsp;
<INPUT Type="reset" value="����������">
</cfform>
</p>
</div>
</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  �.�.�.� </font> </br>
<font style="color:#666666" size="3" > ����� 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
