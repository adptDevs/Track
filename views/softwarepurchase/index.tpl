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
		document.getElementById('purchaseRecords').classList.add('active');
		document.getElementById('allSoftwareRecords').classList.remove('active');
	</script>


	<?php

		if(isset($this->_data)){
	?>

		<form class="left custom-fixed">
<!-- Header for SOFTWARE PURCHASES PAGE -->
			<h3><div style ='font-family: Oleo Script;font-weight:bold; font-size: 350%; text-shadow: 7px 7px #000;text-align: center; margin-left:10px;color:#a9a9a9'>Software Purchases</h3>
	<div id="purchaseInfo">
			<fieldset>
				

					<p><b>Use one of the three fields</b></p>

					<!-- The user must enter data in at least one of these fields -->
					<label>PO Number:</label>
					<input type="text" id="PONumber" />

					<label>P-Card Reference Number:</label>
					<input type="text" id="PCardRefNumber" />

					<label>Software Title/Publisher:</label>
					<input type="text" id="softwarePurchase" />

				</div>

			</fieldset>

			<!-- This button fires off a jQuery function using its id as the selector -->
			<div>
				<button type="submit" id="searchPurchases" value="Search">Search Purchases</button>
			</div>
		</form>

	<?php

		}else{
			echo "<p>There are no purchases to display</p>";
		}

	?>





	<div id="manage-results" style="overflow: auto; margin-left: 35%;">
	</div>

	<div id="viewPurchase-modal" class="modal4">
			<div class="viewDetail-modal4">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Purchase Info:</h2>
			</div>

			<div class="modal-body" id="purchase-detail-body">
			</div>

			<div class="modal-footer">
			</div>
		</div>
<!-- ///////////////////////////// VIEW DETAIL MODEL 2 BEGIN ///////////////////////////////////////////////////////////////////////////////////// -->

	

	<script type="text/javascript">

		var modal_purchaseDetail = document.getElementById('viewPurchase-modal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal_purchaseDetail.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal_purchaseDetail) {
		        modal_purchaseDetail.style.display = "none";
		    }
		}


//////////////////////////////////////////////////////// Search Purchases ///////////////////////////////////////////////////////////////////////////////////////////////////////

		$('#searchPurchases').click(function(event){


			var poNumber = document.getElementById('PONumber').value;
			var pCardRefNumber = document.getElementById('PCardRefNumber').value;
			var software = document.getElementById('softwarePurchase').value;

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getPurchase.php',
				data: 'poNumber=' + poNumber + '&pCardRefNumber=' + pCardRefNumber + '&software=' + software + '&isPurchaseDetailPage=true',
				dataType: 'html',
				success: function(html){
					$("#manage-results").html(html);
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		});

		function viewPurchaseDetail(id){
			console.log(id);
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getPurchaseDetail.php',
				data: 'ID=' + id + '&isPurchaseDetailPage=true',
				dataType: "html",
				success: function(html){
					$("#purchase-detail-body").html(html);
					modal_purchaseDetail.style.display = "block";
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();
		}


	</script>

	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-id="allSoftwareRecords" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>The All Software Records Tab:</h2>
                <p>This page displays all the software records in a table that is currently in the database. From here, you can merge, edit, and view the purchasese of all the software records.</p>
            </li>
            <li data-id="purchaseInfo" data-text="Next">
              <h1>Pick 1 of 3:</h2>
                <p>Enter a PO Number, a P-Card Reference Number, or either a software title or publisher to view a purchase record.</p>
            </li>
            <li data-id="searchPurchases" data-text="End">
              <h1>Search Purchases:</h2>
                <p>Once you've entered the information in one the fields above, click this 'search' button to view the purhcase record(s). Just a side note, if enter just a publisher, there's a chance that there may be purchases for each of that publisher's titles. In which case, you will be given more than one record.</p>
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