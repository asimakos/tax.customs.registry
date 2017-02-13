<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Ημερολόγιο</title>
</head>

<body>

<cfform name="form1" format="Flash" skin="haloSilver" width="340" height="270">

<cfcalendar name="SelectDate"
selectedDate="#dateformat(now(),'dd/mm/yyyy')#"
startRange="#dateformat(now()-5,'dd/mm/yyyy')#"
endRange="#dateformat(now()-1,'dd/mm/yyyy')#"
style="rollOverColor:##FF0000"
width="400" height="350">

</cfform>

</body>
</html>
