

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
window.close();

}
}

function gup(name){
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( window.location.href );
  if( results == null )
    return "";
  else
    return results[1];
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
my_doc.smuggle.value=data1[8];
my_doc.legal.value=data1[9];

my_doc.doy.value=data2[0];
my_doc.per.value=data2[1];
my_doc.essay.value=data2[2];
my_doc.com.value=data2[3];
my_doc.apotel.value=data2[4];

/*
my_doc.tax.value=parseFloat(data3[0]);
my_doc.fine.value=parseFloat(data3[1]);
my_doc.sum_fine.value=parseFloat(data3[2]);
*/

my_doc.period.value=data3[0];
my_doc.doc_date.value=data3[1];

my_doc.afm_nomiko.value=data3[5];
my_doc.ex_essay.value=data3[6];

data3[4]=trim(data3[4]);

switch(data3[4]){

case "’–¡— ‘œ”":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("’–¡— ‘œ”","’–¡— ‘œ”",true,true);
my_doc.elegxos.options[1]=new Option("¡Õ’–¡— ‘œ”","¡Õ’–¡— ‘œ”",false,false);
my_doc.elegxos.options[2]=new Option("”’Õ’–¡…‘…œ”","”’Õ’–¡…‘…œ”",false,false);
my_doc.elegxos.options[3]=new Option("¡ÀÀœƒ¡–œ”","¡ÀÀœƒ¡–œ”",false,false);
my_doc.elegxos.options[4]=new Option("¡ÀÀœ","¡ÀÀœ",false,false);
break;
}
case "¡Õ’–¡— ‘œ”":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("’–¡— ‘œ”","’–¡— ‘œ”",false,false);
my_doc.elegxos.options[1]=new Option("¡Õ’–¡— ‘œ”","¡Õ’–¡— ‘œ”",true,true);
my_doc.elegxos.options[2]=new Option("”’Õ’–¡…‘…œ”","”’Õ’–¡…‘…œ”",false,false);
my_doc.elegxos.options[3]=new Option("¡ÀÀœƒ¡–œ”","¡ÀÀœƒ¡–œ”",false,false);
my_doc.elegxos.options[4]=new Option("¡ÀÀœ","¡ÀÀœ",false,false);
break;
}
case "”’Õ’–¡…‘…œ”":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("’–¡— ‘œ”","’–¡— ‘œ”",false,false);
my_doc.elegxos.options[1]=new Option("¡Õ’–¡— ‘œ”","¡Õ’–¡— ‘œ”",false,false);
my_doc.elegxos.options[2]=new Option("”’Õ’–¡…‘…œ”","”’Õ’–¡…‘…œ”",true,true);
my_doc.elegxos.options[3]=new Option("¡ÀÀœƒ¡–œ”","¡ÀÀœƒ¡–œ”",false,false);
my_doc.elegxos.options[4]=new Option("¡ÀÀœ","¡ÀÀœ",false,false);
break;
}
case "¡ÀÀœƒ¡–œ”":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("’–¡— ‘œ”","’–¡— ‘œ”",false,false);
my_doc.elegxos.options[1]=new Option("¡Õ’–¡— ‘œ”","¡Õ’–¡— ‘œ”",false,false);
my_doc.elegxos.options[2]=new Option("”’Õ’–¡…‘…œ”","”’Õ’–¡…‘…œ”",false,false);
my_doc.elegxos.options[3]=new Option("¡ÀÀœƒ¡–œ”","¡ÀÀœƒ¡–œ”",true,true);
my_doc.elegxos.options[4]=new Option("¡ÀÀœ","¡ÀÀœ",false,false);
break;
}
case "¡ÀÀœ":
{
my_doc.elegxos.options.length=0;
my_doc.elegxos.options[0]=new Option("’–¡— ‘œ”","’–¡— ‘œ”",false,false);
my_doc.elegxos.options[1]=new Option("¡Õ’–¡— ‘œ”","¡Õ’–¡— ‘œ”",false,false);
my_doc.elegxos.options[2]=new Option("”’Õ’–¡…‘…œ”","”’Õ’–¡…‘…œ”",false,false);
my_doc.elegxos.options[3]=new Option("¡ÀÀœƒ¡–œ”","¡ÀÀœƒ¡–œ”",false,false);
my_doc.elegxos.options[4]=new Option("¡ÀÀœ","¡ÀÀœ",true,true);
break;
}
}

data3[3]=trim(data3[3]);

switch(data3[3]){
case "Õ¡…":
{
my_doc.article.options.length=0;
my_doc.article.options[0]=new Option("Õ¡…","Õ¡…",true,true);
my_doc.article.options[1]=new Option("œ◊…","œ◊…",false,false);
break;
}
case "œ◊…":
{
my_doc.article.options.length=0;
my_doc.article.options[0]=new Option("Õ¡…","Õ¡…",false,false);
my_doc.article.options[1]=new Option("œ◊…","œ◊…",true,true);
break;
}
}

data3[2]=trim(data3[2]);

switch(data3[2]){
case "’–œ‘—œ–œ”":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("’–œ‘—œ–œ”","’–œ‘—œ–œ”",true,true);
my_doc.remark.options[1]=new Option("Ã« ’–œ‘—œ–œ”","Ã« ’–œ‘—œ–œ”",false,false);
my_doc.remark.options[2]=new Option("≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”","≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”",false,false);
break;
}
case "Ã« ’–œ‘—œ–œ”":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("’–œ‘—œ–œ”","’–œ‘—œ–œ”",false,false);
my_doc.remark.options[1]=new Option("Ã« ’–œ‘—œ–œ”","Ã« ’–œ‘—œ–œ”",true,true);
my_doc.remark.options[2]=new Option("≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”","≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”",false,false);
break;
}
case "≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”":
{
my_doc.remark.options.length=0;
my_doc.remark.options[0]=new Option("’–œ‘—œ–œ”","’–œ‘—œ–œ”",false,false);
my_doc.remark.options[1]=new Option("Ã« ’–œ‘—œ–œ”","Ã« ’–œ‘—œ–œ”",false,false);
my_doc.remark.options[2]=new Option("≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”","≈Õ‘œ” ‘œ’ ≈‘œ’” ’–œ‘—œ–œ”",true,true);
break;
}
}

}


function duplinsert_select(){

var x=document.form_data.apotel.value;

if (document.form_data.ex_afm.value==" "){
var little=window.open("teldupl_afm.cfm","_blank","menubar,toolbar,scrollbars,width=980,height=900,resizable");
little.moveTo(80,10);
little.focus();
return false;
}
}

function kdid_win(){

var little=window.open("kdsmuggle_id.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=800,resizable");
little.moveTo(80,10);
little.focus();
return false;

}

function id_win(){

var little=window.open("smuggle_id.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=800,resizable");
little.moveTo(80,10);
little.focus();
return false;

}

function items_win(){

var little=window.open("smuggle_items.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=600,resizable");
little.moveTo(80,10);
little.focus();
return false;

}

function period_win(){

var little=window.open("telmanage_period.cfm","_blank","menubar,toolbar,scrollbars,width=900,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
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
alert("–·Ò·Í·Î˛ ÂÈÛ‹„ÂÙÂ ÏÈ· ›„ÍıÒÁ ÙÈÏﬁ ÂÎ›„˜Ôı ¡÷Ã!");
return false;
}
}

function tel_violation(){

var little=window.open("tel_violate.cfm","_blank","menubar,toolbar,scrollbars,width=700,height=700,resizable","_blank");
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

function exessay_win(){

var little=window.open("telex_num_essay.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
}

function essay_win(){

var little=window.open("telnum_essay.cfm","_blank","menubar,toolbar,scrollbars,width=600,height=500,resizable");
little.moveTo(80,10);
little.focus();
return false;
}


function Assign_violation(){

var str=" ";

var my_parent=window.opener;

var z=my_parent.document.form_data.com.value;

var regex=/[0-9]+/g;

if (trim(z)){

var arr=z.split(")");

for (var i=0;i<arr.length;i++)

str=str+arr[i].match(regex)+",";

//alert(str);

var codes=str.split(",");

var n=document.form_violate.viol.length;

for (var j=0;j<codes.length;j++){

for(i=0;i<n;i++){

var xstr=trim(document.form_violate.viol[i].value);

if (trim(xstr.substring(0,4))==trim(codes[j]))

document.form_violate.viol[i].checked=true;

}
}
}

return true;
}


function violate_close(){

var my_parent=window.opener;
var x="";
var y="";
var w=" ";

/*
var c_violation=new Array(20);
var des_violation=new Array(20);

c_violation[0]="≈Í‰ÔÛÁ ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[0]="( ˘‰. 1)";
c_violation[1]="≈Í‰ÔÛÁ ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[1]="( ˘‰. 1)";

c_violation[2]="≈Í‰ÔÛÁ Î·ÛÙ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[2]="( ˘‰. 2)";
c_violation[3]="≈Í‰ÔÛÁ Î·ÛÙ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[3]="( ˘‰. 2)";

c_violation[4]="≈Í‰ÔÛÁ ÏÂÒÈÍ˛Ú ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[4]="( ˘‰. 3)";
c_violation[5]="≈Í‰ÔÛÁ ÏÂÒÈÍ˛Ú ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[5]="( ˘‰. 3)";

c_violation[6]="≈Í‰ÔÛÁ Î·ÛÙ˛Ì-ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[6]="( ˘‰. 4)";
c_violation[7]="≈Í‰ÔÛÁ Î·ÛÙ˛Ì-ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[7]="( ˘‰. 4)";

c_violation[8]="Õ¸ËÂıÛÁ ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[8]="( ˘‰. 5)";
c_violation[9]="Õ¸ËÂıÛÁ ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[9]="( ˘‰. 5)";
c_violation[10]="Õ¸ËÂıÛÁ ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[10]="( ˘‰. 5)";
c_violation[11]="Õ¸ËÂıÛÁ ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[11]="( ˘‰. 5)";

c_violation[12]="Àﬁ¯Á ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[12]="( ˘‰. 6)";
c_violation[13]="Àﬁ¯Á ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[13]="( ˘‰. 6)";

c_violation[14]="Àﬁ¯Á ÏÂÒÈÍ˛Ú ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[14]="( ˘‰. 7)";

c_violation[15]="Àﬁ¯Á Î·ÛÙ˛Ì-ÂÈÍÔÌÈÍ˛Ì ÛÙÔÈ˜Âﬂ˘Ì";
des_violation[15]="( ˘‰. 8)";

c_violation[16]="Àﬁ¯Á ÂÈÍÔÌÈÍÔ˝-ı·ÒÍÙﬁ ÛıÌ·ÎÎ·„ﬁ";
des_violation[16]="( ˘‰. 9)";
c_violation[17]="Àﬁ¯Á ÂÈÍÔÌÈÍÔ˝-ı·ÒÍÙﬁ ÛıÌ·ÎÎ·„ﬁ";
des_violation[17]="( ˘‰. 9)";

c_violation[18]="ÀÔÈ›Ú ÂÒÈÙ˛ÛÂÈÚ";
des_violation[16]="( ˘‰. 10)";

*/

for (var i=0; i<document.form_violate.viol.length; i++)
{
 if (document.form_violate.viol[i].checked)
 {
 
 w=trim(document.form_violate.viol[i].value);
 
 x=x+"( Ÿƒ. –¡—¡¬¡”«” " + w.substring(0,4) + ")\n";
 
 y=y+document.form_violate.viol[i].value+"\n";
 
 }
}

/*
w=killerDuplicate(y);

var regexp=/[,]/g;

w=w.replace(regexp,"\n");
*/

my_parent.document.form_data.com.value=x;

my_parent.document.form_data.apotel.value=y;

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



function vitems_close()
{
var my_parent=window.opener;
var x="";
var y="";


for(var i=0;i<document.form_items.item.length;i++)
{
if (document.form_items.item[i].checked) 
{

x=trim(document.form_items.item[i].value);

y=y+x+",";

}
}

my_parent.document.form_data.smuggle.value=y;
window.close();
}


function kdid_close()
{
var my_parent=window.opener;
var x="";
var id_item=new Array(7);
var id_element=new Array("¡÷Ã:","¡ƒ‘:","ƒ…¡¬¡‘«—…œ:","¡—.  ’ À. œ◊«Ã¡‘œ”:","≈»Õ… œ‘«‘¡:","÷’ÀÀœ:","◊Ÿ—¡ √≈ÕÕ«”«”:","◊Ÿ—¡ ƒ…¡ÃœÕ«”");

id_item[0]=trim(document.form_id.new_afm.value);
id_item[1]=trim(document.form_id.new_card.value);
id_item[2]=trim(document.form_id.new_passport.value);
id_item[3]=trim(document.form_id.new_vehicle.value);
id_item[4]=trim(document.form_id.new_nationality.value);
id_item[5]=trim(document.form_id.new_sex.value);
id_item[6]=trim(document.form_id.new_origin.value);
id_item[7]=trim(document.form_id.new_stay.value);

for(var i=0;i<id_item.length;i++)
{
if (id_item[i])
x=x+id_element[i]+id_item[i]+",";
}

my_parent.document.form_afm.new_afm.value=x;
window.close();

}


function id_close()
{
var my_parent=window.opener;
var x="";
var id_item=new Array(7);
var id_element=new Array("¡÷Ã:","¡ƒ‘:","ƒ…¡¬¡‘«—…œ:","¡—.  ’ À. œ◊«Ã¡‘œ”:","≈»Õ… œ‘«‘¡:","÷’ÀÀœ:","◊Ÿ—¡ √≈ÕÕ«”«”:","◊Ÿ—¡ ƒ…¡ÃœÕ«”");

id_item[0]=trim(document.form_id.new_afm.value);
id_item[1]=trim(document.form_id.new_card.value);
id_item[2]=trim(document.form_id.new_passport.value);
id_item[3]=trim(document.form_id.new_vehicle.value);
id_item[4]=trim(document.form_id.new_nationality.value);
id_item[5]=trim(document.form_id.new_sex.value);
id_item[6]=trim(document.form_id.new_origin.value);
id_item[7]=trim(document.form_id.new_stay.value);

for(var i=0;i<id_item.length;i++)
{
if (id_item[i])
x=x+id_element[i]+id_item[i]+",";
}

my_parent.document.form_data.afm.value=x;
//alert(trim(document.form_id.new_afm.value));
my_parent.document.form_data.valid_afm.value=trim(document.form_id.new_afm.value);

window.close();

}