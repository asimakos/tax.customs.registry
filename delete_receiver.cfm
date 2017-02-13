
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfoutput>

<cfif #REQUEST.use# EQ "������������">

<CFSTOREDPROC 
procedure="find_single_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_DATE"  
value="#URL.id2#">

<cfprocresult name="cust">
</CFSTOREDPROC>

<cfelse>

<CFSTOREDPROC 
procedure="find_single_user_receiver" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_DATE"  
value="#URL.id2#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(REQUEST.use)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

</cfif>
</cfoutput>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>���� &nbsp;  �������� &nbsp;  �������� - �������� &nbsp;�������� &nbsp;������ &nbsp; ����������</title>

<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
</head>

<body>
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
�������� ����� </a> &nbsp; / &nbsp; �������� &nbsp;�������� &nbsp;������ &nbsp; ����������
</font>
</p>

<br>


<cfif cust.recordcount EQ 0>
<p align="center"><font style="Arial"><b><h2> ��� </h2> �������� �������� ������ ���������� ��� ������� �� ��� ����!</b></font></p>

<cfelse>

<cfform name="form_data" action="n_delete_apo.cfm" method="post" onsubmit="return delete_data();">
<div align="center"><font style="Arial" size="4"><b>
�������� &nbsp;�������� &nbsp;������ &nbsp; ����������</b></font>
</div>

<table align="center" bgcolor="#FF8080">
<cfoutput>
<TR>
<TD width="500">
<font style="Arial" size="3">
* ��������:</font> &nbsp;
<cfinput type="text" name="epwnymia" message="�������� �������� ��� ������ ���� ��� ��������!"
required="no" value="#Trim(cust.epwnymia)#" disabled="disabled" onFocus="set_field1();" onBlur="setold_field1();" > 
</TD>

<TD width="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> ����������� ������: 
</font>&nbsp;
<cfinput type="text" name="titlos" message="�������� �������� ��� ������ ���� ��� �����!"
required="no" value="#Trim(cust.titlos)#" disabled="disabled"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 

<TD align="right" width="400">
<font style="Arial" size="3">* ���:  </font> &nbsp;&nbsp;&nbsp;
<cfinput type="text" name="afm" 
message="�������� �������� ��� ������ ���� ��� ���!"
validate="integer"
required="no"
value="#Trim(cust.r_afm)#"
disabled="disabled"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
</TD>
</TR>
<TR>

<TD >
<font style="Arial" size="3">* ���: </font> &nbsp;&nbsp;
<cfinput type="text" name="doy" 
message="�������� �������� ��� ������ ���� ��� ������ ���!"
validate="integer"
required="no"
value="#Trim(cust.id_doy)#"
disabled="disabled"
maxlength="5"
onFocus="set_field4();" onBlur="setold_field4();"> 
</TD>

<TD width="450">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">����:</font>&nbsp;
<cfinput type="text" name="odos" 
message="�������� �������� ��� ������ ���� ��� ���!"
required="no"
value="#Trim(cust.odos)#"
disabled="disabled"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> �������: </font> 
<cfinput type="text" name="ar" 
message="�������� �������� ��� ������ ���� ��� ������!"
validate="integer"
required="no"
value="#Trim(cust.ar)#"
disabled="disabled"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>

<TR>
<TD >
<font style="Arial" size="3"> ������. �������: </font> 
<cfinput type="text" name="taxk" 
message="�������� �������� ��� ������ ���� ��� ����������� ������!"
validate="integer"
required="no"
value="#Trim(cust.taxk)#"
disabled="disabled"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3"> ����:  </font>&nbsp; 
<cfinput type="text" name="poli" 
message="�������� �������� ��� ������ ���� ��� ����!"
required="no"
value="#Trim(cust.poli)#"
disabled="disabled"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>


<TD align="right">
<font style="Arial" size="3">
����: </font>
<cfinput type="text" name="country" 
message="�������� �������� ��� ������ ���� ��� ����!"
required="no"
value="#Trim(cust.country)#"
disabled="disabled"> 
</TD>
</TR>


<TR>
<TD>
<font style="Arial" size="3">* 
�������������:</font>&nbsp;&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="�������� �������� ��� ������ ���� ��� ���� ��������!"
required="yes" 
disabled="disabled"
value="#Trim(cust.ergasia)#"
onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 
</TD>
&nbsp;

<TD>&nbsp;&nbsp;
<font style="Arial" size="3"> 
����.&nbsp;���������:</font>&nbsp;
<cftextarea type="text" name="affair" 
message="�������� �������� ��� ������ ���� ��� �������� ���������!"
required="no"
height="10"
width="5"
value="#Trim(cust.rel_affair)#"
disabled="disabled"/> 
</TD>

<TD align="right" width="450">
<font style="Arial" size="3"> 
���.&nbsp;����������:</font>
<cftextarea type="text" name="legal" 
message="�������� �������� ��� ������ ���� ��� ������ ���������!"
required="no"
height="10"
width="5"
value="#Trim(cust.legal_st)#"
disabled="disabled"/> 
</TD>
</TR>

<TR>

<TD>
<font style="Arial" size="3">�������������  &nbsp; ��������:  </font>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="period" rows="5" cols="80" 
message="�������� �������� ��� ������ ���� ��� ������������� �������!"
required="yes"
disabled="disabled"
value="#Trim(cust.m_period)#"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>
</TD>

<TD width="1100" align="right">
<font style="Arial" size="3"> ��� &nbsp; ����������: </font>
<cftextarea type="text" name="afm_nomiko" 
message="�������� �������� ��� ������ ���� ��� ���!"
disabled="disabled"
height="10"
width="5"
validate="integer"
value="#Trim(cust.afm_nomiko)#"
required="yes"
maxlength="10"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3"> 
������&nbsp;���������:</font>
<cfinput type="text" name="n_element" 
message="�������� �������� ��� ������ ���� ��� ������ ���������!"
required="no"
value="#Trim(cust.num_elements)#"
disabled="disabled"> 
</TD>

<TD >&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<font style="Arial" size="3"> 
������ &nbsp;����:</font>&nbsp;
<cfinput type="text" name="value" 
message="�������� �������� ��� ������ ���� ��� ������ ����!"
required="no"
value="#Val(cust.c_value)#"
disabled="disabled"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> 
���� ���:</font>&nbsp;
<cfinput type="text" name="fpa" 
message="�������� �������� ��� ������ ���� ��� ���!"
required="no"
value="#Val(cust.vat)#"
disabled="disabled"> 
</TD>
--->

</TR>

<TR>

<TD>
<font style="Arial" size="3"> 
����. ���. ������� �������� � ����� ��������:</font>&nbsp;&nbsp;
<cftextarea name="essay" rows="3" cols="20" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
required="yes"
value="#Trim(cust.num_id)#"
disabled="disabled"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</TD>
&nbsp; &nbsp; 
<TD>
<font style="Arial" size="3">* ���. ������������� &nbsp; ����������:</font>
<cfinput type="text" name="per"  
message="�������� �������� ��� ������ ���� ��� ������ �������������!"
validate="integer"
required="no"
value="#Trim(cust.id_perif)#"
disabled="disabled"
maxlength="5"
onFocus="set_field11();"
onBlur="setold_field11();"> 
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3"> ���� ������ ����� 14 &nbsp; �. 2523/97: &nbsp;</font>
<cfselect name="article" required="Yes" multiple="no"
message="�������� ��� ����!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.article_14)#">
<cfcase value="���">
<option value="���" selected="yes"> ��� </option>
<option value="���"> ��� </option>
</cfcase>
<cfcase value="���">
<option value="���"> ��� </option>
<option value="���" selected="yes"> ��� </option>
</cfcase>
</cfswitch>

</cfselect>

</TD>

<TD>
<font style="Arial" size="3"> ����� &nbsp; �������: &nbsp;</font>
<cfselect name="elegxos" required="Yes" multiple="no"
message="�������� ��� ����!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.eidos_elegxos)#">
<cfcase value="��������">
<option value="��������" selected="yes"> �������� </option>
<option value="����������">���������� </option>
<option value="�����������">����������� </option>
</cfcase>
<cfcase value="����������">
<option value="��������"> �������� </option>
<option value="����������" selected="yes">���������� </option>
<option value="�����������">����������� </option>
</cfcase>
<cfcase value="�����������">
<option value="��������"> �������� </option>
<option value="����������">���������� </option>
<option value="�����������" selected="yes">����������� </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>

<TD>
<font style="Arial" size="3"> ����� &nbsp; ���������: &nbsp;</font>
<cfselect name="stoixeia" required="Yes" multiple="yes"
message="�������� ��� ����!" 
disabled="disabled"
size="9">

<cfset mylist="#ValueList(cust.eidos_stoixeia)#">

<cfloop index="i" list="��,���,���,���,���,���������,����������,���,����" delimiters=",">

<cfif ListFind(mylist,i) GT 0>

<option value="#i#" selected="yes"> #i# </option>
<cfelse>
<option value="#i#"> #i# </option>

</cfif>
</cfloop>
<!---
<cfswitch expression="#Trim(cust.eidos_stoixeia)#">
<cfcase value="��">
<option value="��" selected="yes"> �� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���">
<option value="��"> �� </option>
<option value="���" selected="yes"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���" selected="yes"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���" selected="yes">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���">��� </option>
<option value="���" selected="yes">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���������">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������" selected="yes">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="����������">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������" selected="yes"> ���������� </option>
<option value="���">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="���">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���" selected="yes">��� </option>
<option value="����">���� </option>
</cfcase>
<cfcase value="����">
<option value="��"> �� </option>
<option value="���"> ��� </option>
<option value="���"> ��� </option>
<option value="���">��� </option>
<option value="���">��� </option>
<option value="���������">��������� </option>
<option value="����������"> ���������� </option>
<option value="���">��� </option>
<option value="����" selected="yes">���� </option>
</cfcase>

</cfswitch>
--->

</cfselect>
</TD>

</TR>

<TR>

<TD>
<font style="Arial" size="3">* ������� &nbsp; ���������:  </font>
<cftextarea name="com" rows="4" cols="25" 
wrap="virtual"
value="#Trim(cust.comments)#"
disabled="disabled"
onFocus="set_field10();"
onBlur="setold_field10();"/>
</TD>

<TD width="450">
<font style="Arial" size="3">* ��������� &nbsp; ���������: </font>  &nbsp; 
<cftextarea name="apotel" rows="3" cols="28" 
message="�������� �������� ��� ������ ���� ��� ���������� �������!"
required="yes"
value="#Trim(cust.apotel_per)#"
disabled="disabled"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 
</TD>

<TD>
<font style="Arial" size="3"> ������������ - ������: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="�������� ��� ����!" 
disabled="disabled"
size="1">

<cfswitch expression="#Trim(cust.remark)#">
<cfcase value="��������">
<option value="��������" selected="yes"> �������� </option>
<option value="����������"> ���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����"> ���� </option>
</cfcase>
<cfcase value="����������">
<option value="��������"> �������� </option>
<option value="����������" selected="yes"> ���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����"> ���� </option>
</cfcase>
<cfcase value="�������� ���">
<option value="��������"> �������� </option>
<option value="����������"> ���������� </option>
<option value="�������� ���" selected="yes"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����"> ���� </option>
</cfcase>
<cfcase value="�������� �� �������">
<option value="��������"> �������� </option>
<option value="����������"> ���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������" selected="yes"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����"> ���� </option>
</cfcase>
<cfcase value="��������������">
<option value="��������"> �������� </option>
<option value="����������"> ���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������" selected="yes"> �������������� </option>
<option value="����"> ���� </option>
</cfcase>
<cfcase value="����">
<option value="��������"> �������� </option>
<option value="����������"> ���������� </option>
<option value="�������� ���"> �������� ��� </option>
<option value="�������� �� �������"> �������� �� ������� </option>
<option value="��������������"> �������������� </option>
<option value="����" selected="yes"> ���� </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>
</TR>

<TR>
<TD>
<font style="Arial" size="3">������� ��� �������� ���� ������  </font>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
disabled="disabled"
required="yes"
value="#Trim(cust.ex_num_id)#"
onFocus="set_field41();"
onBlur="setold_field41();"
wrap="virtual"/> 
</cftooltip>
</TD>
</TR>

<br>
<br>
<TR>
<TD>
</TD>
<TD align="center">
<INPUT Type="submit" value="��������"> &nbsp; &nbsp;
<INPUT Type="reset" value="���������">
</TD>
</TR>
</cfoutput>
</table>
<cfoutput>
<cfinput type="hidden" name="element" value="#Trim(URL.id1)#">
<cfinput type="hidden" name="element_id" value="#Trim(URL.id2)#">
<cfinput type="hidden" name="excuse" value=" ">
</cfoutput>
</cfform>

</cfif>

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


