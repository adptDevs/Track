<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="Content-Type" charset="utf-8">
		<title><?php echo $title ?></title>

	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/styles.css">

		<!-- Google Font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<!-- //--> 


		<!-- jQuery -->
	  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	  	<!-- //-->

	  	<!-- jQuery UI -->
	  	<script type="text/javascript" src="/_apps/track1.5/js/jquery-ui.js"></script>
	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/jquery-ui.css">
	  	<!-- //-->

		<!-- MAIN SCRIPTS -->
		<script type="text/javascript" src="/_apps/track1.5/js/main.js"></script>
		<!-- //-->

		<!-- Ajax -->
		<script type="text/javascript" src="/_apps/track1.5/ajax/scripts.js"></script>
		<!-- //-->

	  	<!-- Foundation -->
	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/foundation.css">
	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/normalize.css">
		<!-- //-->

		<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
		  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


		<!-- AJAX FUNCTIONS -->
		<script type="text/javascript" src="ajax/scripts.js"></script>
		<!-- //-->


<script>
$(function() {
$( ".datefield" ).datepicker();
});
</script>

</head>
<!-- ////////////////// BODY BEGIN //////////////////////////////////////////////////////////////////////////////// -->
<body>

<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

<h1><div style ='font-family: Oleo Script;font-weight:bold; font-size: 250%; text-shadow: 7px 7px #000;text-align: left; margin-left: 20px;color:#a9a9a9'>Add Software Purchase</h1>
<!-- TRACK IMG 2 -->
<div class="img2">
<a target="_blank" href="fjords.jpg">
<img src="/_apps/track1.5/img/Track_logo.gif" alt="HTML5 Icon">
</div>
</a>

<!-- FORM START -->
<form class="center-formSP">
<fieldset>

<div id="addSoftware">
<h2>Add Software:<button id="newSWbtn">+</button></h2>
					<!-- <button id="newSWbtn">+</button> -->

					<label>Select Publisher:</label>
					<select id="SoftPurchasePub" onchange="changeTitleSelection('/_apps/track1.5/php/getTitle.php', this.value, true);">
						<option>Select</option>

						<?php

							$row=0;
							while($row < sizeof($this->_data['addpublisher'])){
								echo "<option>" . $this->_data['addpublisher'][$row]['Publisher'] . "</option>";
								$row++;
							}

						?>

					</select>

					<div id="titlePurchaseSelection">
					</div>

					<div id="EPurchaseSelection">
					</div>

					<div id="VPurchaseSelection">
					</div>
				</div>

			</fieldset>

			<fieldset>
				<div id="softwareInformation">
					<legend>Software Information:</legend>

					<label style="padding-right:10px;">Operating System:</label>
	      			<input id="OS" class="os" name="subRadio6" type="radio" value="1" checked>Windows&nbsp;&nbsp;&nbsp;<input id="OS" class="os" name="subRadio6" type="radio" value="2">Apple<br/>

	      			<label>Number of Licenses:</label>
	      			<input id="numLic" type="text" maxlength="5"><br/>

	      			<label style="padding-right:45px;">Product Key:</label>
	      			<input id="prdKey" type="text"><br/>

	      			<label style="padding-right:18px;">Upgrade License:</label>
	      			<input id="Upgrade" class="upgrade" name="subRadio3" type="radio" value="1">Yes&nbsp;&nbsp;&nbsp;
	      			<input id="Upgrade" class="upgrade"  name="subRadio3" type="radio" value="0" checked>No<br/>

	      			<label style="padding-right:29px;">Physical Media:</label>
	      			<input type="radio" name="subRadio4" id="physMedia" class="pm" value="1">Yes&nbsp;&nbsp;&nbsp;
	      			<input type="radio" name="subRadio4" id="physMedia" class="pm" value="0" checked>No<br/>

	      			<label style="padding-right:57px;">Freeware:</label>
	      			<input type="radio" name="subRadio5" id="freeware" class="freew" value="1">Yes&nbsp;&nbsp;&nbsp;
	      			<input type="radio" name="subRadio5" id="freeware" class="freew" value="0" checked>No<br/>
	      		</div>

			</fieldset>

			<fieldset>
				<div id="purchaseInformation">
					<legend>Purchase Information:</legend>

	      			<div id="PO">
	      				<label style="padding-right:57px;">Purchase Type:</label>
		      			<input type="radio" name="subRadio2" id="purchaseType" class="purchaseO" value="PO" checked>PO&nbsp;&nbsp;&nbsp;
		      			<input type="radio" name="subRadio2" id="purchaseType" class="purchaseO" value="P-Card">P-Card<br/>

		      			<label style="padding-right:58px;">Purchase Date:</label>
		      			<input id='PurchDate' type="text" maxlength="10" class='datefield'><br/>

		      			<label style="padding-right:75px;">PO Number:</label>
		      			<input type="text" id="poNum" maxlength="25"><br/>

		      			<label style="padding-right:5px;">P-Card Employee Name:</label>
		      			<input id="-pCardE" type="text" maxlength="50"><br/>

		      			<label>P-Card Purchase Vendor:</label>
		      			<input id="pCardV" type="text" maxlength="50"><br/>

		      			<label>P-Card Reference Number:</label>
		      			<input id="pCardR" type="text" maxlength="50"><br/>
	      			</div>
	      		</fieldset>

	      		<fieldset>
	      			<legend>Subscription Information:</legend>

	      			<label style="padding-right:28px;">Subscription Based:</label>
	      			<input type="radio" name="subRadio" id="subscription" class="sub " value="1">Yes&nbsp;&nbsp;&nbsp;
	      			<input type="radio" name="subRadio" id="subscription" class="sub" value="0" checked>No<br/>

					<div id="Subscription" style="display: none;">

		     			<label>Subscription Begin Date:</label>
						<!--      <label for='begindate' class='first' >Starting Date<input id='begindate' name='begindate' type='text' maxlength='22' onfocus='getDate(this);' /></label>  -->
		      			<input id='SubBeginDate' type="text" maxlength="10" class='datefield'><br/>

		      			<label style="padding-right:10px;">Subscription End Date:</label>
		      			<input id="SubEndDate" type="text" maxlength="10" class='datefield'><br/>
		      
		    			<label style="padding-right:;">Notes:</label>
		   			 	<textarea cols="48" id="notes" rows="4" wrap="soft"></textarea>
					</div>
	      		</div>

			</fieldset>

	<!-- 		<input type="submit" id="submit-purchase" value="Add Purchase" /> -->

		</form>
		
<button id="submit-purchase"><span>Submit</span></button>

</div>
<!-- /////////////////////////////////////////////////////////// Modal content ////////////////////////////////////-->
<div id="myModal2" class="modal2">
<div class="viewDetail-modal2">
			 <div class="modal-header">
			 <span class="close">×</span>
			 <h2>Add To Hardware?</h2>
		</div>
		<div class="modal-body">
		    <label>Enter Asset or Serial #.</label>
		    <input type="input" id="hwAssetSerial" name="hwAssetSerial">
		</div>
		<div class="modal-footer">
			<button onclick="submitPurchase(true)">Confirm</button>
			<button onclick="submitPurchase(false)">Skip</button>
		</div>
	</div>
	</div>

	<div id="purchaseMessage-modal" class="modal2">
		<div class="viewDetail-modal3">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Results</h2>
			</div>
			<div class="modal-body" id="message-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

	<div id="newSW-modal" class="modal4">
		<div class="viewDetail-modal4">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Add new software</h2>
			</div>
			<div class="modal-body" id="newSW-body">
				<!-- Uses an AJAX function each time the user selects any option in the drop-down for publishers. -->
				<!-- When the user selects a publisher, it will genereate a drop-down of software titles under -->
				<!-- that publisher. You can find the function in "js/scripts.js" -->
				<label>Publisher:</label>
				<input id="SoftPub" onchange="changeTitleSelection('/_apps/track1.5/php/getTitle.php', this.value)" list="publisherList">
				<datalist id="publisherList">
				<?php

					$row=0;
					while($row < sizeof($this->_data['addpublisher'])){
						echo "<option>" . $this->_data['addpublisher'][$row]['Publisher'] . "</option>";
						$row++;
					}

				?>
				</datalist>

				<!-- Just like the function used for the publisher drop-down, when a title is selected, only the -->
				<!-- corresponding editions and versions will appear. Again, you can find this function in "js/scripts.js"-->
				<div id="titleSelection">
				</div>

				<div id="ESelection">
				</div>

				<div id="VSelection">
				</div>

				<!-- When the user hits the "Add To Master" button, it goes to a jQuery function down at the bottom of -->
				<!-- this page that uses this button's id as the selector -->
				<input type="submit" id="submit-master" value="Add To Master" />
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

 </div>

</div>
		<script type="text/javascript">

			var modal = document.getElementById('myModal2');
			var newSW_modal = document.getElementById('newSW-modal');

			// Get the button that opens the modal
			var btn = document.getElementById("submit-purchase");
			var newSWbtn = document.getElementById("newSWbtn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			var newSWspan = document.getElementsByClassName("close")[2];

			// When the user clicks the button, open the modal
			btn.onclick = function() {
			    modal.style.display = "block";
			}

			newSWbtn.onclick = function(event){
				event.preventDefault();
				newSW_modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			    modal.style.display = "none";
			}

			newSWspan.onclick = function() {
			    newSW_modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			    if (event.target == modal) {
			        modal.style.display = "none";
			    }

			    if (event.target == newSW_modal) {
			        newSW_modal.style.display = "none";
			    }
			}

			$('input:radio[name="subRadio"]').change(function(){
				console.log($(this).val());
				if($(this).val() == 1){
					$("#Subscription").show("fast", "linear");
				}else{
					$("#Subscription").hide("fast", "linear");
				}
			});

			$('#submit-master').click(function(event){
				event.preventDefault();

				var pub = document.getElementById('SoftPub').value;
				var title = document.getElementById('SoftTitle').value;
				var edition = document.getElementById('SoftEdition').value;
				var version = document.getElementById('SoftVersion').value;

				if(pub != "" && title != "" && version != ""){
					$.ajax({
						type: "GET",
						url: '/_apps/track1.5/php/addSoftwareToMaster.php',
						data: "publisher=" + pub + "&title=" + title + "&edition=" + edition + "&version=" + version,
						dataType: "html",
						success: function(html){
							if(html == 'Success'){
								$("#message-body").html("<p style='color: #258E25;'>Successfully added software</p>");
								$("#purchaseMessage-modal").show().delay(2000).fadeOut(function(){
									location.reload();
								});
							}else{
								$("#message-body").html("<p style='color: #660000;'>An error occured. The software was not added. Please try again</p>");
								$("#purchaseMessage-modal").show().delay(2000).fadeOut();
							}
						},
						error: function(){
							$("#message-body").html("<p style='color: #660000;'>Some unexpected happened. Please try again</p>");
							$("#purchaseMessage-modal").show().delay(2000).fadeOut();
						}
					});
				}
			});

			function submitPurchase(isAssigned){
	
				// Add Software
				var publisher = $('#SoftPurchasePub').val();
				var title = $('#SoftTitle').val();
				var edition = $('#SoftEdition').val();
				var version = $('#SoftVersion').val();

				// Software Information
				var os = $('#OS').val();
				var numLic = $('#numLic').val();
				var prdKey = $('#prdKey').val();
				var upgradeLic = $('#Upgrade').val();
				var physMedia = $('#physMedia').val();
				var freeware = $('#freeware').val();

				// Purchase Information
				var purchaseType = $('#purchaseType').val();
				var purchaseDate = $('#PurchDate').val();
				var poNumber = '';
				var pCardE = '';
				var pCardV = '';
				var pCardR = '';

				if(purchaseType == 'P-Card'){
					pCardE = $('#pCardE').val();
					pCardV = $('#pCardV').val();
					pCardR = $('#pCardR').val();
				}else{
					poNumber = $('#poNum').val();
				}

				// Subscription Information
				var subscription = $('#subscription').val();
				var subBeginDate = '1900-01-01';
				var subEndDate = '1900-01-01';

				if(subscription == '1'){
					subBeginDate = $('#SubBeginDate').val();
					subEndDate = $('#SubEndDate').val();
				}

				var notes = $('#notes').val();

				var hw = '';
				if(isAssigned){
					hw = $('#hwAssetSerial').val();
				}

				$.ajax({
					type: "GET",
					url: '/_apps/track1.5/php/createPurchase.php',
					data: "publisher="+publisher+"&title="+title+"&edition="+edition+"&version="+version+"&os="+os+"&numLic="+numLic+"&prdKey="+prdKey+"&upgradeLic="+upgradeLic+"&physMedia="+physMedia+"&freeware="+freeware+"&purchaseType="+purchaseType+"&purchaseDate="+purchaseDate+"&poNumber="+poNumber+"&pCardE="+pCardE+"&pCardV="+pCardV+"&pCardR="+pCardR+"&subscription="+subscription+"&subBeginDate="+subBeginDate+"&subEndDate="+subEndDate+"&notes="+notes+"&hw="+hw,
					datatype: 'html',
					success: function(html){
						console.log(html);
						modal.style.display = "none";
						if(html == 'Success'){
							$("#message-body").html("<p style='color: #258E25;'>Successful purchase!</p>");
						}else{
							$("#message-body").html("<p style='color: #660000;'>An error occured. Please try again</p>");
						}
						$("#purchaseMessage-modal").show().delay(3000).fadeOut();
					},
					error: function(){
						alert('fail');
					}
				});

			}


	// $('#viewDetail-modal2').dialog({
	// 		autoOpen:false,
	// 		width: 600,
	// 		buttons:[
	// 			{
	// 				text: 'Close',
	// 				click: function(){
	// 					$(this).dialog('close');
	// 				}
	// 			},
				
	// 		]
	// 	});


		</script>


		<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-button="welcome" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>Software Purchasing</h2>
                <p>Software purchases through Track comes down to 4 sections: Adding The Software, The Software Information, The Purchase Information, and Subcription Information.</p>
            </li>
            <li data-id="addSoftware" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>Adding The Software:</h2>
                <p>First you must choose the publisher of the purchased software and then choose the title, edition, and version in that order.</p>
            </li>
            <li data-id="softwareInformation" data-text="Next">
              <h1>Software Information:</h2>
                <p>This section wants to gather information just on the software itself.</p>
            </li>
            <li data-id="purchaseInformation" data-text="Next">
              <h1>Purchase Information:</h2>
                <p>This section focuses on how and when the software was purchase. For example, was the software purchased through a purchase order or a P-Card? If it's a purchase order, then just fill out the 'Purchase Date:' and the 'PO Number:' of this section. If it's through a P-Card, then fill out everything in this section except 'PO Number:'.</p>
            </li>
            <li data-id="subscriptionInformation" data-text="Next">
              <h1>Subscription Information:</h2>
                <p>Some software may not be a one-time purchase. Some software publishers may require a contract in which ADPT pays monthly/yearly in order to use the software. If that's the case, then check 'Yes' for 'Subscription Based:' and enter the beginning and end date of the subscription so that Track knows when the contract must be renewed. Otherwise, left this section as is with 'No' checked for 'Subscription Based:'.</p>
            </li>
            <li data-id="submit-purchase" data-text="End" data-prev-text="Prev">
              <h4>Then You're Done!</h4>
              <p>Once you've entered all the information you need, just hit the 'Add Purchase' button to let Track add this as a new record in the database. If you need to view the purchase records to modify some information, then go to 'Software'->'Manage Software'->'Purchase Records'.</p>
            </li>
          </ol>

<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.min.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.joyride.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/jquery.cookie.js"></script>

<script type="text/javascript">

      $('#help').click(function(){
        $(document).foundation('joyride', 'start');
      });




// $('#versionMerge-modal').dialog({
// 			autoOpen: false,
// 			width: 400,
// 			buttons:[
// 				{
// 					text: 'Confirm',
// 					click: function(){
// 						// $.ajax({
// 						// 	type: 'GET',
// 						// 	url: '/_apps/track1.5/php/mergeRows.php',
// 						// 	data: 'publisher1=' + box1ToMerge[0] + "&title1=" + box1ToMerge[1] + '&edition1=' + box1ToMerge[2] + '&version1=' + box1ToMerge[3] + '&publisher2=' + box2ToMerge[0] + "&title2=" + box2ToMerge[1] + '&edition2=' + box2ToMerge[2] + '&version2=' + box2ToMerge[3] + '&itemColumnName=' + itemColumnNameToBeMerged + '&item=' + itemToBeMerged,
// 						// 	success: function(data){
// 						// 		alert(data);
// 						// 		itemColumnName.length = 0;
// 						// 		itemToBeMerged.length = 0;
// 						// 		box1ToMerge.length = 0;
// 						// 		box2ToMerge.length = 0;
// 						// 	},
// 							error: function(){
// 								alert('fail');
// 							}
// 						});
// 					}
// 				},
// 				{
// 					text: 'Cancel',
// 					click: function(){
// 						location.reload();
// 						$(this).dialog('close');
// 					}
// 				}
// 			]
// 		});
</script>


	</body>
</html>