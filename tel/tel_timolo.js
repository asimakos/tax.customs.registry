

function duplicate_data(){

var my_parent=window.opener;

document.form_afm.dupl_smuggle.value=my_parent.document.form_data.smuggle.value; 
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
var z2= "Δασμοί - Φόροι:" + document.form_period.tax.value;
var z3= "Πολλαπλά τέλη - Πρόστιμα:" + document.form_period.fine.value;

var z5=parseFloat(document.form_period.tax.value)+ parseFloat(document.form_period.fine.value);
var z6="Σύνολο:" + z5;

var z=z1+ "\t" + z2 + "\t" + z3 + "\t" + z6;

document.form_period.period_date.selectedIndex=0;
document.form_period.tax.value=" ";
document.form_period.fine.value=" ";

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

var x=document.form_num.new_numessay.value+" - \n"+z1.toLocaleString()+" - \n"+document.form_num.new_essayextra.value;

my_parent.document.form_data.ex_essay.value+=trim(x)+"\n";

window.close();

}


function close_numnew(){

var my_parent=window.opener;

var y=document.form_num.new_numdate.value;

var z=document.form_num.new_numessay.value;

var date_arr=y.split("/");

//var z1=new Date(date_arr[2],parseInt(date_arr[1])-1,date_arr[0]);

var z1=new Date(date_arr[2],date_arr[1]-1,date_arr[0]);

var x=document.form_num.new_numessay.value+" - \n"+z1.toLocaleString()+" - \n"+document.form_num.new_essayextra.value;

my_parent.document.form_data.essay.value=trim(x);

my_parent.document.form_data.doc_date.value=z1;

window.close();

}

function duplnsave_afmtt(){

var y=window.document.form_afm.new_afm.value;

y=trim(y);

if (!validate_afm(y)){
alert("Μη έγκυρο ΑΦΜ!");

}

document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("insertdupl.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";
little.moveTo(80,10);
little.focus();

}


function nsave_afmtt(){

var y=window.document.form_afm.new_afm.value;

y=trim(y);

if (!validate_afm(y)){
alert("Μη έγκυρο ΑΦΜ!");

}

document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("insert.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

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
x=x+document.form_afm.l_afm.options[j].value+"+";
}

my_parent.document.form_data.ex_afm.value=x;

window.close();

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
var y1=window.document.form_afm.valid_afm.value;

duplicate_data();

y1=trim(y1);
y=trim(y);

if (!validate_afm(y1)){

alert("Μη έγκυρο ΑΦΜ!");

}


document.form_afm.l_afm.options.add(new Option(y,y));

//var little4=window.open("ntel_insert.cfm?idafm="+escape(y),"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

var little4=window.open("ntel_insert.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";

little4.moveTo(80,10);
little4.focus();

}


function duplsave_afm(){

var y1=window.document.form_afm.valid_afm.value;
var y=document.form_afm.new_afm.value;

duplicate_data();

y1=trim(y1);
y=trim(y);

if (!validate_afm(y1)){
alert("Μη έγκυρο ΑΦΜ!");

}


document.form_afm.l_afm.options.add(new Option(y,y));

var little4=window.open("ntel_insertdupl.cfm?idafm="+y,"_blank","menubar,toolbar,scrollbars,width=800,height=800,resizable");

window.document.form_afm.new_afm.value=" ";

little.moveTo(80,10);
little.focus();

}


/*
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
*/


function delete_afmnew(){

var x=document.form_afm.l_afm;
var i=document.form_afm.l_afm.selectedIndex;

x.remove(i);
}

function clear_afmnew(){

//window.document.form_afm.reset();
window.location.reload(true);

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
