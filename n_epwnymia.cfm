
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfinclude template="expire.cfm">
<cfajaximport tags="cftooltip">

<html>
<head>
    <title>ΣΔΟΕ &nbsp;  Κεντρική &nbsp;  Υπηρεσία - (Όνομα - Επώνυμο) &nbsp; Ληπτών &nbsp;Τιμολογίων  </title>
	<SCRIPT src="plasta.js">
	</SCRIPT>
</head>

<body>
<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="hidden">
<p align="left">
<font size="2">
<a href="main.cfm">
Κεντρικό μενού </a> &nbsp; / &nbsp; Αναζήτηση ληπτών τιμολογίων με Επωνυμία: 
</font>
</p>


<p align="center">
<cfform name="form_afm" action="n_epwnymia_apo.cfm" method="post">
<font face="Arial" size="3">
Εισαγωγή &nbsp; Επωνυμίας:&nbsp;
</font>
<cfinput type="text" 
name="t_afm" 
onFocus="set_Color();"
onBlur="setold_Color();"
Message="Παρακαλώ εισάγετε ένα έγκυρο όνομα-επώνυμο!" 
Required="Yes"
maxlength="50">
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<INPUT Type="submit" value="Αναζήτηση"> 
&nbsp;
&nbsp;
<INPUT Type="button" value="Καθαρισμός" onClick="clear_afm();">
</cfform>
</p>

</cflayoutarea>


<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>
</cflayout>

</body>
</html>
