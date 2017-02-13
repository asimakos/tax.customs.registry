<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">

<CFSTOREDPROC 
procedure="find_daterange_user_publisher" 
datasource="plasta"
returncode="Yes">

<CFPROCParam 
type="In" 
dbvarname="@Arg1" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(URL.id1)#">

<CFPROCParam 
type="In" 
dbvarname="@Arg2" 
cfsqltype="CF_SQL_VARCHAR"
value="#URL.id2#">

<CFPROCParam 
type="In" 
dbvarname="@Arg3" 
cfsqltype="CF_SQL_VARCHAR"
value="#Trim(URL.id3)#">

<cfprocresult name="date_range">
</CFSTOREDPROC>


<cfcontent type="application/msexcel;charset=utf-8">

<cfheader name="Content-Disposition" value="filename=Timologia_ekd.xls">

<html>
<head>
<title> ����� &nbsp;������� &nbsp;����������</title>
</head>
<body>
<br>
<p align="center">
����� &nbsp;������� &nbsp;����������
</p>
<br>
<table>
<tr>

<th>
�������� 
</th>

<th>
����������� ������
</th>

<th>
��� ������
</th>

<th>
���
</th>

<th>
����

</th>

<th>
�������
</th>

<th>
������������ �������

</th>

<th>
����
</th>

<th>
����
</th>

<th>
�������������
</th>

<th>
�������� ���������
</th>

<th>
������� ����������
</th>

<th>
��� ������� ����������
</th>

<th>
������������� ��������
</th>

<!---
<th>
������ ���������
</th>

<th>
������ ����
</th>

<th>
���� ���
</th>
--->
<th>
������� �������� ������� �������� � ����� ��������
</th>

<th>

������� ������������� ����������

</th>

<th>

������� &nbsp; ���������

</th>

<th>

��������� &nbsp; ���������

</th>
<th>

���������� �����������

</th>

<th>

��� �����

</th>

<th>
���� ������ ����� 14   �. 2523/97
</th>

<th>
�����   �������
</th>

<th>
�����   ���������
</th>

<th>
������� ��� ���������� ��� ������
</th>

</tr>

<cfoutput query="date_range">
<tr>
<td>
#epwnymia#

</td>
<td>

#titlos#

</td>
<td>

#DE(p_afm)#

</td>
<td>

#id_doy#

</td>
<td>

#odos#

</td>
<td>

#ar#

</td>
<td>

#taxk#

</td>
<td>

#poli#

</td>

<td>

#country#

</td>

<td>

#ergasia#

</td>
<td>

#rel_affair#

</td>
<td>

#legal_st#

</td>

<td>
#DE(afm_nomiko)#

</td>

<td>
#m_period#
</td>

<!---
<td>

#LSNumberFormat(num_elements,",_______")#
</td>
<td>

#LSNumberFormat(c_value,"-_______.__")#

</td>
<td>

#LSNumberFormat(vat,"-_______.__")#

</td>
--->

<td>
#num_id#
</td>
<td>

#id_perif#

</td>
<td>

#comments#

</td>

<td>

#apotel_per#

</td>
<td>

#date_id#

</td>
<td>

#DE(r_afm)#


</td>

<td>
#article_14#

</td>

<td>
#eidos_stoixeia#

</td>

<td>
#eidos_elegxos#

</td>

<td>
#ex_num_id#

</td>

</tr>
</cfoutput>

</table>

</body>
</html>