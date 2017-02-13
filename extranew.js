

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



function st_data(){

var my_doc=document.form_data;

var y1=my_doc.indata1.value;
var y2=my_doc.indata2.value;
var y3=my_doc.indata3.value;

var data1=y1.split("*");
var data2=y2.split("*");
var data3=y3.split("*");

my_doc.epwnymia.value=data1[0];
my_doc.titlos.value=data1[1];
my_doc.odos.value=data1[2];
my_doc.ar.value=data1[3];
my_doc.taxk.value=data1[4];
my_doc.poli.value=data1[5];
my_doc.country.value=data1[6];
my_doc.ergas.value=data1[7];
my_doc.affair.value=data1[8];
my_doc.legal.value=data1[9];

my_doc.doy.value=data2[0];
my_doc.per.value=data2[1];
my_doc.essay.value=data2[2];
my_doc.com.value=data2[3];
my_doc.apotel.value=data2[4];

/*
my_doc.n_element.value=parseFloat(data3[0]);
my_doc.value.value=parseFloat(data3[1]);
my_doc.fpa.value=parseFloat(data3[2]);
*/

my_doc.period.value=data3[0];
my_doc.doc_date.value=data3[1];

my_doc.afm_nomiko.value=data3[6];
my_doc.ex_essay.value=data3[7];

data3[2]=trim(data3[2]);

switch(data3[2]){

case "упаяйтос":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",true,true);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",false,false);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",false,false);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",false,false);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",false,false);
my_doc.remark.options[5]=new Option("╒ККО","акко",false,false);
break;
}
case "амупаяйтос":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",false,false);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",true,true);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",false,false);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",false,false);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",false,false);
my_doc.remark.options[5]=new Option("╒ККО","акко",false,false);
break;
}
case "амемеяцо ажл":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",false,false);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",false,false);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",true,true);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",false,false);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",false,false);
my_doc.remark.options[5]=new Option("╒ККО","акко",false,false);
break;
}
case "еийомийо ыс пяосыпо":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",false,false);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",false,false);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",false,false);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",true,true);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",false,false);
my_doc.remark.options[5]=new Option("╒ККО","акко",false,false);
break;
}
case "упойяуптолемос":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",false,false);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",false,false);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",false,false);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",false,false);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",true,true);
my_doc.remark.options[5]=new Option("╒ККО","акко",false,false);
break;
}
case "акко":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("уПАЯЙТЭР","упаяйтос",false,false);
my_doc.remark.options[1]=new Option("аМЩПАЯЙТОР","амупаяйтос",false,false);
my_doc.remark.options[2]=new Option("аМЕМЕЯЦЭ ажл","амемеяцо ажл",false,false);
my_doc.remark.options[3]=new Option("еИЙОМИЙЭ ЫР пЯЭСЫПО","еийомийо ыс пяосыпо",false,false);
my_doc.remark.options[4]=new Option("уПОЙЯУПТЭЛЕМОР","упойяуптолемос",false,false);
my_doc.remark.options[5]=new Option("╒ККО","акко",true,true);
break;
}
}

data3[3]=trim(data3[3]);

switch(data3[3]){
case "маи":
{
my_doc.article.options.length=0;
my_doc.article.options[0]=new Option("NAI","NAI",true,true);
my_doc.article.options[1]=new Option("OXI","OXI",false,false);
break;
}
case "OXI":
{
my_doc.article.options.length=0;
my_doc.article.options[0]=new Option("NAI","NAI",false,false);
my_doc.article.options[1]=new Option("OXI","OXI",true,true);
break;
}
}

data3[4]=trim(data3[4]);

switch(data3[4]){
case "тайтийос":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("тайтийос","тайтийос",true,true);
my_doc.elegxos.options[1]=new Option("пяосыяимос","пяосыяимос",false,false);
my_doc.elegxos.options[2]=new Option("пяокгптийос","пяокгптийос",false,false);
break;
}
case "пяосыяимос":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("тайтийос","тайтийос",false,false);
my_doc.elegxos.options[1]=new Option("пяосыяимос","пяосыяимос",true,true);
my_doc.elegxos.options[2]=new Option("пяокгптийос","пяокгптийос",false,false);
break;
}
case "пяокгптийос":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("тайтийос","тайтийос",false,false);
my_doc.elegxos.options[1]=new Option("пяосыяимос","пяосыяимос",false,false);
my_doc.elegxos.options[2]=new Option("пяокгптийос","пяокгптийос",true,true);
break;
}
}

data3[5]=trim(data3[5]);

my_data3=new Array("да","тда","тил","апу","тпу","жоятытийг","еййахаяисг","сда","акко");

items=new Array(10);

var item_data3=data3[5].split(",");

for (var i=0;i<item_data3.length;i++){

for(var j=0;j<my_data3.length;j++){

if (my_data3[j]==item_data3[i])

items[j]=1;
}
}

my_doc.stoixeia.options.length=0;

for(j=0;j<my_data3.length;j++){

if (items[j])

my_doc.stoixeia.options[j]=new Option(my_data3[j],my_data3[j],true,true);

else

my_doc.stoixeia.options[j]=new Option(my_data3[j],my_data3[j],false,false);

}

/*
switch(data3[7]){
case "да":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",true,true);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "тда":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",true,true);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "тил":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",true,true);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "апу":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",true,true);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "тпу":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",true,true);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "жоятытийг":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",true,true);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "еййахаяисг":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",true,true);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "сда":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",true,true);
my_doc.stoixeia.options[8]=new Option("акко","акко",false,false);
break;
}
case "акко":
{
my_doc.stoixeia.options.length=0;
my_doc.stoixeia.options[0]=new Option("да","да",false,false);
my_doc.stoixeia.options[1]=new Option("тда","тда",false,false);
my_doc.stoixeia.options[2]=new Option("тил","тил",false,false);
my_doc.stoixeia.options[3]=new Option("апу","апу",false,false);
my_doc.stoixeia.options[4]=new Option("тпу","тпу",false,false);
my_doc.stoixeia.options[5]=new Option("жоятытийг","жоятытийг",false,false);
my_doc.stoixeia.options[6]=new Option("еййахаяисг","еййахаяисг",false,false);
my_doc.stoixeia.options[7]=new Option("сда","сда",false,false);
my_doc.stoixeia.options[8]=new Option("акко","акко",true,true);
break;
}

}
*/

}


function duplinsert_select(){

var x=document.form_data.apotel.value;

if (document.form_data.ex_afm.value==" "){
var little=window.open("dupl_afm.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
}

function dupladdex_select(){

var x=document.form_data.apotel.value;

if (document.form_data.ex_afm.value==" "){
var little=window.open("ndupl_afm.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
}

function addex_select(){

var x=document.form_data.apotel.value;

if (document.form_data.ex_afm.value==" "){
var little=window.open("n_afm.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

if (document.form_data.ex_afm.value!=" ")
return true;

if (x==" "){
alert("пАЯАЙАКЧ ЕИСэЦЕТЕ ЛИА щЦЙУЯГ ТИЛч ЕКщЦВОУ ажл!");
return false;
}
}

function period_win(){

var little=window.open("manage_period.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

function violation(){

var little=window.open("violate.cfm","_blank","menubar,toolbar,scrollbars,width=700,height=700,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

function essay_win(){

var little=window.open("num_essay.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

function exessay_win(){

var little=window.open("ex_num_essay.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

function violate_close(){

var my_parent=window.opener;
var x="";
var y="";
var w=" ";
var c_violation=new Array(20);
var des_violation=new Array(20);

c_violation[0]="еЙДОСГ ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[0]="(йЫД. 1)";
c_violation[1]="еЙДОСГ ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[1]="(йЫД. 1)";

c_violation[2]="еЙДОСГ ПКАСТЧМ СТОИВЕъЫМ";
des_violation[2]="(йЫД. 2)";
c_violation[3]="еЙДОСГ ПКАСТЧМ СТОИВЕъЫМ";
des_violation[3]="(йЫД. 2)";

c_violation[4]="еЙДОСГ ЛЕЯИЙЧР ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[4]="(йЫД. 3)";
c_violation[5]="еЙДОСГ ЛЕЯИЙЧР ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[5]="(йЫД. 3)";

c_violation[6]="еЙДОСГ ПКАСТЧМ-ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[6]="(йЫД. 4)";
c_violation[7]="еЙДОСГ ПКАСТЧМ-ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[7]="(йЫД. 4)";

c_violation[8]="мЭХЕУСГ СТОИВЕъЫМ";
des_violation[8]="(йЫД. 5)";
c_violation[9]="мЭХЕУСГ СТОИВЕъЫМ";
des_violation[9]="(йЫД. 5)";
c_violation[10]="мЭХЕУСГ СТОИВЕъЫМ";
des_violation[10]="(йЫД. 5)";
c_violation[11]="мЭХЕУСГ СТОИВЕъЫМ";
des_violation[11]="(йЫД. 5)";

c_violation[12]="кчЬГ ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[12]="(йЫД. 6)";
c_violation[13]="кчЬГ ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[13]="(йЫД. 6)";

c_violation[14]="кчЬГ ЛЕЯИЙЧР ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[14]="(йЫД. 7)";

c_violation[15]="кчЬГ ПКАСТЧМ-ЕИЙОМИЙЧМ СТОИВЕъЫМ";
des_violation[15]="(йЫД. 8)";

c_violation[16]="кчЬГ ЕИЙОМИЙОЩ-УПАЯЙТч СУМАККАЦч";
des_violation[16]="(йЫД. 9)";
c_violation[17]="кчЬГ ЕИЙОМИЙОЩ-УПАЯЙТч СУМАККАЦч";
des_violation[17]="(йЫД. 9)";

c_violation[18]="кОИПщР ПЕЯИПТЧСЕИР";
des_violation[16]="(йЫД. 10)";


for (var i=0; i<document.form_violate.viol.length; i++)
{
 if (document.form_violate.viol[i].checked)
 {
 x=x+document.form_violate.viol[i].value+"\n";
 y=y+des_violation[i]+c_violation[i]+"*";
 }
}
w=killerDuplicate(y);

var regexp=/[,]/g;

w=w.replace(regexp,"\n");

my_parent.document.form_data.com.value=x;

my_parent.document.form_data.apotel.value=w;

window.close();

}

function killerDuplicate(str)
{
	// Grabbing the text to parse
	var textToParse = new String(str);
	
	// Regular expression (a.k.a. regex) denoting
	// special characters and numbers
	//var regex = /[`~!@#$%^&*()_+={}|:";'<>,.?0-9]+/g;
	
	var regex=/["]+/g;
	
	// Converting textToParse to lower case
	//textToParse = textToParse.toLowerCase();
	
	// Applying regex to textToParse
	textToParse = textToParse.replace(regex, "");
	
	// Defining regex to split the words with white spaces
	//regex = /\s+/;
	
	regex=/[*]+/g;
	
	// Splitting the words with white spaces and storing them in an array
	var arr = textToParse.split(regex);
	
	// Defining iteration variables
	var i = 0;
	var j = 0;
	
	// Sorting the words
	//arr = arr.sort();
	
	// Removing duplicates
	for(i = 0 ; i < arr.length-1;i++)
	{
		for(j=i+1;j<arr.length;j++)
		{
			if(arr[i] == arr[j])
			{
				arr[j] = "";
			}
		}
	}
	
	var killerOutput = new String();
	killerOutput = arr.toString();
	var regex = /[*]+/g;
	killerOutput = killerOutput.replace(regex,"\n");
	
	return killerOutput;
	
}