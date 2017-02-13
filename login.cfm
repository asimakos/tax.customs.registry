


<cfif FindNoCase('Firefox','#CGI.HTTP_USER_AGENT#') EQ 0>
<cflocation url="browser.cfm">
</cfif>

<cfajaximport tags="cftooltip">

<html>

<head>

	<title>ΣΔΟΕ   Κεντρική   Υπηρεσία</title>
	<SCRIPT src="plasta.js" charset="iso-8859-7">
	</SCRIPT>
	
</head>

<body>

<cflayout name="thelayout" type="border">

<cflayoutarea position="top" align="center">
<font style="color:#0000CC " size="+2"> ΥΠΟΥΡΓΕΙΟ ΟΙΚΟΝΟΜΙΚΩΝ </font> <br/>
<font style="color: #996666" size="+1"> ΣΩΜΑ ΔΙΩΞΗΣ ΟΙΚΟΝΟΜΙΚΟΥ ΕΓΚΛΗΜΑΤΟΣ (ΣΔΟΕ) </font>
</cflayoutarea>

<cflayoutarea  position="center" align="center" overflow="auto">
<p align="center">
<img src="../plasta/images/sima2.jpg" border="2" width="105" height="110">
<!---
 <img src="../plasta/images/ypeeban.gif" border="2" width="760" height="96">
--->
</p>

<p align="center" style="text-align:justify"> <img src="../plasta/images/ypee.jpg" border="1"  width="200" height="198" align="left"> </p>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!---
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="376" height="184" id="clock" style="position:absolute; left:620; top:130">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="clock.swf" />
<param name="quality" value="high" />
<param name="bgcolor" value="#ffffff" />
<embed src="clock/clock.swf" quality="high" bgcolor="#ffffff" width="376" height="184" name="clock" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"  />
</object>
--->


<cfform name="Logname" action="process.cfm" method="POST">
<table align="right" bgcolor="#00ffff" style="position:absolute; left:460; bottom:25">
<TR>
<TD align="right">
Όνομα &nbsp; Χρήστη:
</TD>
<TD>
<CFINPUT TYPE="Text" Name="LoginID" message="Εισάγετε έγκυρο όνομα χρήστη!"
required="Yes" maxlength="10"> 
</TD>
</TR>
<TR>
<TD align="right">
Κωδικός &nbsp; Χρήστη:
</TD>
<TD>
<CFINPUT type="Password" name="LoginPassword" message="Εισάγετε έγκυρο κωδικό χρήστη!"
required="Yes" maxlength="20">
</TD>
</TR>
<TR>
<br>
</TR>
<TR>

<cfheader name="expires" value="#NOW()#">
<cfheader name="pragma" value="no-cache">
<cfheader name="cache-control" value="no-cache,no-store,must-revalidate">

<cfset cookie.counter=0>

<cfinput type="hidden" name="usercount" value="1">

<TD colspan="2" align="center">
<INPUT Type="submit" value="Είσοδος"> &nbsp; &nbsp;
<INPUT Type="reset" value="Καθαρισμός">
</TD>
</TR>
</table>
</cfform>


<p align="left"> &nbsp; &nbsp; <strong> <font size="4"> Σώμα Δίωξης Οικονομικού Εγκλήματος </font></strong>  </p>
 <p align="left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong> <font size="3"> Κεντρική Υπηρεσία</font></strong>
   </p>
<p align="left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong> <font size="3"> Πειραιώς 207 - Αλκίφρονος 92 </font></strong>
   </p>
  <p align="left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
  <strong><font size="3">
  11853, Αθήνα </font></strong>
  </p>


</cflayoutarea>

<cflayoutarea position="bottom" align="center" splitter="true">
<font style="color:#666666" size="3" > &copy; Copyright  Σ.Δ.Ο.Ε </font> </br>
<font style="color:#666666" size="3" > Αθήνα 2010 </font>
</cflayoutarea>

</cflayout>

</body>
</html>
