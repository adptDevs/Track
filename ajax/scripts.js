/* 
*
*	AJAX Scripts
*
*/

var isPurchase = false;

function closeSearchBox(){
	document.getElementById('quickSearchResult').style.display = "none";
}

function searchTrack(Search_page){

	var searchItem = document.getElementById('trackSearchItem').value;
	document.getElementById('quickSearchResult').style.display = "block";

	$.ajax({
		type: "GET",
		url: Search_page,
		data: "searchItem=" + searchItem,
		dataType: 'html',
		success: function(html){
			$('#quickSearchResult').html(html);
		}
	});

}

function changeTitleSelection(TitleSelection_page, publisher, forPurchase=false){
	isPurchase = forPurchase;
	$.ajax({
		type: "GET",
		url: TitleSelection_page,
		data: "pub=" + publisher,
		dataType: "html",
		success: function(html){
			if(isPurchase){
				$("#titlePurchaseSelection").html(html);
			}else{
				$("#titleSelection").html(html);
			}
		}
	});

}

function changeEandVSelections(ES_page, VS_page, title){
	changeESelection(ES_page, title);
	changeVSelection(VS_page, title);
}

function changeESelection(ESelection_page, title){

	$.ajax({
		type: "GET",
		url: ESelection_page,
		data: "title=" + title,
		dataType: "html",
		success: function(html){
			if(isPurchase){
				$("#EPurchaseSelection").html(html);
			}else{
				$("#ESelection").html(html);
			}
		}
	});

}

function changeVSelection(VSelection_page, title){

	$.ajax({
		type: "GET",
		url: VSelection_page,
		data: "title=" + title,
		dataType: "html",
		success: function(html){
			if(isPurchase){
				$("#VPurchaseSelection").html(html);
			}else{
				$("#VSelection").html(html);
			}
		}
	});

}

function changeESelection_AddSW(E_page, title){

	$.ajax({
		type: "GET",
		url: E_page,
		data: "title=" + title,
		dataType: "html",
		success: function(html){
			$("#select-edition").html(html);
		}
	});

}

function ajaxAddPurchase(Purchase_page, publisher, title, edition, version, os, numLic, prdKey, upgradeLic, physMedia, freeware, purchaseType, purchaseDate, poNumber, pCardE, pCardV, pCardR, subscription, subBeginDate, subEndDate, notes){

	$.ajax({
		type: "GET",
		url: Purchase_page,
		data: "publisher="+publisher+"&title="+title+"&edition="+edition+"&version="+version+"&os="+os+"&numLic="+numLic+"&prdKey="+prdKey+"&upgradeLic="+upgradeLic+"&physMedia="+physMedia+"&freeware="+freeware+"&purchaseType="+purchaseType+"&purchaseDate="+purchaseDate+"&poNumber="+poNumber+"&pCardE="+pCardE+"&pCardV="+pCardV+"&pCardR="+pCardR+"&subscription="+subscription+"&subBeginDate="+subBeginDate+"&subEndDate="+subEndDate+"&notes="+notes,
		dataType: "html",
		success: function(html){
			alert(html);
		}
	});

}


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*

	AJAX SEARCH BAR FUNTIONS

	Tutorial from dynamicajax.com

*/

function getXmlHttpRequestObject(){
	if (window.XMLHttpRequest){
		return new XMLHttpRequest;
	}else if(winow.ActiveXObject){
		return new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		// Browser is too old
	}
}

var hintRequest = getXmlHttpRequestObject();

function searchHint(tableName){
	if (hintRequest.readyState == 4 || hintRequest.readyState == 0) {
		var str = escape(document.getElementById('recordSearch').value);
		if(tableName == 'pub'){
			hintRequest.open("GET", 'ajax/searchPubHint.php?search=' + str, true);
		}else if(tableName == 'title'){
			hintRequest.open("GET", 'ajax/searchTitleHint.php?search=' + str, true);
		}else if(tableName == "edition"){
			hintRequest.open("GET", 'ajax/searchEditionHint.php?search=' + str, true);
		}else if(tableName == "version"){
			hintRequest.open("GET", 'ajax/searchVersionHint.php?search=' + str, true);
		}else if(tableName == "all"){
			hintRequest.open("GET", 'ajax/searchAllHint.php?search=' + str, true);
		}else if(tableName == "purchase"){
			hintRequest.open("GET", 'ajax/searchPurchaseHint.php?search=' + str, true);
		}
		//hintRequest.open("GET", 'ajax/searchHint.php?search=' + str, true);
		hintRequest.onreadystatechange = handleSearchSuggest; 
		hintRequest.send(null);
	}	
}

function handleSearchSuggest() {
	if (hintRequest.readyState == 4) {
		var ss = document.getElementById('hint');
		ss.innerHTML = '';
		var str = hintRequest.responseText.split("\n");
		for(i=0; i < str.length - 1; i++) {
			//Build our element string.  This is cleaner using the DOM, but
			//IE doesn't support dynamically added attributes.
			var suggest = '<div onmouseover="javascript:suggestOver(this);" ';
			suggest += 'onmouseout="javascript:suggestOut(this);" ';
			suggest += 'onclick="javascript:setSearch(this.innerHTML);" ';
			suggest += 'class="hint-link">' + str[i] + '</div>';
			ss.innerHTML += suggest;
		}
	}
}

//Mouse over function
function suggestOver(div_value) {
	div_value.className = 'hint-link-over';
}
//Mouse out function
function suggestOut(div_value) {
	div_value.className = 'hint-link';
} 

//Click function
function setSearch(value) {
	document.getElementById('recordSearch').value = value;
	document.getElementById('hint').innerHTML = '';
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////