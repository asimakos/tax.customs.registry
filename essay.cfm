
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<cfcontent type="text/html;charset=iso-8859-7">
<cfset REQUEST.use=cookie.per>
<html>
<head>
    <title>���� &nbsp;  �������� &nbsp;  �������� - ������� &nbsp; �������� &nbsp; ������� &nbsp; �������� &nbsp; ������� </title>
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
�������� ����� </a> &nbsp; / &nbsp; ��������� ������� ���������� �� ������ �������� ������� ��������
</font>
</p>


<cfform name="date_sel" action="reportessay.cfm" method="post" onsubmit="return date_select();">
<table bgcolor="#00ffff">
<TR>
<TH><font size="+1">������� &nbsp; ������� </font> </TH>
<TD>
<cfinput type="text" name="num_essay" 
message="�������� �������� ��� ������ ���� ��� ��� ������ �������!"
validate="integer"
required="no"
maxlength="6">
</TD>
</TR>
<TR>
<TH> <font size="+1">�������� &nbsp; �������� &nbsp; �������� &nbsp; ������: </font> </TH>
<TD>
<cfoutput>
<cfif #REQUEST.use# EQ "������������">
 <cfselect name="perif" required="Yes" multiple="no"
message="�������� ��� ������������ ���������!" size="1" width="400">
<option value=" "> �������: </option>
<option value="100"> ���������� </option>
<!---
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
--->
</cfselect>
<cfelse>
<cfselect name="perif" required="Yes" multiple="no"
message="�������� ��� ������������ ���������!" size="1" width="400">
<option value=" "> �������: </option>
<option value="100"> ���������� </option>
<!---
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
--->
</cfselect>
<!---
<cfselect name="perif" required="Yes" multiple="no"
message="�������� ��� ������������ ���������!" size="1" width="400">
<option value=" "> �������: </option>
<option value="#REQUEST.use#"> #REQUEST.use# </option>
</cfselect>
--->
</cfif>
</cfoutput>
</TD>
</TR>

<TR>
<BR>
<TH valign="top">
<font size="+1">
�������� &nbsp;����������� &nbsp;�������� &nbsp;�������� &nbsp;������:&nbsp;&nbsp;
</font>
</TH>

<TD valign="top"> 
<cfinput type="datefield" name="date1" 
message="�������� �������� ��� ������ ���� ��� ����������!"
mask="dd/mm/yyyy"
required="yes">
<!---
<cf_uicalendar  
               formfield="data1"
			   width="200"
			   height="200"
			   popup="no"
			   submitcontrols="yes"
			   required="yes"
			   message="�������� �������� ��� ����������!">

			  
<p align="center">		  
<b>���:</b> 
</p>	
---> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>�����</b>
&nbsp;&nbsp;
</TD>

<TD valign="top">
<!---
<cf_uicalendar  
               formfield="data2"
			   width="200"
			   height="200"
			   popup="no"
			   submitcontrols="yes"
			   required="yes"
			   message="�������� �������� ��� ����������!">
--->
<cfinput type="datefield" name="date2" 
message="�������� �������� ��� ������ ���� ��� ����������!"
mask="dd/mm/yyyy"
required="yes">
</TD>

</TR>
</table>
<BR>
<table>
<TR>
<TD width="100" bgcolor="#0000ff" align="center">
<input type="Submit" name="submitcode" value="���������">
</TD>
</TR>
</table>
</cfform>


</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  �.�.�.� </font> </br>
<font style="color:#666666" size="3" > ����� 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
