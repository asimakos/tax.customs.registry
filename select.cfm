<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<html>
<head>
    <title>���� &nbsp;  �������� &nbsp;  �������� - ���  &nbsp;�������&nbsp; ����������  </title>
	<SCRIPT src="plasta.js">
	</SCRIPT>
</head>

<body>
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ��������� ����������� </font> <br/>
<font style="color: #996666" size="+1"> ���� ������ ����������� ���������� (����) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
<a href="main.cfm">
�������� ����� </a> &nbsp; / &nbsp; ��������� ������� ���������� �� ���
</font>
</p>


<p align="center">
<cfform name="form_afm" action="select_apo.cfm" method="post">
<font face="Arial" size="3">
�������� &nbsp; ���:&nbsp;
</font>
<cfinput type="text" 
name="t_afm" 
onFocus="set_Color();"
onBlur="setold_Color();"
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
<INPUT Type="button" value="����������" onClick="clear_afm();">
</cfform>
</p>

</cflayoutarea>


<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  �.�.�.� </font> </br>
<font style="color:#666666" size="3" > ����� 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
