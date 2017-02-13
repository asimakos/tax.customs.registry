

function open_manipulate(){

var little=window.open("telmanipulate.cfm","_blank","menubar,toolbar,scrollbars,width=700,height=600,resizable");
little.moveTo(80,10);
little.focus();

return false;
}

function open_request(){

var little=window.open("telrequest.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();

return false;
}

function extraduplicate_newdata(){

var my_parent=window.opener;
var y=trim(my_parent.document.form_afm.dupl_perif.value);

document.form_data.smuggle.value=my_parent.document.form_afm.dupl_smuggle.value;
document.form_data.period.value=my_parent.document.form_afm.dupl_period.value;
document.form_data.essay.value=my_parent.document.form_afm.dupl_doc.value;
document.form_data.com.value=my_parent.document.form_afm.dupl_violate.value;
document.form_data.apotel.value=my_parent.document.form_afm.dupl_description.value;
document.form_data.ex_essay.value=my_parent.document.form_afm.dupl_exdoc.value;
document.form_data.doc_date.value=my_parent.document.form_afm.dupl_docdate.value;

switch(y){
case "100":
document.form_data.per.value="100";
break;
case "110":
document.form_data.per.value="110";
break;
case "120":
document.form_data.per.value="120";
break;
case "130":
document.form_data.per.value="130";
break;
case "140":
document.form_data.per.value="140";
break;
case "150":
document.form_data.per.value="150";
break;
case "160":
document.form_data.per.value="160";
break;
case "170":
document.form_data.per.value="170";
break;
case "180":
document.form_data.per.value="180";
break;
case "190":
document.form_data.per.value="190";
break;
case "200":
document.form_data.per.value="200";
break;
case "210":
document.form_data.per.value="210";
break;
case "220":
document.form_data.per.value="220";
break;
case "230":
document.form_data.per.value="230";
break;
case "240":
document.form_data.per.value="240";
break;
case "250":
document.form_data.per.value="250";
break;
case "260":
document.form_data.per.value="260";
break;
}
}

function duplicate_newdata(){

var my_parent=window.opener;

document.form_data.smuggle.value=my_parent.document.form_afm.dupl_smuggle.value;
document.form_data.period.value=my_parent.document.form_afm.dupl_period.value;
document.form_data.essay.value=my_parent.document.form_afm.dupl_doc.value;
document.form_data.per.value=my_parent.document.form_afm.dupl_perif.value;
document.form_data.com.value=my_parent.document.form_afm.dupl_violate.value;
document.form_data.apotel.value=my_parent.document.form_afm.dupl_description.value;
document.form_data.ex_essay.value=my_parent.document.form_afm.dupl_exdoc.value;
document.form_data.doc_date.value=my_parent.document.form_afm.dupl_docdate.value;

}

function clear_del(){

document.dellogin.reset();
}

function userupdate(){

var myresult=" ";
var x1=document.dellogin.deluser.value;
var x2=document.dellogin.delpass.value;
jsuser = new remotedel();

myresult=jsuser.uplogin(x1,x2);

if (myresult=="y"){

document.getElementById("data2").style.visibility="visible";
}
else if (myresult=="n"){
alert("Ακυρος Χρήστης! Παρακαλώ προσπαθήστε ξανά!");
}
}

function userrequest(){

var myresult=" ";
var y1=document.form_request.type1.length;
var z=trim(document.form_request.username.value);
var x2=document.form_request.request.value;

if (trim(x2).length==0){
alert("Παρακαλώ συμπληρώστε το πεδίο της περιγραφής αιτήματος!");
return;
}

for(var i=0;i<y1;i++){

if (document.form_request.type1[i].checked==true)
var x1=document.form_request.type1[i].value;
}

jsuser = new remotedel();
myresult=jsuser.insertdata(x1,x2,z);

if (myresult=="y"){
alert("Το αίτημα σας καταχωρήθηκε με επιτυχία! Σύντομα θα επεξεργαστεί.");
document.form_request.reset();
}
}

function userdelete(){

var myresult=" ";
var x1=document.dellogin.deluser.value;
var x2=document.dellogin.delpass.value;
jsuser = new remotedel();

myresult=jsuser.dellogin(x1,x2);

if (myresult=="y"){

document.getElementById("data2").style.visibility="visible";
}
else if (myresult=="n"){
alert("Ακυρος Χρήστης! Παρακαλώ προσπαθήστε ξανά!");
}
}

function insert_select(){

var x=document.form_data.apotel.value;

if (document.form_data.ex_afm.value==" "){
var little=window.open("tel_afm.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

if (document.form_data.ex_afm.value!=" ")
return true;

if (x==" "){
alert("Παρακαλώ εισάγετε μια έγκυρη τιμή ελέγχου ΑΦΜ!");
return false;
}

}


function date_select(){

var x=document.date_sel.perif.value;

if (x==" "){
alert("Παρακαλώ επιλέξτε μια έγκυρη ταυτότητα χρήστη!");
return false;
}
else
return true;
}

function update_datanew(){

//if (confirm("Do you want to update?"))

if (confirm("Επιθυμείτε να γίνει ενημέρωση της εγγραφής?"))
return true;
else
return false;

}

function save_excuse(){

var my_parent=window.opener;
var x=window.document.form_excuse.excu.value;

my_parent.document.form_data.excuse.value=x;

window.close();
}


function n_delete_data(){

//if (confirm("Do you want to delete?"))
if (confirm("Επιθυμείτε να γίνει διαγραφή της εγγραφής?"))
{
if (document.form_data.excuse.value==" "){
var little=window.open("n_excuse.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
if (document.form_data.excuse.value!=" ")
return true;
}
else{
return false;
}
}


function telupdate_data(){

//if (confirm("Do you want to delete?"))
var y=trim(document.form_data.excuse.value);

if (confirm("Επιθυμείτε να γίνει ενημέρωση της εγγραφής?"))
{
if (y.length==0){
var little=window.open("telupexcuse.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
if (y.length>0)
return true;
}
else{
return false;
}
}

function teldelete_data(){

//if (confirm("Do you want to delete?"))
var y=trim(document.form_data.excuse.value);

if (confirm("Επιθυμείτε να γίνει διαγραφή της εγγραφής?"))
{
if (y.length==0){
var little=window.open("telexcuse.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
if (y.length>0)
return true;
}
else{
return false;
}
}


function session_message(){

alert("Ο χρόνος χρήσης της εφαρμογής τελείωσε!");

}

function display_message(){

//alert("Invalid user! Please try again!");

alert("Μη έγκυρος χρήστης! Παρακαλώ προσπαθήστε ξανά.");

}




function invalid_afm(){

document.form_data.titlos.value+=" - ΜΗ ΕΓΚΥΡΟ ΑΦΜ!";

}

function check_afm(){

var x=window.document.form_data.valid_afm.value;

x=trim(x);

var telestis=2;
var sum=0;

for (var i=7;i>=0;i--){

sum+=parseInt(x[i])* telestis;
telestis=telestis*2;

}

var check;
check=sum/11;
check=check*11;

if (sum!=check){

alert("Μη έγκυρo ΑΦΜ!"); 
invalid_afm();

}
else{
alert("Έγκυρο ΑΦΜ!");
}

}


function clear_afm(){

document.form_afm.t_afm.value=" ";

}

function setu_Color(){

document.form_afm.u_afm.style.background="#FF8080";

}

function setoldu_Color(){

document.form_afm.u_afm.style.background="white";

}

function set_Color(){

document.form_afm.t_afm.style.background="yellow";

}

function setold_Color(){

document.form_afm.t_afm.style.background="white";

}

function clear_id(){

document.Log.LoginID.value=" ";
document.Log.LoginPassword.value=" ";

}

function set_field1(){

document.form_data.epwnymia.style.background="cyan";

}


function setold_field1(){

document.form_data.epwnymia.style.background="white";

}

function set_field2(){

document.form_data.titlos.style.background="cyan";

}

function setold_field2(){

document.form_data.titlos.style.background="white";

}

function set_field3(){

document.form_data.afm.style.background="cyan";

}

function setold_field3(){

document.form_data.afm.style.background="white";
//check_afm();

}

function set_field4(){

document.form_data.doy.style.background="cyan";

}

function setold_field4(){

document.form_data.doy.style.background="white";

}
function set_field5(){

document.form_data.odos.style.background="cyan";

}

function setold_field5(){

document.form_data.odos.style.background="white";

}

function set_field6(){

document.form_data.ar.style.background="cyan";

}

function setold_field6(){

document.form_data.ar.style.background="white";

}

function set_field7(){

document.form_data.taxk.style.background="cyan";

}

function setold_field7(){

document.form_data.taxk.style.background="white";

}


function set_field8(){

document.form_data.poli.style.background="cyan";

}

function set_field15(){

document.form_data.country.style.background="cyan";

}

function set_field16(){

document.form_data.legal.style.background="cyan";

}

function set_field17(){

document.form_data.tax.style.background="cyan";

}

function set_field18(){

document.form_data.period.style.background="cyan";

}

function set_field19(){

document.form_data.sum_fine.style.background="cyan";

var x1=document.form_data.tax.value;
var x2=document.form_data.fine.value;
var x3=parseFloat(x1)+parseFloat(x2);
document.form_data.sum_fine.value=x3;
}

function set_field20(){

document.form_data.essay.style.background="cyan";

}

function set_field21(){

document.form_data.per.style.background="cyan";

}

function set_field22(){

document.form_data.apotel.style.background="cyan";

}

function setold_field8(){

document.form_data.poli.style.background="white";

}

function set_field30(){

document.form_data.smuggle.style.background="cyan";

}

function set_field9(){

document.form_data.ergas.style.background="cyan";

}

function setold_field9(){

document.form_data.ergas.style.background="white";

}

function set_field10(){

document.form_data.com.style.background="cyan";

}

function set_field110(){

document.form_data.apotel.style.background="cyan";

}

function setold_field110(){

document.form_data.apotel.style.background="white";

}

function setold_field10(){

document.form_data.com.style.background="white";

}

function set_field11(){

document.form_data.per.style.background="cyan";

}

function setold_field11(){

document.form_data.per.style.background="white";

}

function setold_field15(){

document.form_data.country.style.background="white";

}

function setold_field16(){

document.form_data.legal.style.background="white";

}

function setold_field17(){

document.form_data.tax.style.background="white";

}

function setold_field18(){

document.form_data.period.style.background="white";

}

function setold_field19(){

document.form_data.sum_fine.style.background="white";

}

function setold_field20(){

document.form_data.essay.style.background="white";

}

function setold_field21(){

document.form_data.per.style.background="white";

}

function setold_field22(){

document.form_data.apotel.style.background="white";

}

function setold_field30(){

document.form_data.smuggle.style.background="white";

}

function setold_field35(){

document.form_data.article.style.background="white";

}

function set_field35(){

document.form_data.article.style.background="cyan";

}

function setold_field36(){

document.form_data.elegxos.style.background="white";

}

function set_field36(){

document.form_data.elegxos.style.background="cyan";

}

function setold_field37(){

document.form_data.afm_nomiko.style.background="white";

}

function set_field37(){

document.form_data.afm_nomiko.style.background="cyan";

}

function setold_field38(){

document.form_data.remark.style.background="white";

}

function set_field38(){

document.form_data.remark.style.background="cyan";

}

function set_field41(){

document.form_data.ex_essay.style.background="cyan";

}

function setold_field41(){

document.form_data.ex_essay.style.background="white";

}


function ltrim(str) { 
	for(var k = 0; k < str.length && isWhitespace(str.charAt(k)); k++);
	return str.substring(k, str.length);
}


function rtrim(str) {
	for(var j=str.length-1; j>=0 && isWhitespace(str.charAt(j)) ; j--) ;
	return str.substring(0,j+1);
}


function trim(str) {
	return ltrim(rtrim(str));
}


function isWhitespace(charToCheck) {
	var whitespaceChars = " \t\n\r\f";
	return (whitespaceChars.indexOf(charToCheck) != -1);
}
