
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="/expiration/expire.cfm">

<cfset REQUEST.use=cookie.per>

<cfajaximport tags="cftooltip">

<cfoutput>

<CFSTOREDPROC 
procedure="find_dupl_smuggler" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" maxlength="1000" 
cfsqltype="CF_SQL_VARCHAR" 
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" maxlength="100" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(URL.id2)#">

<cfprocresult name="cust">
</CFSTOREDPROC>

</cfoutput>

<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
	<title>���� &nbsp;  �������� &nbsp;  �������� - ��������� &nbsp; ������ &nbsp; �������� &nbsp; �����������</title>
<SCRIPT src="tel_extranew.js" charset="iso-8859-7">
	</SCRIPT>
<SCRIPT src="tel_plasta.js" charset="iso-8859-7">
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
<a href="telmain.cfm">
�������� ����� </a> &nbsp; / &nbsp; ��������� &nbsp; ������ &nbsp;�������� &nbsp;�����������
</font>
</p>

<br>
<cfif cust.recordcount EQ 0>

<p align="center"><font style="Arial"><b><h2> ��� </h2> �������� ������ �������� ����������� ��� ������� �� �������� (���,���,����������,��.����.��������) ����!</b></font></p>

<cfelse>

<cfform name="form_data" action="tel_duplupdate_apo.cfm" method="post" onsubmit="return telupdate_data();">
<div align="center"><font style="Arial" size="4"><b>
��������� &nbsp; ������ &nbsp; �������� &nbsp; �����������</b></font>
</div>

<br>
<br>

<table align="center" bgcolor="#80FF80">
<cfoutput>
<TR>
<TD width="550">
<font style="Arial" size="3">
 ����� - �������: &nbsp; </font>
<cfinput type="text" name="epwnymia" message="�������� �������� ��� ������ ���� ��� ��������!"
required="yes"  value="#Trim(cust.epwnymia)#" onFocus="set_field1();" onBlur="setold_field1();"> 
</TD>

<TD align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">&nbsp; ������: &nbsp; </font>
<cfinput type="text" name="titlos" message="�������� �������� ��� ������ ���� ��� �����!"
required="yes"  value="#Trim(cust.titlos)#"
onFocus="set_field2();" onBlur="setold_field2();"> 
</TD> 
 
<TD align="right">
<font style="Arial" size="3"> ��������: &nbsp; </font>
<!---
<cfinput type="text" name="afm" 
message="�������� �������� ��� ������ ���� ��� ���!"
validate="integer"
required="yes"
disabled="disabled"
value="#Trim(cust.afm)#"
maxlength="10"
onFocus="set_field3();" onBlur="setold_field3();"> 
--->
<cftextarea name="afm" rows="3" cols="15" 
message="�������� �������� �� �������� ������������ ��� �����������!"
required="yes" 
disabled="disabled"
value="#Trim(cust.afm)#"
onFocus="set_field3();" onBlur="setold_field3();"
wrap="virtual"/> 
</TD>
</TR>


<TR>
<TD width="200">
<font style="Arial" size="3">������� &nbsp; ���: &nbsp;  </font>
<cfinput type="text" name="doy"
message="�������� �������� ��� ����� ��� ���!"
required="yes"
value="#Trim(cust.id_doy)#"
onFocus="set_field4();" onBlur="setold_field4();"/> 
</TD>

<TD align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">&nbsp; ����: &nbsp; &nbsp; </font>
<cfinput type="text" name="odos" 
message="�������� �������� ��� ������ ���� ��� ���!"
required="yes"
value="#Trim(cust.odos)#"
onFocus="set_field5();" onBlur="setold_field5();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> �������:  </font>
<cfinput type="text" name="ar" 
message="�������� �������� ��� ������ ���� ��� ������!"
validate="integer"
required="yes"
value="#Trim(cust.ar)#"
maxlength="4"
onFocus="set_field6();" onBlur="setold_field6();"> 
</TD>
</TR>

<TR>
<TD width="300">
<font style="Arial" size="3"> ������. &nbsp; �������: &nbsp;  </font>
<cfinput type="text" name="taxk" 
message="�������� �������� ��� ������ ���� ��� ����������� ������!"
validate="integer"
required="yes"
value="#Trim(cust.taxk)#"
maxlength="6"
onFocus="set_field7();" onBlur="setold_field7();"> 
</TD>

<TD align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="Arial" size="3">&nbsp; ����: &nbsp; &nbsp; </font>
<cfinput type="text" name="poli" 
message="�������� �������� ��� ������ ���� ��� ����!"
required="yes"
value="#Trim(cust.poli)#"
onFocus="set_field8();" onBlur="setold_field8();"> 
</TD>

<TD align="right">
<font style="Arial" size="3"> ����: </font>
<cfinput type="text" name="country" 
message="�������� �������� ��� ������ ���� ��� x���!"
required="yes"
value="#Trim(cust.country)#"
onFocus="set_field15();" onBlur="setold_field15();"> 
</TD>

</TR>

<TR>

<TD width="300">
<font style="Arial" size="3">������������� - ���������: &nbsp; </font>
&nbsp;
<cftextarea name="ergas" rows="3" cols="15" 
message="�������� �������� ��� ������ ���� ��� ���� ��������!"
required="yes" 
value="#Trim(cust.ergasia)#"
onFocus="set_field9();" onBlur="setold_field9();"
wrap="virtual"/> 
</TD>

<TD align="center">
<a href="javascript:void(0);" onclick="items_win();">
<font style="Arial" size="3">��������. &nbsp;������������: </font>
</a>
 &nbsp;
<!---
<cfinput type="text" name="smuggle" 
message="�������� �������� ��� ������ ���� ��� ����������� ������������!"
required="yes" 
value="#Trim(cust.smuggle)#"
onFocus="set_field30();" onBlur="setold_field30();"> 
--->
<cftextarea name="smuggle" rows="3" cols="15" 
message="�������� �������� ��� ������ ���� ��� ����������� ������������!"
required="yes" 
value="#Trim(cust.smuggle)#"
onFocus="set_field30();" onBlur="setold_field30();"
wrap="virtual"/> 
</TD>

<TD width="450" align="right">
<font style="Arial" size="3">���. ����������: </font>
<cftextarea type="text" name="legal" 
message="�������� �������� ��� ������ ���� ��� ������ ���������!"
required="yes" 
height="20"
width="5"
value="#Trim(cust.legal_st)#"
onFocus="set_field16();" onBlur="setold_field16();"/> 
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
required="yes"
readonly="yes"
value="#Trim(cust.m_period)#"
onFocus="set_field18();"
onBlur="setold_field18();"
wrap="virtual"/> 
</cftooltip>
</TD>

<TD  align="right">
<font style="Arial" size="3"> �������� &nbsp; ����������: </font>
<cftextarea type="text" name="afm_nomiko" 
message="�������� �������� ��� ������ ���� ��� ���!"
value="#Trim(cust.afm_nomiko)#"
required="yes"
height="20"
width="5"
maxlength="10"
onFocus="set_field40();" onBlur="setold_field40();"/> 
</TD>

<!---
<TD>
<font style="Arial" size="3">������ ��� �����:  &nbsp;</font>
<cfinput type="text" name="tax" 
message="�������� �������� ��� ������ ���� ��� ������� - ������!"
validate="integer"
required="yes"
value="#Val(cust.tax_duty)#"
maxlength="10"
onFocus="set_field17();" onBlur="setold_field17();"> 
</TD>

<TD align="center">
 
<font style="Arial" size="3">�������� &nbsp;���� &nbsp;���&nbsp; ��������:  &nbsp;</font>
<cfinput type="text" name="fine" 
message="�������� �������� ��� ������ ���� ��� ���� - ��������!"
validate="numeric"
required="yes"
value="#Val(cust.fine)#"
maxlength="20"
onFocus="set_field18();" onBlur="setold_field18();"> 
</TD>

<TD align="right">
<font style="Arial" size="3">������:  &nbsp;</font>
<cfinput type="text" name="sum_fine" 
message="�������� �������� ��� ������ ���� ��� ������ ������ - �����!"
validate="numeric"
required="yes"
value="#Val(cust.sum_fine)#"
maxlength="20"
onFocus="set_field19();" onBlur="setold_field19();"> 
</TD>
--->

</TR>

<TR>

<TD>
<a href="javascript:void(0);" onclick="essay_win();">
<font style="Arial" size="3">����. ���. ������� �������� � ����� ��������: </font>
</a>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="essay" rows="3" cols="20" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
required="yes"
readonly="yes"
value="#Trim(cust.num_id)#"
onFocus="set_field20();"
onBlur="setold_field20();"
wrap="virtual"/> 
</cftooltip>
</TD>

<TD align="center" width="1200">
<font style="Arial" size="3">���. &nbsp; ������������� &nbsp; ����������: &nbsp;  </font>
<cfinput type="text" name="per"
message="�������� �������� ��� ����� ��� ������������ �/���!"
required="yes"
value="#Trim(cust.id_perif)#"
onFocus="set_field21();" onBlur="setold_field21();"/>
</TD>
</TR>

<TR>

<TD>
<font style="Arial" size="3"> ���� ������ ����� 14 &nbsp; �. 2523/97: &nbsp;</font>
<cfselect name="article" required="Yes" multiple="no"
message="�������� ��� ����!" size="1">

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
<font style="Arial" size="3"> �������: &nbsp; &nbsp;</font>
<cfselect name="elegxos" required="Yes" multiple="no"
message="�������� ��� ����!" size="1">

<cfswitch expression="#Trim(cust.eidos_elegxos)#">
<cfcase value="��������">
<option value="��������" selected="yes">�������� </option>
<option value="����������">���������� </option>
<option value="�����������">����������� </option>
<option value="���������">���������</option>
<option value="����">����</option>
</cfcase>
<cfcase value="����������">
<option value="��������">�������� </option>
<option value="����������" selected="yes">���������� </option>
<option value="�����������">����������� </option>
<option value="���������">���������</option>
<option value="����">����</option>
</cfcase>
<cfcase value="�����������">
<option value="��������">�������� </option>
<option value="����������">���������� </option>
<option value="�����������" selected="yes">����������� </option>
<option value="���������">���������</option>
<option value="����">����</option>
</cfcase>
<cfcase value="���������">
<option value="��������">�������� </option>
<option value="����������">���������� </option>
<option value="�����������">����������� </option>
<option value="���������" selected="yes">���������</option>
<option value="����">����</option>
</cfcase>
<cfcase value="����">
<option value="��������">�������� </option>
<option value="����������">���������� </option>
<option value="�����������">����������� </option>
<option value="���������">���������</option>
<option value="����" selected="yes">����</option>
</cfcase>
</cfswitch>

</cfselect>
</TD>

</TR>

<TR>
<TD>
<a href="javascript:void(0)" onclick="tel_violation();">
<font style="Arial" size="3">������� ���������:  </font>
</a>
<cftooltip tooltip="�������� �� ������ ��� �������� ������">
<cftextarea name="com" rows="3" cols="25"
message="�������� �������� ��� ������ ���� ��� ��������!"
required="yes"
readonly="yes"
value="#Trim(cust.comments)#"
onFocus="set_field10();"
onBlur="setold_field10();"
wrap="virtual"/> 
</cftooltip>
</TD>

<!---
</TR>

<TR>
--->
<TD colspan="4">
<font style="Arial" size="3"> ��������� &nbsp; ��������� </font> 

<!---
<cfset res=#Trim(cust.apotel_per)#>

<cfif #len(res)# GT 22>

<cfinput type="radio" name="apotel" 
VALUE="������ ��������" Checked="no"> ������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="�������� ��������" Checked="no"> ��������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="������ KAI EIKONIKA ��������" Checked="yes"> ������ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="�� ���������" Checked="no"> �� ���������
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
</p>
<cfelse>

<cfif #Findnocase("������","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="������ ��������" Checked="yes"> ������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="�������� ��������" Checked="no"> ��������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="������ KAI EIKONIKA ��������" Checked="no"> ������ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="�� ���������" Checked="no"> �� ���������
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
</p>
<cfelseif #Findnocase("��������","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="������ ��������" Checked="no"> ������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="�������� ��������" Checked="yes"> ��������
&nbsp; &nbsp;&nbsp; &nbsp;
<cfinput type="radio" name="apotel" 
VALUE="������ KAI EIKONIKA ��������" Checked="no"> ������ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="�� ���������" Checked="no"> �� ���������
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  &nbsp;
</p>

<cfelseif #Findnocase("��","#Trim(cust.apotel_per)#")# NEQ 0>
<cfinput type="radio" name="apotel" 
VALUE="������ ��������" Checked="no"> ������
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="�������� ��������" Checked="no"> ��������
&nbsp; &nbsp;&nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="������ KAI EIKONIKA ��������" Checked="no"> ������ - EIKONIKA
<br>
<p align="center">
&nbsp; &nbsp; 
<cfinput type="radio" name="apotel" 
VALUE="�� ���������" Checked="yes"> �� ���������
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  &nbsp;
</p>

</cfif>

</cfif>
--->

<cftextarea name="apotel" rows="3" cols="28" 
message="�������� �������� ��� ������ ���� ��� ���������� �������!"
required="yes"
readonly="yes"
value="#Trim(cust.apotelesma)#"
onFocus="set_field110();"
onBlur="setold_field110();"
wrap="virtual"/> 

</TD>

<TD>
<font style="Arial" size="3"> ������������ - ������: &nbsp;</font>
<cfselect name="remark" required="Yes" multiple="no"
message="�������� ��� ����!" size="1">

<cfswitch expression="#Trim(cust.remark)#">
<cfcase value="���������">
<option value="���������" selected="yes"> ��������� </option>
<option value="�� ���������"> �� ��������� </option>
<option value="����� ��� ����� ���������"> ����� ��� ����� ��������� </option>
</cfcase>
<cfcase value="�� ���������">
<option value="���������"> ��������� </option>
<option value="�� ���������" selected="yes"> �� ���������  </option>
<option value="����� ��� ����� ���������"> ����� ��� ����� ��������� </option>
</cfcase>
<cfcase value="����� ��� ����� ���������">
<option value="���������"> ��������� </option>
<option value="�� ���������"> �� ���������  </option>
<option value="����� ��� ����� ���������" selected="yes"> ����� ��� ����� ��������� </option>
</cfcase>
</cfswitch>

</cfselect>
</TD>

</TR>

<TR>
<TD>
<a href="javascript:void(0);" onclick="exessay_win();">
<font style="Arial" size="3">������� ����������� �� ��� �����������  </font>
</a>
<cftooltip tooltip="�������� ��� ������� ��� �������� ��� ������">
<cftextarea name="ex_essay" rows="5" cols="23" 
message="�������� �������� ��� ������ ���� ��� ������ �������!"
required="yes"
readonly="yes"
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
<TD colspan="5" align="center">
<INPUT Type="submit" value="���������"> &nbsp; &nbsp;
<INPUT Type="reset" value="���������">
</TD>
</TR>
</cfoutput>
</table>
<cfoutput>
<cfinput type="hidden" name="excuse" value=" ">
<cfinput type="hidden" name="element" value="#Trim(URL.id1)#">
<cfinput type="hidden" name="element_id" value="#URL.id2#">
<cfinput type="hidden" name="doc_date" value="#cust.docum_date#">
<cfinput type="hidden" name="element_nomiko" value="#Trim(cust.afm_nomiko)#">
<cfinput type="hidden" name="outdata1" value="#Trim(cust.epwnymia)# * #Trim(cust.titlos)# * #Trim(cust.odos)# * #Trim(cust.ar)# * #Trim(cust.taxk)# * #Trim(cust.poli)# * #Trim(cust.country)# * #Trim(cust.ergasia)# * #Trim(cust.smuggle)# * #Trim(cust.legal_st)# *">
<cfinput type="hidden" name="outdata2" value="#Trim(cust.id_doy)# * #Trim(cust.id_perif)# * #Trim(cust.num_id)# * #Trim(cust.comments)# * #Trim(cust.ex_num_id)# *">
<cfinput type="hidden" name="outdata3" value="#Trim(cust.m_period)# * #cust.docum_date# * #Trim(cust.remark)# * #Trim(cust.apotelesma)# * #Trim(cust.article_14)# * #Trim(cust.eidos_elegxos)# *">
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
