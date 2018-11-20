<!DOCTYPE HTML>
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

</head>

<body>

	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>
	<?php include HOME . DS . 'includes' . DS . 'softwaremenu.inc.php'; ?>

	<script type="text/javascript">
		document.getElementById('purchaseRecords').classList.remove('active');
		document.getElementById('allSoftwareRecords').classList.add('active');
	</script>


	<h2><div style ='font-family: Oleo Script;font-weight:bold; font-size: 350%; text-shadow: 7px 7px #000;text-align: center;color:#a9a9a9'>Software Master</h2>
	</div>
	<div>

		<!-- The user clicks this button when he/she has selected 2 records using the check boxes. -->
		<!-- Then this button begins a jQuery function to merge those two records -->
		<button type="submit" id="merge" value="Merge">Merge</button>
		<button type="submit" id="clear" value="Clear">Clear Merge</button>

		<!-- The user selects one of these options to show a table sorted by whatever the user selected. -->
		<!-- This fires off the javascript function above. -->
		<h3><div style = ' border-top: solid; background-color: white; margin-bottom: -10px; width:10%; border-right: solid; border-radius: 5px; text-align: center; border-color: #e1e1e1;'>Sort By:</h3>
		<select class="drop-down" id="softwareSort" name="sort" onchange="sortRecords(this.value);">
			<option>--</option>
			<option>Publisher</option>
			<option>Title</option>
		</select>
	</div>


	<?php

		if(isset($this->_data)){
	?>

<!-- Software Table (Default table to show) -->

		<table class="software-table" id="softwareTable" style="display: table; width: 100%;">
		<tr>
			<th></th>
			<th></th>
			<th></th>
			<th>Publisher</th>
			<th>Title</th>
			<th>Edition</th>
			<th>Version</th>
		</tr>

	<?php
			$current = "";
			$old = "";
			$row=0;

			while($row < sizeof($this->_data['software'])){
			// $this->_data is the top-level array
			// It has an index called 'software' that contains an array of rows from odbc_fetch_array
			// $row will represent the individual row to access
			// Finally, the third index will access the element within the row

				$current = array($this->_data['software'][$row]['Title'], $this->_data['software'][$row]['Version']);

				if($current != $old){
					$old = $current;
	?>

			<tr>

				<!-- This is the check box the user selects for merging two records. -->
				<!-- When the box is selected, it goes to a javascript function below called "setMergeBox". -->
				<!-- It sets the global variables of the scripts and processes them via AJAX when the user hits the "Merge" button -->
				<td><input type="checkbox" id="boxForMerge" class="mergeBox" onchange="setMergeBox('<?php echo $this->_data['software'][$row]['ID']; ?>', this.checked);" value="<?php echo $this->_data['software'][$row]['ID']; ?>" /></td>

				<!-- This is the edit button that goes to a javascript function below called "editSoftware" to open up a modal box to edit the software -->
				<td><a href="#" id="editBox" onclick="editSoftware('<?php echo $this->_data['software'][$row]['ID'] ?>', '<?php echo $this->_data['software'][$row]['Publisher']; ?>', '<?php echo $this->_data['software'][$row]['Title']; ?>', '<?php echo $this->_data['software'][$row]['Edition']; ?>', '<?php echo $this->_data['software'][$row]['Version']; ?>');">Edit</a></td>


	<?php
				$count = 0;
				for($i = 0; $i < sizeof($this->_data['softwarePurchases']); $i++){
					$count++;
					if($this->_data['softwarePurchases'][$i]['SoftwareID'] == $this->_data['software'][$row]['SoftwareID']){
	?>
				<!-- Again, this goes to a javascript function below called "viewPurchase" to open up a modal box to see a quick view of the purchase info for that software -->
				<td><a href="#"id="purchaseBox" onclick="viewPurchase('<?php echo $this->_data['software'][$row]['ID']; ?>');">View Machines</a></td>
	<?php
						break;
					}else if($count >= sizeof($this->_data['softwarePurchases'])){
						echo "<td></td>";
						break;
					}

				}

	?>

				<td><?php echo $this->_data['software'][$row]['Publisher'];//print_r($p['Publisher']); ?></td>
				<td><?php echo $this->_data['software'][$row]['Title']; ?></td>
				<td><?php echo $this->_data['software'][$row]['Edition']; ?></td>
				<td><?php echo $this->_data['software'][$row]['Version']; ?></td>

			</tr>

	<?php
				}
				$row++;
			}

	?>

		</table>


<!-- Software By Publisher Table -->

		<table class="software-table" id="softwareByPublisher" style="display: none; width: 100%;">
		<tr>
			<th></th>
			<th></th>
			<th></th>
			<th>Publisher</th>
			<th>Title</th>
			<th>Edition</th>
			<th>Version</th>
		</tr>

	<?php
			$current = "";
			$old = "";
			$row=0;

			while($row < sizeof($this->_data['software'])){
			// $this->_data is the top-level array
			// It has an index called 'software' that contains an array of rows from odbc_fetch_array
			// $row will represent the individual row to access
			// Finally, the third index will access the element within the row

				$current = array($this->_data['software'][$row]['Title'], $this->_data['software'][$row]['Version']);

				if($current != $old){
					$old = $current;
	?>


			<tr>


				<td><input type="checkbox" id="boxForMerge" class="mergeBox" onchange="setMergeBox('<?php echo $this->_data['softwareByPublisher'][$row]['ID']; ?>', this.checked);" value="<?php echo $this->_data['softwareByPublisher'][$row]['ID']; ?>" /></td>


				<!-- This is the edit button that goes to a javascript function below called "editSoftware" to open up a modal box to edit the software -->
				<td><a href="#" id="editBox" onclick="editSoftware('<?php echo $this->_data['softwareByPublisher'][$row]['ID'] ?>', '<?php echo $this->_data['softwareByPublisher'][$row]['Publisher']; ?>', '<?php echo $this->_data['softwareByPublisher'][$row]['Title']; ?>', '<?php echo $this->_data['softwareByPublisher'][$row]['Edition']; ?>', '<?php echo $this->_data['softwareByPublisher'][$row]['Version']; ?>');">Edit</a></td>


	<?php
				$count = 0;
				for($i = 0; $i < sizeof($this->_data['softwarePurchases']); $i++){
					$count++;
					if($this->_data['softwarePurchases'][$i]['SoftwareID'] == $this->_data['softwareByPublisher'][$row]['SoftwareID']){
	?>
				<td><a href="#" onclick="viewPurchase('<?php echo $this->_data['softwareByPublisher'][$row]['ID']; ?>');">View Machines</a></td>
	<?php
						break;
					}else if($count >= sizeof($this->_data['softwarePurchases'])){
						echo "<td></td>";
						break;
					}

				}

	?>

				<td><?php echo $this->_data['softwareByPublisher'][$row]['Publisher'];//print_r($p['Publisher']); ?></td>
				<td><?php echo $this->_data['softwareByPublisher'][$row]['Title']; ?></td>
				<td><?php echo $this->_data['softwareByPublisher'][$row]['Edition']; ?></td>
				<td><?php echo $this->_data['softwareByPublisher'][$row]['Version']; ?></td>

			</tr>

	<?php
				}
				$row++;
			}

	?>

		</table>


<!-- Software By Title Table -->

		<table class="software-table" id="softwareByTitle" style="display: none; width: 100%">
		<tr>
			<th></th>
			<th></th>
			<th></th>
			<th>Publisher</th>
			<th>Title</th>
			<th>Edition</th>
			<th>Version</th>
		</tr>

	<?php
			$current = "";
			$old = "";
			$row=0;

			while($row < sizeof($this->_data['software'])){
			// $this->_data is the top-level array
			// It has an index called 'software' that contains an array of rows from odbc_fetch_array
			// $row will represent the individual row to access
			// Finally, the third index will access the element within the row

				$current = array($this->_data['software'][$row]['Title'], $this->_data['software'][$row]['Version']);

				if($current != $old){
					$old = $current;
	?>

			<tr>


				<td><input type="checkbox" id="boxForMerge" class="mergeBox" onchange="setMergeBox('<?php echo $this->_data['softwareByTitle'][$row]['ID']; ?>', this.checked);" value="<?php echo $this->_data['softwareByTitle'][$row]['ID']; ?>" /></td>

				<!-- This is the edit button that goes to a javascript function below called "editSoftware" to open up a modal box to edit the software -->
				<td><a href="#" id="editBox" onclick="editSoftware('<?php echo $this->_data['softwareByTitle'][$row]['ID'] ?>', '<?php echo $this->_data['softwareByTitle'][$row]['Publisher']; ?>', '<?php echo $this->_data['softwareByTitle'][$row]['Title']; ?>', '<?php echo $this->_data['softwareByTitle'][$row]['Edition']; ?>', '<?php echo $this->_data['softwareByTitle'][$row]['Version']; ?>');">Edit</a></td>


	<?php
				$count = 0;
				for($i = 0; $i < sizeof($this->_data['softwarePurchases']); $i++){
					$count++;
					if($this->_data['softwarePurchases'][$i]['SoftwareID'] == $this->_data['softwareByTitle'][$row]['SoftwareID']){
	?>
				<td><a href="#" onclick="viewPurchase('<?php echo $this->_data['softwareByTitle'][$row]['ID']; ?>'');">View Machines</a></td>
	<?php
						break;
					}else if($count >= sizeof($this->_data['softwarePurchases'])){
						echo "<td></td>";
						break;
					}

				}

	?>

				<td><?php echo $this->_data['softwareByTitle'][$row]['Publisher'];//print_r($p['Publisher']); ?></td>
				<td><?php echo $this->_data['softwareByTitle'][$row]['Title']; ?></td>
				<td><?php echo $this->_data['softwareByTitle'][$row]['Edition']; ?></td>
				<td><?php echo $this->_data['softwareByTitle'][$row]['Version']; ?></td>

			</tr>

	<?php
				}
				$row++;
			}

	?>

		</table>







<!-- Modals -->

		<div id="viewPurchase-modal" class="modal4">
			<div class="viewDetail-modal4">
				<div class="modal-header">
					<span class="close">x</span>
					<h2>Purchase Info:</h2>
				</div>

				<div class="modal-body" id="purchase-body">
				</div>

				<div class="modal-body" id="purchase-detail-body" style="display: none;">
				</div>

				<div class="modal-footer">
				</div>
			</div>
		</div>

		<div id="swMessage-modal" class="modal4">
			<div class="viewDetail-modal4">
				<div class="modal-header">
					<span class="close">x</span>
					<h2>Results:</h2>
				</div>

				<div class="modal-body" id="message-body">
				</div>

				<div class="modal-footer">
				</div>
			</div>
		</div>

		<div id="versionMerge-modal" class="modal4">
			<div class="viewDetail-modal4">
				<div class="modal-header">
					<span class="close">x</span>
					<h2>Merge Software:</h2>
				</div>

				<div class="modal-body" id="merge-body">
				</div>

				<div class="modal-footer">
				</div>
			</div>	
		</div>

		<div id="editSW-modal" class="modal4">
			<div class="viewDetail-modal4">
				<div class="modal-header">
					<span class="close">x</span>
					<h2>Edit Software:</h2>
				</div>

				<div class="modal-body" id="edit-body">
					<div class="row">
						<div class="large-3 columns">
							<label style="text-align: left;">Publisher</label>
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<input type="text" id="newPublisher">
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<label style="text-align: left;">Title</label>
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<input type="text" id="newTitle">
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<label style="text-align: left;">Edition</label>
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<input type="text" id="newEdition">
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<label style="text-align: left;">Version</label>
						</div>
					</div>
					<div class="row">
						<div class="large-3 columns">
							<input type="text" id="newVersion">
						</div>
					</div>

					<div class="row">
						<div class="large-1 columns">
							<button style="text-align: left;" id="submitEditBtn" value="" onclick="submitEdit(this.value)">Save</button>
						</div>
					</div>
				</div>

				<div class="modal-footer">
				</div>
			</div>	
		</div>

		<div id="transferSW-modal" class="modal3">
			<div class="viewDetail-modal3">
				<div class="modal-header">
					<span class="close">x</span>
					<h2>Transfer Software:</h2>
				</div>

				<div class="modal-body" id="transfer-body">
				</div>

				<div class="modal-footer">
				</div>
			</div>
		</div>

<!-- //-->

	<?php

		}else{
			echo "<p>There is no software to display</p>";
		}

	?>

	<script type="text/javascript">

/*
***************************************************************************************
*
*	Globals and Global Functions
*
*
***************************************************************************************
*/

		var modal_purchase = document.getElementById('viewPurchase-modal');
		var modal_purchaseDetail = document.getElementById('purchase-detail-body');
		var modal_merge = document.getElementById('versionMerge-modal');
		var modal_message = document.getElementById('swMessage-modal');
		var modal_edit = document.getElementById('editSW-modal');
		var modal_transfer = document.getElementById('transferSW-modal');

		// Get the <span> element that closes the modal
		var spanPurchase = document.getElementsByClassName("close")[0];
		var spanMessage = document.getElementsByClassName("close")[1];
		var spanMerge = document.getElementsByClassName("close")[2];
		var spanEdit = document.getElementsByClassName("close")[3];
		var spanTransfer = document.getElementsByClassName("close")[4];

		// When the user clicks on <span> (x), close the modal
		spanPurchase.onclick = function() {
		    modal_purchase.style.display = "none";
		    $("#purchase-detail-body").hide();
		}
		spanMessage.onclick = function() {
		    modal_message.style.display = "none";
		}
		spanMerge.onclick = function() {
		    modal_merge.style.display = "none";
		}
		spanEdit.onclick = function() {
		    modal_edit.style.display = "none";
		}
		spanTransfer.onclick = function() {
			modal_transfer.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal_purchase) {
		        modal_purchase.style.display = "none";
		        modal_purchaseDetail.style.display = "none";
		        $("#purchase-detail-body").hide();
		    }

		    if(event.target == modal_merge){
		    	modal_merge.style.display = "none";
		    }

		    if(event.target == modal_message){
		    	modal_message.style.display = "none";
		    }

		    if(event.target == modal_edit){
		    	 modal_edit.style.display = "none";
		    }

		    if(event.target == modal_transfer){
		    	 modal_transfer.style.display = "none";
		    }
		}

		var box1ToMerge = [];
		var box2ToMerge = [];
		var rowsToMerge = [];
		var masterRow = '';

		var itemToBeMerged = [];
		var itemColumnNameToBeMerged = [];

		var oldSoftware = [];
		var newSoftware = [];
		var softwareTables = ['tblSoftwarePubMaster', 'tblTitleMaster', 'tblSoftwareEditionMaster', 'tblSoftwareVersionMaster'];
		var softwareIndex = ['Publisher', 'Title', 'Edition', 'Version'];

		function setMergeBox(id, isChecked){
			if(isChecked){
				rowsToMerge.push(id)
			}else{
				var index = rowsToMerge.indexOf(id);
				if(index > -1){
					rowsToMerge.splice(index, 1);
				}
			}
			console.log(rowsToMerge);
		}

		function setItem(itemColumnName, item){

			itemColumnNameToBeMerged.push(itemColumnName);
			itemToBeMerged.push(item);

		}

/*
***************************************************************************************
*
*	Event Functions
*
*
***************************************************************************************
*/

		$('#clear').click(function(){
	        $('tbody tr td input[type="checkbox"]').each(function(){
	            $(this).prop('checked', false);
	        });
		});

		$("#merge").click(function(event){

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/checkRows.php',
				data: 'rows='+rowsToMerge,
				dataType: "html",
				success: function(html){
					$("#merge-body").html(html);
					modal_merge.style.display = "block";
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		});

		function setMasterRow(id){
			masterRow = id;
		}

		function mergeRows(){
			var index = rowsToMerge.indexOf(masterRow);
			if(index > -1){
				rowsToMerge.splice(index, 1);
			}

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/mergeRows.php',
				data: 'masterID='+masterRow+"&rowsToMerge="+rowsToMerge,
				dataType: 'html',
				success: function(html){
					$("#message-body").html("<p style='color: #258E25;'>Successfully merged rows</p>");
					$("#swMessage-modal").show().delay(1000).fadeOut(function(){
						location.reload();
					});
				},
				error: function(){
					$("#message-body").html("<p style='color: #660000;'>An error occured. Please try again</p>");
					$("#swMessage-modal").show().delay(2000).fadeOut();
				}
			});
		}

		function viewPurchase(id){

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getPurchase.php',
				data: 'BID=' + id,
				dataType: "html",
				success: function(html){
					$("#purchase-body").html(html);
					modal_purchase.style.display = "block";
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		}

		function viewPurchaseDetail(id){

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getPurchaseDetail.php',
				data: 'ID=' + id + '&isPurchaseDetailPage=false',
				dataType: "html",
				success: function(html){
					$("#purchase-detail-body").html(html);
					$("#purchase-detail-body").show();
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		}

		function getTransferSoftware(id){

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getSoftwareTransfer.php',
				data: 'ID=' + id,
				dataType: "html",
				success: function(html){
					$("#transfer-body").html(html);
					$("#transferSW-modal").show();
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		}

		function transferSoftware(assetNumber, swID){
			var newAssetNumber = $('#newAssetNumber').val();
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/transferSoftware.php',
				data: 'oldAssetNumber='+assetNumber+'&newAssetNumber='+newAssetNumber+'&swID='+swID,
				dataType: "html",
				success: function(html){
					$("#message-body").html(html);
					$("#swMessage-modal").show().delay(1000).fadeOut();
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();
		}

		function editSoftware(id, publisher, title, edition="", version){

			//$("#edit-body").html(html);
			$("#newPublisher").val(publisher);
			$("#newTitle").val( title);
			$("#newEdition").val(edition);
			$("#newVersion").val(version);
			$("#submitEditBtn").val(id);

			modal_edit.style.display = "block";

		}

		function submitEdit(id){
			var newPublisher = $("#newPublisher").val();
			var newTitle = $("#newTitle").val();
			var newEdition = $("#newEdition").val();
			var newVersion = $("#newVersion").val();

			modal_edit.style.display = "none";

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/editSoftware.php',
				data: 'publisher=' + newPublisher + '&title=' + newTitle + '&edition=' + newEdition + '&version=' + newVersion + '&ID=' + id,
				dataType: "html",
				success: function(html){
					if(html == 'Success'){
						$("#message-body").html("<p style='color: #258E25;'>Successfully edited record</p>");
						$("#swMessage-modal").show().delay(1000).fadeOut(function(){
							location.reload();
						});
					}else{
						$("#message-body").html("<p style='color: #660000;'>An error occured. The record didn't update. Please try again</p>");
						$("#swMessage-modal").show().delay(2000).fadeOut();
					}
				},
				error: function(){
					$("#message-body").html("<p style='color: #660000;'>An error occured. Please try again</p>");
					$("#swMessage-modal").show().delay(2000).fadeOut();
				}
			});
		}

		// This page has 3 different tables loaded. Only 1 table is showing at a time and this function toggles among them
			function sortRecords(sortValue){

				document.getElementById('softwareByPublisher').style.display = "none";
				document.getElementById('softwareByTitle').style.display = "none";

				if(sortValue == 'Publisher'){

					document.getElementById('softwareByPublisher').style.display = "table";
					document.getElementById('softwareTable').style.display = "none";

				}else if(sortValue == 'Title'){

					document.getElementById('softwareByTitle').style.display = "table";
					document.getElementById('softwareTable').style.display = "none";

				}else if(sortValue == '--'){

					document.getElementById('softwareTable').style.display = "table";

				}

				$('tbody tr td input[type="checkbox"]').each(function(){
					if(rowsToMerge.indexOf($(this).val()) > -1){
						$(this).prop('checked', true);
					}
		        });
			}

	</script>

	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-id="allSoftwareRecords" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>The All Software Records Tab (Current Page):</h2>
                <p>This page displays all the software records in a table that is currently in the database. From here, you can merge, edit, and view the purchasese of all the software records.</p>
            </li>
            <li data-id="purchaseRecords" data-text="Next">
              <h1>Purchase Records:</h2>
                <p>The Purchase Records tab will take you to the page to enter software information to pull up software purchase records for viewing and editing.</p>
            </li>
            <li data-id="merge" data-text="Next">
              <h1>Merging Records:</h2>
                <p>After selecting TWO records, click this button to merge those two records together as one. This is used mainly to clean up the table if there are two records that appear to be different but they are actually the same. This is usually a result of past user error and this fixes the error in a more secure fashion just in case there's a purchase under the incorrect record. Track will then replace the purchase record under the correct software record.</p>
            </li>
            <li data-id="boxForMerge" data-text="Next">
              <h1>Merge Selection Box:</h2>
                <p>To select a record for a merge, check this box. After you selected TWO boxes and hit the 'Merge' button, you'll be prompted to select what you want the united software to be defined as.</p>
            </li>
            <li data-id="softwareSort" data-text="Next">
              <h1>Sorting Records</h2>
                <p>In this drop-down, you can select one the items to sort the records by Publisher or Title.</p>
            </li>
            <li data-id="editBox" data-text="Next">
              <h1>Edit Records:</h2>
                <p>Click this link to edit a particular software. You'll be prompted with the software record and you can edit it however you want.</p>
            </li>
            <li data-id="purchaseBox" data-text="End">
              <h1>View Purchases:</h2>
                <p>This link will open a prompt to show a little bit of the purchase information for that software. If you want to see the full purchase, then hit the button on the prompt called 'Open Purchase'.</p>
            </li>
          </ol>

<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.min.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.joyride.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/jquery.cookie.js"></script>

<script type="text/javascript">

      $('#help').click(function(){
        $(document).foundation('joyride', 'start');
      });

</script>

</body>

<html>
