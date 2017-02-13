<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<link href="tree_styles.css" rel="stylesheet" type="text/css">
 <script  src="cooltree.js" charset="iso-8859-7"></script>
 <script  src="tree_nodes.js" charset="iso-8859-7"></script>
 <script  src="tree_format.js" charset="iso-8859-7"></script>

<script type="text/javascript" language="JavaScript" charset="iso-8859-7">
var tree1 = new COOLjsTree("tree1", TREE_NODES, TREE_FORMAT);
</script>

 
<!---
<cfform action="#CGI.SCRIPT_NAME#" method="POST">
<p align="left">
<cftree 
NAME="NavTree"
WIDTH="250"
HEIGHT="370"
BORDER="YES">
<cftreeitem value="root" display="ΤΙΜΟΛΟΓΙΑ" EXPAND="Yes">

<cftreeitem parent="root" value="insert" display="Εισαγωγή στοιχείων" EXPAND="Yes">
<cftreeitem parent="insert" value="insert1" display="για εκδότες" EXPAND="Νο" href="insert.cfm">
<cftreeitem parent="insert" value="insert2" display="για λήπτες" EXPAND="Νο" href="n_insert.cfm">

<cftreeitem parent="root" value="search" display="Αναζήτηση στοιχείων" EXPAND="Yes">
<cftreeitem parent="search" value="search1" display="με ΑΦΜ" EXPAND="Yes">
<cftreeitem parent="search1" value="search11" display="για εκδότες" EXPAND="Νο" href="select.cfm">
<cftreeitem parent="search1" value="search12" display="για λήπτες" EXPAND="Νο" href="n_select.cfm">

<cftreeitem parent="search" value="search2" display="με Όνομα - Επώνυμο" EXPAND="Yes">
<cftreeitem parent="search2" value="search21" display="για εκδότες" EXPAND="Νο" href="epwnymia.cfm">
<cftreeitem parent="search2" value="search22" display="για λήπτες" EXPAND="Νο" href="n_epwnymia.cfm">

<cftreeitem parent="search" value="search3" display="με Δραστηριότητα" EXPAND="Yes">
<cftreeitem parent="search3" value="search31" display="για εκδότες" EXPAND="Νο" href="ergasia.cfm">
<cftreeitem parent="search3" value="search32" display="για λήπτες" EXPAND="Νο" href="n_ergasia.cfm">

<cftreeitem parent="search" value="search2" display="με ημερομηνία" EXPAND="Yes">
<cftreeitem parent="search2" value="search21" display="για εκδότες" EXPAND="Νο" href="date.cfm">
<cftreeitem parent="search2" value="search22" display="για λήπτες" EXPAND="Νο" href="n_date.cfm">

<cftreeitem parent="root" value="update" display="Ενημέρωση στοιχείων" EXPAND="Yes">
<cftreeitem parent="update" value="update1" display="με ΑΦΜ" EXPAND="Yes">
<cftreeitem parent="update1" value="update11" display="για εκδότες" EXPAND="Νο" href="find.cfm">
<cftreeitem parent="update1" value="update12" display="για λήπτες" EXPAND="Νο" href="n_find.cfm">

<cftreeitem parent="root" value="delete" display="Διαγραφή στοιχείων" EXPAND="Yes">
<cftreeitem parent="delete" value="delete1" display="με ΑΦΜ" EXPAND="Yes">
<cftreeitem parent="delete1" value="delete11" display="για εκδότες" EXPAND="Νο" href="timh.cfm">
<cftreeitem parent="delete1" value="delete12" display="για λήπτες" EXPAND="Νο" href="n_timh.cfm">


</cftree>
</p>
</cfform>
--->


<p style="position:absolute; left:340; top:35">
<cfinclude template="cal.cfm">
</p>


