<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfajaximport tags="cftooltip">

<cfparam name="URL.idafm" default="">

<cfset REQUEST.data="plasta">

<cftransaction action="BEGIN">

<cfquery name="doy_data" datasource="#REQUEST.data#">
SELECT id_doy,name FROM doy
ORDER BY name ASC
</cfquery>

<cfquery name="per_data" datasource="#REQUEST.data#">
SELECT id_perif,perifer FROM perifer
ORDER BY id_perif
</cfquery>

</cftransaction>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
    
	<title>���� &nbsp;  �������� &nbsp;  �������� - ���������� &nbsp;������� &nbsp; ����������</title>
	<SCRIPT src="extranew.js" charset="iso-8859-7">
	</SCRIPT>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body onload="duplicate_newdata();">
<cflayout name="thelayout" type="hbox">
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
�������� ����� </a> &nbsp; / &nbsp; ����������&nbsp; ������� &nbsp;����������
</font>
</p>

<font style="Arial" size="4"><b>
���������� &nbsp; ������� &nbsp; ����������</b></font>

<cfoutput>

<cfif Len(#Trim(URL.idafm)#) EQ 0>

<cfset REQUEST.apotel_action="check.cfm">
<cfset REQUEST.apotel_sub="return insert_select();">

<cfelse>

<cfset REQUEST.apotel_action="newinsert_apo.cfm">
<cfset REQUEST.apotel_sub=" ">

</cfif>

</cfoutput>

<cfform name="form_data" action="#REQUEST.apotel_action#" method="post" onsubmit="#REQUEST.apotel_sub#">
<!---
<font style="Arial" size="4"><b>
���������� &nbsp; &nbsp; ����������</b></font>
--->
<table align="center" bgcolor="#c0c0c0">
<TR>
<TD>
<font style="Arial" size="3">*
��������: &nbsp;  </font>
<cfinput type="text" name="epwnymia" message="�������� �������� ��� ������ ���� ��� ��������!"
required="yes" onFocus="set_field1();" onBlur="setold_field1();"> 
</TD>

<TD align="center">
<font style="Arial" size="3">&nbsp; ����������� ������: &nbsp; </font>
<cfinput type="text" name="titlos" message="�������� �������� ��� ������ ���� ��� �����!"
required="no"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 
<TD align="right" width="900">
<font style="Arial" size="3">* ���: &nbsp; </font>
<cfinput type="text" name="afm" 
message="�������� �������� ��� ������ ���� ��� ���!"
validate="integer"
value="#Trim(URL.idafm)#"
required="yes"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
</TD>
</TR>
<TR>
<TD width="200">
<font style="Arial" size="3">* ���: &nbsp;  </font>
<cfselect name="doy"
query="doy_data" 
value="id_doy"
display="name"
message="�������� �������� ��� ����� ��� ���!"
required="yes"
onFocus="set_field4();" onBlur="setold_field4();"/> 
</TD>

<TD align="center">
<font style="Arial" size="3">&nbsp; ����: &nbsp; &nbsp; </font>
<cfinput type="text" name="odos" 
message="�������� �������� ��� ������ ���� ��� ���!"
required="no"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> �������:  </font>
<cfinput type="text" name="ar" 
message="�������� �������� ��� ������ ���� ��� ������!"
validate="integer"
required="no"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>

<TR>

<TD>
<font style="Arial" size="3"> ������. &nbsp; �������: &nbsp;  </font>
<cfinput type="text" name="taxk" 
message="�������� �������� ��� ������ ���� ��� ����������� ������!"
validate="integer"
required="no"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD align="center">
&nbsp;&nbsp;
<font style="Arial" size="3">����:&nbsp; &nbsp;</font>
<cfinput type="text" name="poli" 
message="�������� �������� ��� ������ ���� ��� ����!"
required="no"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>

<TD align="right">

<font style="Arial" size="3"> ����: </font>
<cfinput type="text" name="country" 
message="�������� �������� ��� ������ ���� ��� x���!"
required="no"
onFocus="set_field15();" onBlur="setold_field15();"> 
</TD>

</TR>
<TR>

<TD width="300">
<font style="Arial" size="3">* �������������: &nbsp; </font>&nbsp;&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="�������� �������� ��� ������ ���� ��� ���� ��������!"
required="yes" onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<font style="Arial" size="3">����. &nbsp;���������: &nbsp;</font>
<cftextarea type="text" name="affair" 
height="10"
width="5"
message="�������� �������� ��� ������ ���� ��� �������� ���������!"
required="no" onFocus="set_field30();" onBlur="setold_field30();"/> 
</TD>

<TD width="450" align="right">
<font style="Arial" size="3">���. ����������: </font>
<cftextarea type="text" name="legal" 
height="10"
width="5"
message="�������� �������� ��� ������ ���� ��� ������ ���������!"
required="no" onFocus="set_field16();" onBlur="setold_field16();"/> 
</TD>

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="period_win();">
<font style="Arial" size="3">�������������  &nbsp; ��������:  </font>
</a>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="period" rows="5" cols="80" 
message="�������� �������� ��� ������ ���� ��� ������������� �������!"
required="no"
readonly="yes"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>

</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> ��� &nbsp; ����������: </font>&nbsp;
<cftextarea type="text" name="afm_nomiko" 
bind="{afm}"
message="�������� �������� ��� ������ ���� ��� ���!"
validate="integer"
required="no"
height="10"
width="5"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<font style="Arial" size="3">������  ���������: </font>
<cfinput type="text" name="n_element" 
message="�������� �������� ��� ������ ���� ��� ������ ���������!"
validate="integer"
required="yes"
maxlength="10"
onFocus="set_field17();" onBlur="setold_field17();"> 
</TD>

<TD>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">������ ����:  &nbsp;</font>
<cfinput type="text" name="value" 
message="�������� �������� ��� ������ ���� ��� ������ ����!"
validate="numeric"
required="yes"
maxlength="20"
onFocus="set_field18();" onBlur="setold_field18();"> 
</TD>

<TD align="right">
<font style="Arial" size="3">���� &nbsp;���:  &nbsp;</font>
<cfinput type="text" name="fpa" 
message="�������� �������� ��� ������ ���� ��� ���!"
validate="numeric"
required="yes"
maxlength="20"
onFocus="set_field19();" onBlur="setold_field19();"> 
--->

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="essay_win();">
<font style="Arial" size="3">����. ���. ������� �������� � ����� ��������:  </font>
</a>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="essay" rows="5" cols="23" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
required="no"
readonly="yes"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</cftooltip>
</TD>
<TD align="center">
<font style="Arial" size="3">* ���. ������������� &nbsp; ����������: </font>
<cfselect name="per"
query="per_data" 
value="id_perif"
display="perifer"
message="�������� �������� ��� ����� ��� ������������ �/���!"
required="yes"
onFocus="set_field21();" onBlur="setold_field21();"/>
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3"> ���� ������ ����� 14 &nbsp; �. 2523/97: &nbsp;</font>
<cfselect name="article" required="no" multiple="no"
onFocus="set_field35();" onBlur="setold_field35();"
message="�������� ��� ����!" size="1">
<option value="���"> ��� </option>
<option value="���"> ��� </option>
</cfselect>

</TD>

<TD>
<font style="Arial" size="3"> ����� &nbsp; �������: &nbsp;</font>
<cfselect name="elegxos" required="no" multiple="no"
onFocus="set_field36();" onBlur="setold_field36();"
message="�������� ��� ����!" size="1">
<option value="��������"> �������� </option>
<option value="����������">���������� </option>
<option value="�����������">����������� </option>
</cfselect>
</TD>

<TD>
<font style="Arial" size="3"> ����� &nbsp; ���������: &nbsp;</font>
<cfselect name="stoixeia" required="no" multiple="yes" 
onFocus="set_field37();" onBlur="setold_field37();"
message="�������� ��� ����!" size="9">
<option value="��"> �� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfselect>
</TD>

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="violation();">
<font style="Arial" size="3">* ������� &nbsp; ���������:  </font>
</a>
<cftooltip tooltip="�������� �� ������ ��� �������� ������">
<cftextarea name="com" rows="3" cols="25" 
message="�������� �������� ��� ������ ���� ��� ��������!"
required="yes"
readonly="yes"
onFocus="set_field10();"
onBlur="setold_field10();"
wrap="virtual"/> 
</cftooltip>
</TD>
<TD align="center">
<font style="Arial" size="3">* ��������� &nbsp; ��������� </font> &nbsp; &nbsp;
 
<!---
<cfselect name="apotel" required="Yes" multiple="No" 
message="�������� �������� ��� ���� ��� �� ������������ �������" width="250"
onFocus="set_field22();" onBlur="setold_field22();">
<option value=" "> �������: </option>
<option value="������ ��������"> ������ </option>
<option value="�������� ��������"> �������� </option>
<option value="�� ���������"> �� &nbsp; ��������� </option>
<option value="������ ��� �������� ��������"> ������ - �������� </option>
</cfselect>
--->

<cftextarea name="apotel" rows="5" cols="32" 
message="�������� �������� ��� ������ ���� ��� ���������� �������!"
required="yes"
readonly="yes"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 

</TD>

<TD>
<font style="Arial" size="3"> ������������ - ������: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
onFocus="set_field38();" onBlur="setold_field38();"
message="�������� ��� ����!" size="1">
<option value="��������"> �������� </option>
<option value="����������">���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����"> ���� </option>
</cfselect>
</TD>
</TR>

<TR>
<TD>
<a href="javascript:void(0);" onclick="exessay_win();">
<font style="Arial" size="3">������� ��� �������� ���� ������  </font>
</a>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
required="no"
readonly="yes"
onFocus="set_field41();"
onBlur="setold_field41();"
wrap="virtual"/> 
</cftooltip>
</TD>
</TR>

<br>
<br>
<TR>
<TD colspan="5" align="center">
<INPUT Type="submit" value="����������"> &nbsp; &nbsp;
<INPUT Type="reset" value="����������">
</TD>
</TR>
</table>
<cfinput type="hidden" name="ex_afm" value=" ">
<cfinput type="hidden" name="doc_date" value=" ">
</cfform>

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
