// These functions are used for the dynamic loading of the state select box.

var dataXml;
var xmldocument;
var selectedCountryCode;

function showHideOtherState(stateListBox)
{
	if(stateListBox.value == 'Other' && stateListBox.options[stateListBox.selectedIndex].text == 'Other')
	{
		document.getElementById('other_state_text').innerHTML = "<br>Other State: <input type='text' name='other_state' class='form_inputbox' value=''>";
	}
	else
	{
		document.getElementById('other_state_text').innerHTML = "";
	}
}

function loadXMLDoc(url)
{
	if (window.XMLHttpRequest)
	{
		req = new XMLHttpRequest();
		loadingDataMess("on");
		//req.onreadystatechange = processReqChange;
		req.open("GET", url, false);
		req.send(null);
		processReqChange();
	}
	else if (window.ActiveXObject)
	{
		try{
			req = new ActiveXObject("Microsoft.XMLHTTP");
			if (req)
			{
				//req.onreadystatechange = processReqChange;
				loadingDataMess("on");
				req.open("GET", url, false);
				req.send(null);
				processReqChange();
			}
			else
			{
				addToForm(stateList[getStateList(selectedCountryCode)]) ;
			}
		}
		catch(e)
		{
			// alert("Unable to load state list");
			//   stateData = new Array();
			// addToForm(stateData) ;
			//   alert(stateList);
			addToForm(stateList[getStateList(selectedCountryCode)]) ;
		}
	}
	else  //opera
	{
		addToForm(stateList[getStateList(selectedCountryCode)]) ;
	}
}

function processReqChange()
{
	if (req.readyState == 4)
	{
		if (req.status == 200)
		{
			xmldocument = req.responseXML;
			buildStateList(xmldocument);
			addToForm(dataXml);
			loadingDataMess("off");
		}
		else
		{
			alert("No Connection");
			loadingDataMess("off");
		}
	}
	else
	{
		loadingDataMess("on");
	}
}

// This function for the country - state Generation
// xml is parsed and the data is kept in array dataXml
function buildStateList(data)
{
	dataXml =new Array();
	var items = xmldocument.getElementsByTagName("state");
	for (var i = 0; i < items.length; i++)
	{
		dataXml[i] = new Array();

		stateTag = items.item(i);
		nameTag = stateTag.firstChild.firstChild;     // ie. name tag's child which is the text node
		idTag = stateTag.firstChild.nextSibling.firstChild;   // ie. id tag's child which is the text node
		//alert("nameTag name: "+nameTag.nodeName + " = "+ nameTag.nodeValue);
		//alert("idTag name:"+idTag.nodeName+" = " + idTag.nodeValue);

		dataXml[i][0]=nameTag.nodeValue;
		dataXml[i][1]=idTag.nodeValue;
	}
}

// This function makes visbility of 'loadMess' on/off
function loadingDataMess(state)
{
	if(state == "on")
	{
		//document.getElementById('loadMess').style.visibility = "visible";
	}
	else if(state == "off" )
	{
		//document.getElementById('loadMess').style.visibility = "hidden";
	}
}

// This function adds the data from dataXml array to the 'stateSelect'
// element
function addToForm(stateData)
{
	handle = document.getElementById("stateSelect");
	not_applicable = document.getElementsByName("not_applicable")[0];
	if(stateData.length!="undefined")
	{
		cnt = stateData.length;
	}
	else
	{
		cnt=0;
	}
	handle.length=0;

	str="";
	if(cnt<=0)
	{
		handle.options[0] = new Option("Not Applicable","Not Applicable");
		handle.options[1] = new Option("Other","Other");
		//handle.disabled=true;
		not_applicable.value="true";
	}
	else
	{
		handle.disabled=false;
		not_applicable.value="false";
		for(i=0 ; i < cnt; i++)
		{
			handle.options[i] = new Option(stripsp(stateData[i][0]), stateData[i][0]);
		}
	}
}

function change_country(countrycode)
{
	if ( countrycode != "" )
	{
		selectedCountryCode = countrycode;
		document.getElementById('other_state_text').innerHTML = "";
		url = "http://domain2host.in/misc/getState.php?countrycode=" + countrycode;
		loadXMLDoc(url);
        //document.getElementById('tel_code').value = countryCodeList[countrycode];
        //document.getElementById('alt_tel_code').value = countryCodeList[countrycode];
        //document.getElementById('mob_tel_code').value = countryCodeList[countrycode];
        //document.getElementById('fax_tel_code').value = countryCodeList[countrycode];
	}
	else
	{
		return false;
	}
}

function stripsp(p)
{
	if(p.indexOf('&#') != -1)
	{
		a = p;
		while(a.indexOf('&#') != -1)
		{
			start = a.indexOf('&#');
			if (a == p)
			{
				a = p.substring(0, start);
				end = p.indexOf(';', start);
				code = p.substring(start+2, end);
				endstr = p.substr(end+1);
			}
			else
			{
				end = a.indexOf(';', start);
				code = a.substring(start+2, end);
				endstr = a.substr(end+1);
				a = a.substring(0, start);
			}
			chr = String.fromCharCode(code);
			a+= chr;
			a+= endstr;
		}
		p = a;
	}
	return p;
}