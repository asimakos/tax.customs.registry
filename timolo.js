

function duplicate_data(){

var my_parent=window.opener;

document.form_afm.dupl_affair.value=my_parent.document.form_data.affair.value;
document.form_afm.dupl_period.value=my_parent.document.form_data.period.value;
document.form_afm.dupl_doc.value=my_parent.document.form_data.essay.value;
document.form_afm.dupl_perif.value=my_parent.document.form_data.per.value;
document.form_afm.dupl_violate.value=my_parent.document.form_data.com.value;
document.form_afm.dupl_description.value=my_parent.document.form_data.apotel.value;
document.form_afm.dupl_exdoc.value=my_parent.document.form_data.ex_essay.value;
document.form_afm.dupl_docdate.value=my_parent.document.form_data.doc_date.value;

}


function save_period(){

var z1= document.form_period.period_date.value;
var z2= "Πλήθος:" + document.form_period.stoixeia.value;
var z3= "Καθαρή αξία:" + document.form_period.cvalue.value;
var z4= "Αξία ΦΠΑ:" + document.form_period.fpa.value;
var z5=parseFloat(document.form_period.cvalue.value)+ parseFloat(document.form_period.fpa.value);
var z6="Σύνολο:" + z5;

var z=z1+ "\t" + z2 + "\t" + z3 + "\t" + z4 + "\t" + z6;

document.form_period.period_date.selectedIndex=0;
document.form_period.stoixeia.value=" ";
document.form_period.cvalue.value=" ";
document.form_period.fpa.value=" ";

document.form_period.results.value+=z+"\n";

}

function close_period(){

var my_parent=window.opener;

my_parent.document.form_data.period.value=document.form_period.results.value;

document.form_period.reset();

window.close();

}

function exclose_numnew(){

var my_parent=window.opener;

var y=document.form_num.new_numdate.value;

var z=document.form_num.new_numessay.value;

var date_arr=y.split("/");

//var z1=new Date(date_arr[2],parseInt(date_arr[1])-1,date_arr[0]);

var z1=new Date(date_arr[2],date_arr[1]-1,date_arr[0]);

var x=document.form_num.new_numessay.value+" - \n"+ z1.toLocaleString() +" - \n"+document.form_num.new_essayextra.value;

my_parent.document.form_data.ex_essay.value+=trim(x)+"\n";

//my_parent.document.form_data.doc_date.value=z1;

window.close();

}


function close_numnew(){

var my_parent=window.opener;

var y=document.form_num.new_numdate.value;

var z=document.form_num.new_numessay.value;

var date_arr=y.split("/");

//var z1=new Date(date_arr[2],parseInt(date_arr[1])-1,date_arr[0]);

var z1=new Date(date_arr[2],date_arr[1]-1,date_arr[0]);

var x=document.form_num.new_numessay.value+" - \n"+ z1.toLocaleString() +" - \n"+document.form_num.new_essayextra.value;

my_parent.document.form_data.essay.value=trim(x);

my_parent.document.form_data.doc_date.value=z1;

window.close();

}

function duplnsave_afmtt(){

var y=document.form_afm.new_afm.value;

duplicate_data();

y=trim(y);

if (!validate_afm(y)){
alert("Μη έγκυρο ΑΦΜ!");

}
else {
alert("Έγκυρο ΑΦΜ!");

}

document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("insertdupl.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";
little.moveTo(80,10);
little.focus();

}


function nsave_afmtt(){

var y=document.form_afm.new_afm.value;

duplicate_data();

y=trim(y);

if (!validate_afm(y)){
alert("Μη έγκυρο ΑΦΜ!");

}
else {
alert("Έγκυρο ΑΦΜ!");

}

document.form_afm.l_afm.options.add(new Option(y,y));

var little=window.open("insert.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";

little.moveTo(80,10);
little.focus();
}


function close_afmnew(){

var my_parent=window.opener;
var i=document.form_afm.l_afm.options.length;
var j;
var x=" ";

for (j=0;j<i;j++){
x=x+document.form_afm.l_afm.options[j].value+",";
}

my_parent.document.form_data.ex_afm.value=x;
default_values();
window.close();

}


function duplsave_afm(){

var y=document.form_afm.new_afm.value;

duplicate_data();

y=trim(y);

if (!validate_afm(y)){
alert("Μη έγκυρο ΑΦΜ!");

}
else{
alert("Έγκυρο ΑΦΜ!");
}

document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("n_insertdupl.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";

little.moveTo(80,10);
little.focus();

}

function validate_afm(x){

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
return false;
}
else{
return true;
}
}


function save_afm(){

var y=document.form_afm.new_afm.value;

duplicate_data();

y=trim(y);

if (!validate_afm(y)){

alert("Μη έγκυρο ΑΦΜ!");

}
else {
alert("Έγκυρο ΑΦΜ!");

}

document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("n_insert.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";

little.moveTo(80,10);
little.focus();

}

function delete_afmnew(){

var x=document.form_afm.l_afm;
var i=document.form_afm.l_afm.selectedIndex;

x.remove(i);
}

function clear_afmnew(){

//window.document.form_afm.reset();
window.location.reload(true);

}

function default_values(){
var my_parent=window.opener;

if (!my_parent.document.form_data.titlos.value)
   my_parent.document.form_data.titlos.value+="0";
   
if (!my_parent.document.form_data.odos.value)
   my_parent.document.form_data.odos.value+="0";

if (!my_parent.document.form_data.ar.value)
   my_parent.document.form_data.ar.value+="0";

if (!my_parent.document.form_data.taxk.value)
   my_parent.document.form_data.taxk.value+="0";

if (!my_parent.document.form_data.poli.value)
   my_parent.document.form_data.poli.value+="0";

if (!my_parent.document.form_data.country.value)
   my_parent.document.form_data.country.value+="0";
   
if (!my_parent.document.form_data.affair.value)
   my_parent.document.form_data.affair.value+="0"; 

if (!my_parent.document.form_data.legal.value)
   my_parent.document.form_data.legal.value+="0";

if (!my_parent.document.form_data.period.value)
   my_parent.document.form_data.period.value+="0";

if (!my_parent.document.form_data.afm_nomiko.value)
   my_parent.document.form_data.afm_nomiko.value+="0";
   
if (!my_parent.document.form_data.essay.value)
   my_parent.document.form_data.essay.value+="0"; 

if (!my_parent.document.form_data.ex_essay.value)
   my_parent.document.form_data.ex_essay.value+="0";
   
if (!my_parent.document.form_data.stoixeia.value)
   my_parent.document.form_data.stoixeia.options[8].selected=true;

var cur=new Date();
var month=cur.getMonth()+1;
var day=cur.getDate();
var year=cur.getFullYear();

if (!trim(my_parent.document.form_data.doc_date.value))
   my_parent.document.form_data.doc_date.value+=day+"/"+month+"/"+year;
}

function exist_cul(){

if (document.form_choice.yes1.checked==true){

document.getElementById("data2").style.visibility="visible";
}

if (document.form_choice.yes1.checked==false){

document.getElementById("data2").style.visibility="hidden";
}
}

function noexist_cul(){

var my_parent=window.opener;

if (document.form_choice.yes2.checked==true){

my_parent.document.form_data.ex_afm.value="000000000";
default_values();
window.close();
}
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
