<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<cfscript>

if (cookie.counter != 1) {

termuser=createObject("component","user");
termuser.terminate();

}

</cfscript>

 
<cfcontent type="text/html;charset=iso-8859-7">

<html>
<head>
   <title>���� &nbsp;  �������� &nbsp;  �������� - �������� &nbsp; ����� &nbsp; ��� &nbsp; ������ &nbsp; ��� &nbsp; �������� &nbsp; �������� </title>
  <link href="tree_styles.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="cooltree.js" charset="iso-8859-7"></script>
  <script type="text/javascript" src="tree_nodes.js" charset="iso-8859-7"></script>
  <script type="text/javascript" src="tree_format.js" charset="iso-8859-7"></script>

</head>

<body>

<style>

a.kon:hover {color:#3333CC;}

</style>

<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ��������� ����������� </font> <br/>
<font style="color: #996666" size="+1"> ���� ������ ����������� ���������� (����) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
�������� �����  &nbsp; &nbsp; &nbsp; <b> ������ - �������� &nbsp; ��������</b>
</font>
</p>

<cftooltip tooltip="�������� ��� ������ ������������">
<p style="position:absolute;left:870;top:5">
<a class="kon" href="tel/telmain.cfm">
<b> ����������� </b>
</a>
</p>
</cftooltip>

<div id="layer1" style="position:absolute;left:10;top:45;width=250;height=600;z-index:1;">

<script type="text/javascript">
    var tree1 = new COOLjsTree("tree1", TREE_NODES, TREE_FORMAT);
  </script>

</div>

<p style="position:absolute;left:850;top:50">
<img src="../plasta/images/sima2.jpg" border="1" width="150" height="150">
</p>

<!---
<cfif userid EQ "admin">

<cfinclude template="full_tree.cfm">
<cfelse>
<cfinclude template="part_tree.cfm">
</cfif>
--->
<!---
<p style="position:absolute; left:340; top:35">
<cfinclude template="cal.cfm">
</p>
--->

<cftooltip tooltip="������">
<a href="logout.cfm" onclick="alert('� ������ ������ ��� ��������� ��������!');">
<img src="../plasta/images/logout3.jpg" style="position:absolute;left:30;bottom:5"
hspace="50" border="1" width="40" height="40" align="left" >
</a>
</cftooltip>

<p align="right" style="position:absolute;left:850;top:260"><font size="4"><b>
�������� &nbsp; ������������ </b>
</font><br>
<font size="3">
<b>T��.</b> &nbsp; 210 3375276
<br>
210 3427367
<br>
210 3424390
<br>
<b>
Fax. </b>&nbsp; 210 6980529
<br>
<b>
Email &nbsp; info@ypee.gr
</b>
</font>
</p>

<p style="position:absolute; left:270; bottom:30">
<cfoutput>

<cfset REQUEST.use=#Trim(cookie.per)#>

���������: &nbsp;<b>
<cfif REQUEST.use EQ "������������">
�������� &nbsp; ��������
<cfelse>
#REQUEST.use#
</cfif>
</b>&nbsp;&nbsp; - &nbsp; &nbsp; �������:&nbsp; <b>#cookie.perid# </b> 
</cfoutput>
</p>

<br>

</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  �.�.�.� </font> </br>
<font style="color:#666666" size="3" > ����� 2010 </font>
</cflayoutarea>

</cflayout>

</body>
</html>
