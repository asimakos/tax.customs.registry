<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

 <cfinclude template="/expiration/expire.cfm">
 <cfajaximport tags="cftooltip">
 
<cfcontent type="text/html;charset=iso-8859-7">
 
<html>
<head>
   <title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - Κεντρική &nbsp; Οθόνη &nbsp; για &nbsp; Λαθρέμπορους</title>
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
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>

</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="left">
<font size="2">
Κεντρικό μενού  &nbsp; &nbsp; &nbsp; <b> ΛΑΘΡΕΜΠΟΡΟΙ </b>
</font>
</p>

<cftooltip tooltip="Μετάβαση στο μητρώο πλαστών-εικονικών στοιχείων">
<p style="position:absolute;left:800;top:5">
<a class="kon" href="../main.cfm">
<b> ΠΛΑΣΤΑ - ΕΙΚΟΝΙΚΑ &nbsp; ΣΤΟΙΧΕΙΑ </b>
</a>
</p>
</cftooltip>

<div id="layer1" style="position:absolute;left:10;top:45;width=250;height=600;z-index:1;">

<script type="text/javascript" language="JavaScript" charset="iso-8859-7">
var tree1 = new COOLjsTree("tree1", TREE_NODES, TREE_FORMAT);
</script>

</div>

<p style="position:absolute;left:850;top:150">
<img src="../images/sima2.jpg" border="1" width="150" height="150">
</p>

<br>
<br>

<!---
<cfset userid=#cookie.perid#>

<cfif userid EQ "admin">

<cfinclude template="full_tree.cfm">
<cfelse>
<cfinclude template="part_tree.cfm">
</cfif>

<cftooltip tooltip="Έξοδος">
<a href="logout.cfm" onclick="alert('Ο χρόνος χρήσης της εφαρμογής τελείωσε!');">
<img src="../plasta/images/logout3.jpg" hspace="50" border="1" width="40" height="40" align="left" >
</a>
</cftooltip>


<p align="right"><font size="4"><b>
Στοιχεία &nbsp; Επικοινωνίας </b>
</font><br>
<font size="3">
<b>Tηλ.</b> &nbsp; 210 3375276
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

--->

<p style="position:absolute; left:270; bottom:30">
<cfoutput>

<cfset REQUEST.use=#Trim(cookie.per)#>

Ταυτότητα: &nbsp;<b>
<cfif REQUEST.use EQ "ΔΙΑΧΕΙΡΙΣΤΗΣ">
ΚΕΝΤΡΙΚΗ &nbsp; ΥΠΗΡΕΣΙΑ
<cfelse>
#REQUEST.use#
</cfif>
</b>&nbsp;&nbsp; - &nbsp; &nbsp; Χρήστης:&nbsp; <b>#REQUEST.use# </b> 
</cfoutput>
</p>

<br>

</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>

</cflayout>

</body>
</html>
