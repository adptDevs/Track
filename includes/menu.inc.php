<header>
 <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC|Oleo+Script|Raleway" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Oleo+Script|Raleway" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/styles.css">
  <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/foundation.css">
	     <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/normalize.css">

		 <nav class="top-bar" data-topbar role="navigation">

		  <ul class="title-area">
		    <!-- Title Area -->
		    <li class="name">
		    </li>
		    <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
		    <li class="toggle-topbar menu-icon"><a href=""><span>Menu</span></a></li>
		  </ul>

		  <section class="top-bar-section">
		    <ul class="left">
		      <li class="has-dropdown not-click" id="hardware"><a href="#">Hardware</a>

		        <ul class="dropdown">
		          <li><a href="/_apps/track1.5/index.php/managehardware">Manage Hardware</a></li>
		          <li><a style='display:none;' href="" id='startHWWizard'>Add Hardware Wizard</a></li>
		        </ul>
		      </li>

		      <li class="has-dropdown not-click" id="software"><a href="#">Software</a>

		        <ul class="dropdown">
		          <!-- <li><a href="/_apps/track1.5/index.php/purchasesoftware">Add Software Purchase</a></li> -->
		          <!--<li><a href="/_apps/track1.5/index.php/managesoftware">Manage Software</a></li>-->
		          <li><a href="/_apps/track1.5/index.php/software">Manage Software</a>
		          <li><a style='display:none;' href="" id='startSWWizard'>Add Software Wizard</a></li>
<!--
		            <ul class="dropdown">
		              <li><a href="/_apps/track1.1/software/viewAllSW.php">Software Master Records</a></li>
		              <li><a href="#">Software Edition</a></li>
		              <li><a href="#">Software OS</a></li>
		              <li><a href="#">Software Publisher</a></li>
		              <li><a href="#">Software Titles</a></li>
		              <li><a href="#">Software Version</a></li>
		              <li><a href="#">Machine Software</a></li>
		              <li><a href="#">License Status Master</a></li>
		          
		            </ul>
-->
		          </li>
		          <!-- <li><a href="/_apps/track1.5/index.php/addsoftware">Add Software</a></li> -->


		        </ul>
		      </li>

		      <li class="has-dropdown not-click" id="reports"><a href="#">Reports</a>

		        <ul class="dropdown">
		          <li><a href="/_apps/track1.5/index.php/hardwarecustomreport">Hardware</a>

		            <!-- <ul class="dropdown">
		              <li><a href="#">All Hardware</a></li>
		              <li><a href="/_apps/track1.5/index.php/hardwarecustomreport">Selected Hardware</a></li>
		              <li><a href="/_apps/track1.5/index.php/hardwarereportLocation">Hardware By Location</a></li>
		            </ul> -->

		          </li>
		          <!-- <li><a href="#">Software</a></li> -->
		        </ul>
		      </li>

		      <li class="divider"></li>
		      <li><a href="/_apps/track1.5/">Home</a></li>
		      <li><a href="#" onclick="goBack()">Back</a></li>
		    </ul>
<!-- HERE YOU HAVE IN LINE STYLE, CREATE DIV AND ADD TO CSS -->
<!-- ////////////// HELP BUTTON ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

		    <!-- <ul class="right">
		    	<li class="has-form">
				  	<div class="large-4 small-3 columns">
				  		<a href="#" class="btn-warning raised" id="help" style=' padding-right: 35px; padding-left: 30px; padding-bottom: 2px; font-size: 145%; font-family:Oleo Script; margin-left: -30px; border-radius: 24px;border-radius: 32px;border-radius: 14px;border-radius: 10px;'>Help</a>
				 	</div>
				 </li>
			</ul> -->

			<ul class="right">
		    	<li class="has-form">
				  	<div class="large-4 small-3 columns">
				  		<a href="#" class="btn-warning raised" id="toggleAnim" style=' padding-right: 35px; padding-left: 30px; padding-bottom: 2px; font-size: 125%; font-family:Oleo Script; margin-left: -30px; border-radius: 24px;border-radius: 32px;border-radius: 14px;border-radius: 10px;'>For&nbsp;Jason</a>
				 	</div>
				 </li>
			</ul>

		    <!-- <ul class="right">
		    	<li class="has-form" id="searchTrack">
					<div class="large-8 small-9 columns">
				  		<input type"text" id="trackSearchItem" placeholder="Quick Search">
				  	</div> -->

<!-- HERE YOU HAVE IN LINE STYLE, CREATE DIV AND ADD TO CSS -->
<!-- ////////////////// SEARCH BUTTON ////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

				  	<!-- <div class="large-4 small-3 columns">
				  		<a href="#" class="btn-info raised" onclick="searchTrack('/_apps/track1.5/php/searchTrack.php'); document.getElementById('quickSearchResult').style.display = 'block';" style=' padding-right: 30px; padding-left: 30px; margin-left: -30px;  padding-bottom: 2px; margin-top: 0px; font-size: 145%; font-family:Oleo Script; border-radius: 24px;border-radius: 32px;border-radius: 14px;border-radius: 10px; '>Search</a>
				 	</div>
				 </li>
			</ul> -->

		  </section>

		</nav>

	</header>

	<div id="quickSearchResult" style="
		background-color: #FFFFFF;
		border: 1px solid #333333;
		position: fixed;
		top: 50%;
		left: 50%;
		margin-top: -100px;
		margin-left: -250px;
		width: 30%;
		display: none;">
	</div>