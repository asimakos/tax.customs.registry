<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<cfform action="#CGI.SCRIPT_NAME#" method="POST">
<p align="left">
<cftree 
NAME="NavTree"
WIDTH="250"
HEIGHT="320"
BORDER="YES">
<cftreeitem value="root" display="���������" EXPAND="Yes">

<cftreeitem parent="root" value="insert" display="�������� ���������" EXPAND="Yes">
<cftreeitem parent="insert" value="insert1" display="��� ������" EXPAND="��" href="insert.cfm">
<cftreeitem parent="insert" value="insert2" display="��� �������" EXPAND="��" href="insert.cfm">

<cftreeitem parent="root" value="search" display="��������� ���������" EXPAND="Yes">
<cftreeitem parent="search" value="search1" display="�� ���" EXPAND="Yes">
<cftreeitem parent="search1" value="search11" display="��� �������" EXPAND="��" href="select.cfm">
<cftreeitem parent="search1" value="search12" display="��� ������" EXPAND="��" href="n_select.cfm">

<cftreeitem parent="search" value="search2" display="�� ����� - �������" EXPAND="Yes">
<cftreeitem parent="search2" value="search21" display="��� �������" EXPAND="��" href="epwnymia.cfm">
<cftreeitem parent="search2" value="search22" display="��� ������" EXPAND="��" href="n_epwnymia.cfm">

<cftreeitem parent="search" value="search3" display="�� �������������" EXPAND="Yes">
<cftreeitem parent="search3" value="search31" display="��� �������" EXPAND="��" href="ergasia.cfm">
<cftreeitem parent="search3" value="search32" display="��� ������" EXPAND="��" href="n_ergasia.cfm">

<cftreeitem parent="root" value="update" display="��������� ���������" EXPAND="Yes">
<cftreeitem parent="update" value="update1" display="�� ���" EXPAND="Yes">
<cftreeitem parent="update1" value="update11" display="��� �������" EXPAND="��" href="find.cfm">
<cftreeitem parent="update1" value="update12" display="��� ������" EXPAND="��" href="n_find.cfm">

<cftreeitem parent="root" value="delete" display="�������� ���������" EXPAND="Yes">
<cftreeitem parent="delete" value="delete1" display="�� ���" EXPAND="Yes">
<cftreeitem parent="delete1" value="delete11" display="��� �������" EXPAND="��" href="timh.cfm">
<cftreeitem parent="delete1" value="delete12" display="��� ������" EXPAND="��" href="n_timh.cfm">

</cftree>
</p>


<p style="position:absolute; left:340; top:35">
<cfinclude template="cal.cfm">
</p>


</cfform>
