<!DOCTYPE HTML>
<html>

<head>

<meta http-equiv="Content-Type" charset="utf-8">

<title><?php echo $home; ?></title>

<!-- Google Font -->
<!--   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oleo+Script|Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC|Oleo+Script|Raleway" rel="stylesheet">
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
<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/styles.css">
<script type="text/javascript" src="/Playground/megan/flyaway-send-button/index.js"></script>
<link rel="stylesheet" type="text/css" href="Playground/megan/flyaway-send-button/css/style.css">
<link rel="stylesheet" type="text/css" href="/flyaway-send-button/css/reset.css">

<script>
    $(function() {
        $( ".datefield" ).datepicker();
    });
</script>

</head> 

<!-- ///////////////////////////////////////////BODY START//////////////////////////////////////////////////////  -->

<body class="main">
<div id="animationBackground" class="backgroundHomePage">
<!-- <div> -->
 
<div style="min-width: 960px; margin: 0 auto;">

<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

<h1>
<div style ='font-family: Oleo Script;font-weight:bold; font-size: 350%; text-shadow: 7px 7px #000;text-align: center;color:#a9a9a9'>Welcome To Track
</div>
</h1>

<!-- TRACK IMG -->
<div class="Trackimg">
<img src="/_apps/track1.5/img/Track_logo.gif" alt="HTML5 Icon" style ='display: block; margin-left: auto; margin-right: auto;' >
</div> 

<?php

$myUrl = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];

$queryString = $_SERVER['QUERY_STRING'];

$full = $myUrl.$queryString;

//echo "$full" . "<br>";

?>
<!-- ////////////////////////////////////TOP CONTAINER BEGIN///////////////////////////////////////////////////// -->

      <div class="container" style="text-align: center;">
        <div class="row">
          <div class="row">
            <button id="hvr-bubble-bottomHW" >SOFTWARE</button>
<!--<button class="hvr-grow-shadowWARNING ">Hardware Without Serial Numbers</button> -->
            <button id="hvr-bubble-bottomHW2">HARDWARE</button>
          </div>
        </div>
      </div>
    </div>
  </div>

<!--/////////////////////////MODAL FOR HOME///////////////////////////////////////////////////////////////-->

<!-- THE MODAL START -->
<div id="myModalHOME" class="modalHOME">

<!-- MODAL CONTENT -->
    <div class="modal-contentHOME">

      <div class="modal-headerHOME">
        <span class="close">x</span>
        <h2>
        <span id="softwareSideNav" style="font-size:40px; cursor:pointer; margin-right:20px; " onclick="toggleNav(1)">&#9776; </span>
        <div style="font-weight:bold; display: inline-block;">SOFTWARE
        </div></h2>
      </div>
      <div class="modal-bodyHOME">
        <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="toggleNav(1)">&times;</a>

        <button id="SW-Overview" type="button" >Overview</button>
 
        <button class="wizardActivate" id="sauramon" type="button">Wizard<span class="black">Click "Wizzard" to Begin Adding Software Purchases.</span></button>
      </div></div>

      <div id="softwareOverview-body">
      </div>
<!-- ////////////////////////////MODAL BODY///////////////////////////////////////////////////////////////////  -->

<!-- SOFTWARE WIZARD -->

<!-- <div class="modal-bodyHOME">  -->

      <div class="containerWizard" id="gandalf" style="display: none; width: 60%; margin: 0 auto;">

<!-- PROGRESSION BAR TOP -->

        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" id="Beginsoftware" class="btn btn-primary btn-circle">1</a>
                    <p>Begin Software Setup</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle disabled">2</a>
                    <p>Purchase Info</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default btn-circle disabled">3</a>
                    <p>Licenses Info</p>
                </div>
                <div class="stepwizard-step">
                <a href="#step-4" type="button" class="btn btn-default btn-circle disabled">4</a>
                <p>Complete</p>
                </div>
            </div>
        </div>

<!-- FORM FOR STEP ONE VIA SOFTWARE WIZARD -->
        <form role="form" id="softwarePurchaseForm">
                <div class="row setup-content" id="step-1">
                  <div class="col-xs-12">
                    <div class="col-md-12">
<!-- STEP ONE BEGIN -->
                        <h3> Step 1:</h3>
                        <h3 style="color:#57bc90; font-weight:bold;">Input Standard Software Information</h3>

<!-- SELECT PUBLISHER -->
                        <div class="form-group">
                            <label class="control-label">Publisher:</label>
                            <input type="text" id="SoftPub" list="publisherList" required>
                            <datalist id="publisherList">
                          <?php

                            $row=0;
                            while($row < sizeof($this->_data['addpublisher'])){
                              echo "<option>" . $this->_data['addpublisher'][$row]['Publisher'] . "</option>";
                              $row++;
                            }

                          ?>
                            </datalist>

                            <label class="control-label">Title:</label>
                            <input type="text" id="SoftTitle" list="titleList" required>
                            <datalist id="titleList">
                              
                            </datalist>


                            <label class="control-label">Edition:</label>
                            <input type="text" id="SoftEdition" list="editionList">
                            <datalist id="editionList">
                              
                            </datalist>


                            <label class="control-label">Version:</label>
                            <input type="text" id="SoftVersion" list="versionList">
                            <datalist id="versionList">
                              
                            </datalist>

                        </div>
                      <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                    </div> 
                  </div>
                </div>

<!-- STEP TWO BEGIN -->
                <div class="row setup-content" id="step-2"> 
                  <div class="col-xs-12">
                    <div class="col-md-12">
                      <h3> Step 2: </h3>
                       <h3 style="color:#57bc90; font-weight:bold; ">Purchase Type Information</h3>

<!-- SOFTWARE TYPE RADIO BUTTON -->
                      <div class="form-group">
                        <label class="control-label" style="margin-bottom:10px;">Software Type:</label>
                        <input type="radio" name="swTypeRadio" class="freew" value="renewal">Renewal&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="swTypeRadio" class="freew" value="single" checked>Single-purchase<br/>
                      </div>

                      <div id="singleSoftware" class="form-group">
                        <label class="control-label">Single-purchase Type:</label>
                        <select id="singlePurchaseType">
                          <option>Bundled</option>
                          <option>Freeware</option>
                          <option>Track-no-deprecate</option>
                          <option>Track-to-deprecate</option>
                        </select>
                      </div>

                      <div id="renewalSoftware" class="form-group" style="display: none;">
                        <label class="control-label">Renewal Type:</label>
                        <select id="renewalType">
                          <option>Global software agreement</option>
                          <option>Per seat and 1 edition</option>
                          <option>Per seat and multi-editions</option>
                          <option>Server</option>
                        </select>
                      </div>

                      <div id="softwareToDeprecateInfo">
                      </div>

<!-- NEXT BUTTON FOR STEP 2 -->
                      <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                    </div>
                  </div>
                </div>  

<!-- STEP 3 BEGIN -->
                <div class="row setup-content" id="step-3"> 
                  <div class="col-xs-12">
                    <div class="col-md-12">
                      <h3> Step 3: </h3>
                       <h3 style="color:#57bc90; font-weight: bold; ">Additional Purchase Information</h3>

<!--SELECT SOFTWARE  -->
                        <div class="form-group">
                          <label class="control-label" style="margin-bottom:10px;">Select OS</label>           
                          <input id="OS" class="os" name="osRadio" type="radio" value="1" checked>Windows&nbsp;&nbsp;&nbsp;<input id="OS" class="os" name="osRadio" type="radio" value="2">Apple&nbsp;&nbsp;&nbsp;<input id="OS" class="os" name="osRadio" type="radio" value="3">Both<br/>
                        </div>

<!-- PHYSCIAL MEDIA RADIO BUTTON -->
                        <div class="form-group">
                          <label class="control-label" style="margin-bottom:10px;">Physical Media:</label>
                          <input type="radio" name="isPhysical" class="pm" value="1">Yes&nbsp;&nbsp;&nbsp;
                          <input type="radio" name="isPhysical" class="pm" value="0" checked>No<br/>
                        </div>

<!-- PURCHASE TYPE -->
                        <div class="form-group" id="purchaseType">
                          <label class="control-label" style="margin-bottom:10px;">Purchase Type:</label>
                          <input type="radio" name="purchaseTypeRadio" class="purchaseO" value="PO" checked>PO&nbsp;&nbsp;&nbsp;
                          <input type="radio" name="purchaseTypeRadio" class="purchaseO" value="P-Card">P-Card<br/>
                        </div>

<!-- PURCHASE DATE -->
                        <div class="form-group">
                            <label class="control-label">Purchase Date</label>
                            <input id="purchaseDate" maxlength="200" type="text" class="form-control datefield" placeholder="Enter Purchase Date" />
                        </div>

<!-- PO NUMBER -->
                        <div class="form-group" id="poInfo">
                            <label class="control-label">PO Number</label>
                            <input id="poNumber" maxlength="200" type="text" class="form-control" placeholder="Enter PO # Here"  />
                        </div>

                        <div id="pcardInfo" style="display: none;">

<!-- P-CARD Employee Name -->
                           <div class="form-group">
                              <label class="control-label">P-Card Employee Name</label>
                              <input id="pCardEmployee" maxlength="200" type="text" class="form-control" placeholder="Enter P-Card Employee Name Here"  />
                          </div>

<!-- P-CARD PURCHASE VENDOR -->
                           <div class="form-group">
                              <label class="control-label">P-Card Purchase Vendor</label>
                              <input id="pCardVendor" maxlength="200" type="text" class="form-control" placeholder="Enter P-Card Purchase Vendor Here"  />
                          </div>

<!-- P-CARD REFERENCE NUMBER -->
                          <div class="form-group">
                              <label class="control-label">P-Card Reference Number</label>
                              <input id="pCardRefNumber" maxlength="200" type="text" class="form-control" placeholder="Input P-Card Ref # Here"  />
                          </div>
                        </div>

<!-- NUMBER OF LICENSES PLACEMENT -->
                        <div class="form-group">
                          <label class="control-label">Number of Licenses</label>
                          <input id="numLicenses" maxlength="100" type="number" min="1" value="1" class="form-control" placeholder="Enter Number of Licenses Here" required/>
                        </div>

<!-- PRODUCT KEY NUMBER PLACEMENT -->
                        <div class="form-group">
                          <label class="control-label">Product Key</label>
                          <input id="productKey" maxlength="100" type="text" class="form-control" placeholder="Enter Product Key # Here"/>
                        </div>

                      <div id="subscriptionInfo" class="form-group" style="display: none;">

<!-- IF YES TO SUBSCRIPTION THEN DROP THE ADDITIONAL INFORMATION -->
                          <label class="control-label">Subscription Begin Date:</label>
                          <input id='SubBeginDate' type="text" maxlength="10" class='datefield' placeholder="Input Begin Date"><br/>

<!-- SUBSCRIPTION EN DATE -->
                          <label class="control-label" style="padding-right:10px;">Subscription End Date:</label>
                          <input id="SubEndDate" type="text" maxlength="10" class='datefield' placeholder="Input End Date"><br/>

<!-- NOTES -->
                          <label class="control-label" style="padding-right:;">Notes:</label>
                          <textarea cols="48" id="notes" rows="4" wrap="soft" placeholder="Additional Info?"></textarea>

<!-- JS FOR DROP DOWN OPTION ON STEP 3 -->
<script>
document.getElementById('startHWWizard').style.display = "block";
document.getElementById('startSWWizard').style.display = "block";

$('input:radio[name="swTypeRadio"]').change(function(){
        if($(this).val() == 'renewal'){
          $("#renewalSoftware").show("fast", "linear");
          $("#subscriptionInfo").show("fast", "linear");
          $("#singleSoftware").hide("fast", "linear");
          $("#purchaseType").hide();
        }else{
          $("#singleSoftware").show("fast", "linear");
          $("#renewalSoftware").hide("fast", "linear");
          $("#purchaseType").show();
          $("#subscriptionInfo").hide();
        }
      });
$('input:radio[name="purchaseTypeRadio"]').change(function(){
        if($(this).val() == 'P-Card'){
          $("#pcardInfo").show("fast", "linear");
          $("#poInfo").hide("fast", "linear");
        }else{
          $("#pcardInfo").hide("fast", "linear");
          $("#poInfo").show("fast", "linear");
        }
      });

$('#SoftPub').change(function(){
  var publisher = $(this).val();
  $.ajax({
    type: "GET",
    url: "/_apps/track1.5/php/getTitleList.php",
    data: "publisher="+publisher,
    dataType: 'html',
    success: function(html){
      $('#titleList').html(html);
    },
    error: function(){
      alert("We're unable to load title information");
    }
  });
});
$('#SoftTitle').change(function(){
  var title = $(this).val();
  // GET EDITION
  $.ajax({
    type: "GET",
    url: "/_apps/track1.5/php/getEditionList.php",
    data: "title="+title,
    dataType: 'html',
    success: function(html){
      $('#editionList').html(html);
    },
    error: function(){
      alert("We're unable to load title information");
    }
  });
  // GET VERSIONS
  $.ajax({
    type: "GET",
    url: "/_apps/track1.5/php/getVersionList.php",
    data: "title="+title,
    dataType: 'html',
    success: function(html){
      $('#versionList').html(html);
    },
    error: function(){
      alert("We're unable to load title information");
    }
  });
});

$("#singlePurchaseType").change(function(){
  console.log($(this).val());
  switch($(this).val()){
    case 'Bundled':
      $('#softwareToDeprecateInfo').hide("fast", "linear");
      break;

    case 'Freeware':
      $('#softwareToDeprecateInfo').hide("fast", "linear");
      break;

    case 'Track-no-deprecate':
      $('#softwareToDeprecateInfo').hide("fast", "linear");
      break;

    case 'Track-to-deprecate':
      var publisher = $("#SoftPub").val();
      var title = $("#SoftTitle").val();
      var edition = $("#SoftEdition").val();
      var version = $("#SoftVersion").val();

      console.log(publisher+" "+title+" "+edition+" "+version);

      $.ajax({
        type: "GET",
        url: "/_apps/track1.5/php/getSoftwareToDeprecate.php",
        data: "publisher="+publisher+"&title="+title+"&edition="+edition+"&version="+version,
        dataType: 'html',
        success: function(html){
          $('#softwareToDeprecateInfo').html(html);
          $('#softwareToDeprecateInfo').show("fast", "linear");
        },
        error: function(){
          alert("We're unable to load information for the dashboard");
        }
      });
      break;

    default:
      break
  }
});

$("#renewalType").change(function(){
  console.log($(this).val());
  switch($(this).val()){
    case 'Global software agreement':
      $("#assetInfo").hide();
      break;

    case 'Per seat and 1 edition':
      $("#assetInfo").show();
      break;

    case 'Per seat and multi-editions':
      $("#assetInfo").show();
      break;

    case 'Server':
      $("#assetInfo").hide();
      break;

    default:
      break
  }
});

$("#numLicenses").change(function(){
  $("#hwGroup").empty();
  for(var i = 0; i < $(this).val(); i++){
    $("#hwGroup").append('<input name="hw[]" maxlength="200" type="text" class="form-control" placeholder="Input Asset # or S/N Here"  />');
  }
});
</script>
                    </div>
<!-- NEXT BUTTON FOR STEP 3 -->
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                  </div>
                </div>
              </div>

<!--STEP 4 BEGIN -->
              <div class="row setup-content" id="step-4">
                <div class="col-xs-12">
                  <div class="col-md-12">
                    <h3> Step 4:</h3>
                     <h3 style="color:#57bc90; font-weight: bold;">Submit Data for Software</h3>
                    
<!-- P-CARD REFERENCE NUMBER -->
                     <div id="assetInfo" class="form-group">
                        <label class="control-label">Hardware Asset # or S/N</label>
                        <div id="hwGroup">
                          <input name="hw[]" maxlength="200" type="text" class="form-control" placeholder="Input Asset # or S/N Here"  />
                        </div>
                        <button class="btn btn-success btn-lg pull-right" id="submitPurchase" type="submit">Finish!</button>


                    </div>
                  </div>
                </div>
              </div>
        </form>
      </div>
    </div>

<!-- original placement for side nav links -->

<!-- <div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav(1)">&times;</a>
<a href="#">Overview</a>
<a href="#">Printers</a>
<a href="#">CPU</a>
<a href="#">Kiosks</a>
</div> -->
  </div>
</div>


<!-- MODAL 1 END CODE -->

<!-- /////////////// MODAL BOX HOME 2 //////////////////////////////////////////////////////////////////////// -->

<div id="myModalTEST" class="modalHOME">

  <div class="modal-contentHOME">

    <div class="modal-headerHOME">
      <span class="close">x</span>
      <h2>
      <span id="hardwareSideNav" style="font-size:40px;cursor:pointer; margin-right:20px; " onclick="toggleNav(2)">&#9776; </span>
      <div style="font-weight:bold; display: inline-block;">HARDWARE
      </div></h2>
    </div>

    <div class="modal-bodyHOME">
      <div id="mySidenav2" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="toggleNav(2)">&times;</a>
         <button id="HW-Overview" type="button" style="border-radius:10px; width:200px;" >Overview</button>
        <button class="wizardActivate" id="voldemort" type="button" >Wizard<span class="black">Click "Wizzard" to Begin Adding Hardware.</span></button>
      </div>
    </div>


    <div id="hardwareOverview-body">
    </div>

<!-- HARDWARE WIZARD -->

<!-- <div class="modal-bodyHOME">  -->
    <div class="containerWizard" id="harry" style="display: none; width: 60%; margin: 0 auto;">

<!-- PROGRESSION BAR TOP -->
      <div class="stepwizard">
          <div class="stepwizard-row setup-panel">
              <div class="stepwizard-step">
                  <a href="#hwStep-1" type="button" id="Beginhardware" class="btn btn-primary btn-circle">1</a>
                  <p>Begin Adding Hardware Info</p>
              </div>
              <div class="stepwizard-step">
                  <a href="#hwStep-2" type="button" class="btn btn-default btn-circle">2</a>
                  <p>Continue Adding Hardware Info</p>
              </div>
              <div class="stepwizard-step">
                  <a href="#hwStep-3" type="button" class="btn btn-default btn-circle">3</a>
                  <p>Add User Info</p>
              </div>
              <!-- <div class="stepwizard-step">
                  <a href="#hwStep-4" type="button" class="btn btn-default btn-circle">4</a>
                  <p>Hardware Description</p>
              </div> -->
          </div>
      </div>

<!-- FORM FOR STEP ONE VIA HARDWARE WIZARD -->
      <form role="form" id="hardwareForm">
                <div class="row setup-content" id="hwStep-1">
                  <div class="col-xs-12">
                    <div class="col-md-12HW">
<!-- STEP ONE BEGIN -->
                         <h3> Step 1:</h3>
                         <h3 style="color:#57bc90; font-weight: bold;">Input Hardware Information</h3>
                         <div class="form-group">

<!--SELECT TYPE  -->
                            <label class="control-label">Equipment Type</label>           
                            <input id="hwType" class="hwType" name="EquipType" type="text" list="typeList" required>
                            <datalist id="typeList">
                            <?php

                              $row=0;
                              while($row < sizeof($this->_data['hwTypeList'])){
                                echo "<option>" . $this->_data['hwTypeList'][$row]['EquipType'] . "</option>";
                                $row++;
                              }

                            ?>
                            </datalist>
                          </div>
<!-- SELECT MANUFACTURER -->
                          <div class="form-group">
                            <label class="control-label">Manufacturer:</label>
                            <input type="text" id="Manufacturer" name="Manufacturer" list="manufacturList" required>
                            <datalist id="manufacturList">
                            <?php

                              $row=0;
                              while($row < sizeof($this->_data['hwManufacturers'])){
                                echo "<option>" . $this->_data['hwManufacturers'][$row]['HWManuf'] . "</option>";
                                $row++;
                              }

                            ?>
                            </datalist>
                          </div>
<!-- SELECT MANUFACTURER -->
                          <div class="form-group">
                            <label class="control-label">Tier:</label>
                            <input type="text" id="Tier" name="Tier" list="tierList" required>
                              <datalist id="tierList">
                            <?php

                              $row=0;
                              while($row < sizeof($this->_data['hwTiers'])){
                                echo "<option>" . $this->_data['hwTiers'][$row]['Tier'] . "</option>";
                                $row++;
                              }

                            ?>
                              </datalist>

                          </div>
                      <button id="addHWBaseBTN" class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                    </div> 
                  </div>
                </div>

<!-- STEP TWO BEGIN -->
               <div class="row setup-content" id="hwStep-2"> 
                <div class="col-xs-12">
                 <div class="col-md-12">
                  <h3> Step 2: </h3>
                   <h3 style="color:#57bc90; font-weight: bold;">Additional Hardware Information</h3>

<!-- NUMBER OF HARDWARE MODELS UNDER SAME PO -->
                        <div class="form-group">
                          <label class="control-label">QTY</label>
                          <input id="numHW" type="number" min="1" value="1" class="form-control" placeholder="Enter Amount Here" required/>
                        </div>
<!-- MODELS -->
                        <div id="models" class="form-group">
                            
                        </div>
<!-- PURCHASE DATE -->
                        <div class="form-group">
                            <label class="control-label">Purchase Date</label>
                            <input id="hwPurchaseDate" maxlength="200" type="text" class="form-control datefield" placeholder="Enter Purchase Date" />
                        </div>
<!-- REPLACE PLAN -->
                        <div class="form-group">
                            <label class="control-label">Replacement Plan</label>
                            <input name="hwReplacePlan" type="radio" value="Yes" />Yes
                            <input name="hwReplacePlan" type="radio" value="No" checked />No
                        </div>
<!-- PO NUMBER -->
                        <div class="form-group">
                            <label class="control-label">PO Number</label>
                            <input id="hwPONumber" maxlength="200" type="text" class="form-control" placeholder="Enter PO # Here"  />
                        </div>
<!-- ACQUISITION METHOD -->
                        <div class="form-group">
                            <label class="control-label">Acquisition Method</label>
                            <input id="AQMethod" maxlength="200" type="text" class="form-control" list="aqList" />
                            <datalist id="aqList">
                              <?php

                                $row=0;
                                while($row < sizeof($this->_data['hwAQ'])){
                                  echo "<option>" . $this->_data['hwAQ'][$row]['AcquisitionMethod'] . "</option>";
                                  $row++;
                                }

                              ?>
                            </datalist>
                        </div>
<!-- NEXT BUTTON FOR STEP 2 -->
                  <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" id="createAssetTable" >Next</button>
                </div>
              </div>
            </div>

<!-- STEP 3 BEGIN -->
            <div class="row setup-content" id="hwStep-3"> 
              <div>
                <div>
                  <h3> Step 3 </h3>
                      <div>
                        <table style="margin: 0 auto; width: 1500px;">
                          <thead>
                            <tr>
                              <th>AASIS Asset #.</th>
                              <th>Asset Sub. #.</th>
                              <th>Serial #.</th>
                              <th>Replacement Date</th>
                              <th>Job Title</th>
                              <th>Employee</th>
                              <th>Location</th>
                              <th>Facility</th>
                              <th>Notes</th>
                            </tr>
                          </thead>
                          <tbody id="assetTableBody">
                          </tbody>
                        </table>
                      </div>
<!-- NEXT BUTTON FOR STEP 3 -->
                  <!-- <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button> -->
                  <button class="btn btn-success btn-lg pull-right" id="addHardware" type="submit">Finish!</button>
                </div>
              </div>
            </div>  

<!-- STEP 4 BEGIN -->
            <div class="row setup-content" id="hwStep-4"> 
              <div class="col-xs-12">
                <div class="col-md-12">
                  <h3> Step 4 </h3>
                  <div class="form-group">
<!-- NEXT BUTTON FOR STEP 3 -->
               
                   <h3 style="color:#57bc90; font-weight: bold;"> Hardware Description</h3>
                  </div>
<!-- MIS USE ONLY -->
                  <div class="form-group">
                    <label class="control-label">MIS USE ONLY:</label>
                    <input id="misUse" name="isMIS" type="radio" value="Yes">Yes&nbsp;&nbsp;&nbsp;<input id="misUse" name="isMIS" type="radio" value="No" checked>No
                  </div>
<!-- REPLACEMENT PLAN -->
                  <div class="form-group">
                    <label class="control-label">Replacement Plan:</label>
                    <input id="replacementPlan" name="isReplacement" type="radio" value="Yes" checked>Yes&nbsp;&nbsp;&nbsp;<input id="replacementPlan" name="isReplacement" type="radio" value="No">No
                  </div>
<!-- SERIAL NUMBER -->
                  <div class="form-group">
                    <label class="control-label">Serial Number:</label>
                    <input type="text" id="serialNumber" style="text-transform:uppercase" />
                  </div>
<!-- MACHINE NAME -->
                  <div class="form-group">
                    <label class="control-label">Machine Name:</label>
                    <input type="text" id="machineName" style="text-transform:uppercase" />
                  </div>
<!-- DESCRIPTION -->
                  <div class="form-group">
                    <label class="control-label">Installation Date:</label>
                    <input type="text" id="installationDate" class="datefield" />
                  </div>
<!-- DESCRIPTION -->
                  <div class="form-group">
                    <label class="control-label">Replacement Date:</label>
                    <input type="text" id="replacementDate" class="datefield" />
                  </div>
                </div>
<!-- DESCRIPTION -->
                <div class="form-group">
                  <label class="control-label">Description:</label>
                  <textarea id="description">
                  </textarea>
                </div>
                     <button class="btn btn-success btn-lg pull-right" id="addHardware" type="submit">Finish!</button>
              </div>
            </div>
      </form>
    </div>
  </div>

</div>
</div>

<div id="swAction-modal" class="modal3">
  <div class="viewDetail-modal3">
    <div class="modal-header">
      <span class="close">x</span>
      <h2>Update Assets</h2>
    </div>
    <div class="modal-body" id="swDeploy-body">
    </div>
    <div class="modal-footer">
    </div>
  </div>
</div>

<div id="message-modal" class="modal4">
  <div class="viewDetail-modal4">
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
<!-- END CODE FOR MODAL 2 -->

<!-- ////////Joyride Help Boxes/////////////////////////////////////////////////////////////////////////////////// -->

<ol class="joyride-list" data-joyride>
<li data-button="Play" data-text="Next" data-options="tip_location: top; prev_button: false">
<div class="Trackimg2">
<img src="/_apps/track1.5/img/Track_logo.gif" alt="HTML5 Icon" >
</div> 
<h1><div style ='text-align: center;'> Welcome to Track v1.1 </h1>

<p><div style ='text-align: center;'>Click 'Play' to continue the tutorial</p>
</li>
<li data-id="hardware" data-text="Next" data-options="tip_location: top; prev_button: false">
<h1>Hardware</h2>
<p>The elements in this drop down will take you to other pages to perform functions for ADPT's computer hardware such as transfering and retiring old hardware and even adding new hardware.</p>
</li>
<li data-id="software" data-text="Next">
<h1>Software</h2>
<p>The elements in this drop down will take you to other pages to perform functions for ADPT's computer software such as adding and viewing software and adding new software purchases.</p>
</li>
<li data-id="reports" data-text="Next">
<h1>Reporting</h2>
<p>TBA</p>
</li>
<li data-id="searchTrack" data-text="Next">
<h1>Quick Search</h2>
<p>In a hurry? If you need to look up a certain record really fast, then just type it in this search bar. For example, if you need to see one of the Adobe Photoshop records, just enter 'Adobe' or 'Photoshop'.</p>
</li>
<li data-button="End" data-prev-text="Prev">
<h4>That's it!</h4>
<p>Click on one of the links in the menu bar and if you need more explaination on one of those pages, then hit that green 'Help' button.</p>
</li>
</ol>

<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.min.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.joyride.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/jquery.cookie.js"></script>

<script type="text/javascript">

// MODAL SELECT BUTTON

$('#help').click(function(){
$(document).foundation('joyride', 'start');
});

      // $.ajax({
      //   type: "GET",
      //   url: "/_apps/track1.5/php/getDashboardInfo.php",
      //   dataType: 'html',
      //   success: function(html){
      //     $('#info').html(html);
      //   },
      //   error: function(){
      //     alert("We're unable to load information for the dashboard");
      //   }
      // });

$("#toggleAnim").click(function(){
  $("#animationBackground").toggleClass("backgroundHomePage");
});

var softwareWizard = document.getElementById('stepwizard');
var gandalf = document.getElementById('gandalf');
var harry = document.getElementById('harry');
var wizardBtn = document.getElementById('wizardActivate');


$("#createAssetTable").click(function(){
  var qty = $("#numHW").val();
  var isReplace = $("input[name=hwReplacePlan]:checked").val();
  var replaceDateString = '';
  if(isReplace == 'Yes'){
    var purchaseDate = $("#hwPurchaseDate").val();
    var date = new Date(purchaseDate);
    console.log(date.getFullYear()+4);
    var replaceDate = new Date(date.setFullYear(date.getFullYear()+4));
    replaceDateString = (((replaceDate.getMonth()+1) < 10 ? '0' + (replaceDate.getMonth()+1) : (replaceDate.getMonth()+1)) + '/' + (replaceDate.getDate() < 10 ? '0' + replaceDate.getDate() : replaceDate.getDate()) + '/' + replaceDate.getFullYear());
    console.log(replaceDateString);
  }
  var locationList = '<?php 
            $row=0;
            while($row < sizeof($this->_data['locations'])){
            	$isWC = (substr(trim($this->_data['locations'][$row]['loc_name']), -2) == 'WC' ? True : False);
              if(trim($this->_data['locations'][$row]['costCent']) == '443633'){
                echo "<option>" . str_replace("'", "", $this->_data['locations'][$row]['loc_name']) . " - " . ($this->_data['locations'][$row]['costCent'] == NULL ? 0 : $this->_data['locations'][$row]['costCent']) . "</option>";
                echo "<option> MIS TRANSFER - " . '443655' . "</option>";
              }else if($isWC){
              	echo "<option>" . str_replace("'", "", $this->_data['locations'][$row]['loc_name']) . " - " . '443728' . "</option>";
              }else{
                echo "<option>" . str_replace("'", "", $this->_data['locations'][$row]['loc_name']) . " - " . ($this->_data['locations'][$row]['costCent'] == NULL ? 0 : $this->_data['locations'][$row]['costCent']) . "</option>";
              }
              $row++;
            }
      ?>';

  var facilityList = '<?php

            $row=0;
            while($row < sizeof($this->_data['facilities'])){
              echo "<option>" . $this->_data['facilities'][$row]['FacilityLoc'] . "</option>";
              $row++;
            }

      ?>';
  var string = "";
  for(var i = 0; i < qty; i++){
    string += "<tr id='row"+i+"'><td><input type='text' id='assetNumber"+i+"' name='assetNumber[]' /></td><td><input type='text' id='assetSubNumber"+i+"' name='assetSubNumber[]' /></td><td><input type='text' id='serailNum"+i+"' name='serialNum[]' /></td><td><input type='text' class='datefield' id='replaceDate"+i+"' name='replaceDate[]' value='"+replaceDateString+"' /></td><td><input type='text' id='jobTitle"+i+"' name='jobTitle[]' /></td><td><input type='text' id='employee"+i+"' name='employee[]' /></td><td><select id='Location"+i+"' name='location[]'>"+locationList+"</select></td><td><select id='Facility"+i+"' name='facility[]'>"+facilityList+"</select></td><td style='width: 170px;'><textarea id='notes"+i+"' name='notes[]'></textarea></td></tr>";
  }
  console.log(string);
  var script = "<script type='text/javascript'>$(function() {$( '.datefield' ).datepicker();});<"+'/'+"script>";
  $("#assetTableBody").html(string+script);
});

function addHWInfo(id){
  $("#row"+id).hide();
}

// Custom namespace
var modal = {};
modal.hide = function() {
$('#overlay').fadeOut();
$('.dialog').fadeOut();
};

$(document).ready(function() {

// Open appropriate dialog when clicking on anything with class "dialog-open"
$('.dialog-open').click(function() {
modal.id = '#dialog-' + this.id;
$('#overlay').fadeIn();
$(modal.id).fadeIn();
});

// Close dialog when clicking on the "ok-dialog"
$('.ok-dialog').click(function() {
modal.hide();
});

// Require the user to click OK if the dialog is classed as "modal"
$('#overlay').click(function() {
if ($(modal.id).hasClass('modal')) {
// Do nothing
} else {
modal.hide();
}
});

// Prevent dialog closure when clicking the body of the dialog (overrides closing on clicking overlay)
$('.dialog').click(function() {
event.stopPropagation();
});
});

</script>

<!-- js for wizard hidden//////////////////////////////////////////////// -->
<script>
$("#SW-Overview").click(function(event){
  gandalf.style.display = "none";
  $.ajax({
    type: "GET",
    url: "/_apps/track1.5/php/getDashboardInfo.php?asset=software",
    dataType: 'html',
    success: function(html){
      document.getElementById('gandalf').style.display = 'none';
      $('#softwareOverview-body').empty();
      $('#softwareOverview-body').html(html);
    },
    error: function(){
      alert("We're unable to load information for the dashboard");
    }
  });
  event.preventDefault();
});

$("#HW-Overview").click(function(event){
  harry.style.display = "none";
  $.ajax({
    type: "GET",
    url: "/_apps/track1.5/php/getDashboardInfo.php?asset=hardware",
    dataType: 'html',
    success: function(html){
      document.getElementById('gandalf').style.display = 'none';
      $('#hardwareOverview-body').empty();
      $('#hardwareOverview-body').html(html);
    },
    error: function(){
      alert("We're unable to load information for the dashboard");
    }
  });
  event.preventDefault();
});

$("#submitPurchase").click(function(event){
  event.preventDefault();
  var publisher = $("#SoftPub").val();
  var title = $("#SoftTitle").val();
  var edition = $("#SoftEdition").val();
  var version = $("#SoftVersion").val();

  var softwareType = $("input[name=swTypeRadio]:checked").val();
  var singleSoftwareCategory = '';
  var renewalSoftwareCategory = '';
  var purchaseType = '',
      purchaseDate = $("#purchaseDate").val(),
      poNumber = $("#poNumber").val(),
      pCardEmployee = '',
      pCardVendor = '',
      pCardRefNumber = '';
      subBeginDate = '',
      subEndDate = '',
      notes = '';
  if(softwareType == 'renewal'){
    renewalSoftwareCategory = $("#renewalType").val();
    purchaseType = 'PO';
    subBeginDate = $("#SubBeginDate").val();
    subEndDate = $("#SubEndDate").val();
    notes = $("#notes").val();
  }else{
    singleSoftwareCategory = $("#singlePurchaseType").val();
    purchaseType = $("#purchaseType").val();
    pCardEmployee = $("#pCardEmployee").val();
    pCardVendor = $("#pCardVendor").val();
    pCardRefNumber = $("#pCardRefNumber").val();
  }
   var deprecatedSoftware = '';
  if(singleSoftwareCategory == 'Track-to-deprecate'){
    deprecatedSoftware = $("#softwareToDeprecate").val();
  }

  var systemOS = $("input[name=osRadio]:checked").val();
  var numLicenses = $("#numLicenses").val();
  var productKey = $("#productKey").val();
  var isPhysical = $("input[name=isPhysical]:checked").val();

  var hw = '';
  var hwString = '';

  if(renewalSoftwareCategory != 'Server' || renewalSoftwareCategory != 'Global software agreement'){
    hw = document.getElementsByName('hw[]');
    for(var i = 0; i <  hw.length; i++){
      hwString += hw[i].value;
      if(hw[i].value != ''){
        hwString += ',';
      }
    }
  }

  $.ajax({
    type: "GET",
    url: '/_apps/track1.5/php/createPurchase.php',
    data: "publisher="+publisher+"&title="+title+"&edition="+edition+"&version="+version+"&softwareType="+softwareType+"&renewalSoftwareCategory="+renewalSoftwareCategory+"&singleSoftwareCategory="+singleSoftwareCategory+"&deprecatedSoftware="+deprecatedSoftware+"&os="+systemOS+"&numLic="+numLicenses+"&prdKey="+productKey+"&physMedia="+isPhysical+"&purchaseType="+purchaseType+"&purchaseDate="+purchaseDate+"&poNumber="+poNumber+"&pCardE="+pCardEmployee+"&pCardV="+pCardVendor+"&pCardR="+pCardRefNumber+"&subBeginDate="+subBeginDate+"&subEndDate="+subEndDate+"&notes="+notes+"&hw="+hwString,
    datatype: 'html',
    success: function(html){
      //console.log(html);
      modal.style.display = "none";
      if(html == 'Success'){
        $("#message-body").html("<p style='color: #258E25;'>Successful software purchase!</p>");
      }else{
        $("#message-body").html("<p style='color: #660000;'>An error occured. Please try again</p>");
      }
      $("#message-modal").show().delay(3000).fadeOut();
    },
    error: function(){
      alert('fail');
    }
  });
});

$("#addHWBaseBTN").click(function(){
  var type = $("#hwType").val();
  var manufacturer = $("#Manufacturer").val();
  $.ajax({
    type: 'GET',
    url: '/_apps/track1.5/php/getHardwareModels.php',
    data: 'type=' + type + '&manufacturer=' + manufacturer,
    dataType: "html",
    success: function(html){
      $("#models").html(html);
    },
    error: function(){
      alert('fail');
    }
  });
});

$("#serialNumber").change(function(){
  $("#machineName").val($(this).val());
});

// ADD HARDWARE
$("#addHardware").click(function(event){
  event.preventDefault();
// GET REQUIRED ITEMS
  var type = $("#hwType").val();
  var manufacturer = $("#Manufacturer").val();
  var tier = $("#Tier").val();
  var qty = $("#numHW").val();
  var purchaseDate = $("#hwPurchaseDate").val();
  var poNumber = $("#hwPONumber").val();
  var aqMethod = $("#AQMethod").val();
  var model = $("#model").val();
  var hasReplacePlan = $("input[name=hwReplacePlan]:checked").val();
  var assetNumbersList = document.getElementsByName('assetNumber[]');
  var assetNumbers = [];
  for(var i = 0; i < assetNumbersList.length; i++){
    assetNumbers.push(assetNumbersList[i].value);
  }
  var assetSubNumbersList = document.getElementsByName('assetSubNumber[]');
  var assetSubNumbers = [];
  for(var i = 0; i < assetSubNumbersList.length; i++){
    assetSubNumbers.push(assetSubNumbersList[i].value);
  }
  var serialNumbersList = document.getElementsByName('serialNum[]');
  var serialNumbers = [];
  for(var i = 0; i < serialNumbersList.length; i++){
    serialNumbers.push(serialNumbersList[i].value);
  }
  var replaceDateList = document.getElementsByName('replaceDate[]');
  var replaceDates = [];
  for(var i = 0; i < replaceDateList.length; i++){
    replaceDates.push(replaceDateList[i].value);
  }
  var locationsList = document.getElementsByName('location[]');
  var locations = [];
  for(var i = 0; i < locationsList.length; i++){
    locations.push(encodeURIComponent(locationsList[i].value));
  }
  var facilitiesList = document.getElementsByName('facility[]');
  var facilities = [];
  for(var i = 0; i < facilitiesList.length; i++){
    facilities.push(facilitiesList[i].value);
  }
  var jobTitlesList = document.getElementsByName('jobTitle[]');
  var jobTitles = [];
  for(var i = 0; i < jobTitlesList.length; i++){
    jobTitles.push(jobTitlesList[i].value);
  }
  var employeesList = document.getElementsByName('employee[]');
  var employees = [];
  for(var i = 0; i < employeesList.length; i++){
    employees.push(employeesList[i].value);
  }
  var notesList = document.getElementsByName('notes[]');
  var notes = [];
  for(var i = 0; i < notesList.length; i++){
    notes.push(notesList[i].value);
  }

// PUT DATA HERE
  $.ajax({
    type: "GET",
    url: '/_apps/track1.5/php/addHardware.php',
    data: 'type='+type+'&manufacturer='+manufacturer+'&model='+model+'&tier='+tier+'&qty='+qty+'&purchaseDate='+purchaseDate+'&poNumber='+poNumber+'&aqMethod='+aqMethod+'&hasReplacePlan='+hasReplacePlan+'&assetNumbers='+assetNumbers.toString()+'&assetSubNumbers='+assetSubNumbers.toString()+'&serialNumbers='+serialNumbers.toString()+'&replaceDates='+replaceDates+'&locations='+locations.toString()+'&facilities='+facilities.toString()+'&jobTitles='+jobTitles.toString()+'&employees='+employees.toString()+'&notes='+notes.toString(),
    datatype: 'html',
    success: function(html){
      console.log(html);
      modal.style.display = "none";
      if(html == 'Success'){
        $("#message-body").html("<p style='color: #258E25;'>Successfully added hardware!</p>");
      }else{
        $("#message-body").html("<p style='color: #660000;'>An error occured. Please try again</p>");
      }
      $("#message-modal").show().delay(3000).fadeOut();
    },
    error: function(){
      alert('fail');
    }
  });
 });

$("#sauramon").click(function(){
  $("#Beginsoftware").trigger('click');
  $('#softwareOverview-body').empty();
  if(gandalf.style.display == "none"){
    gandalf.style.display = "block";
  }else{
    gandalf.style.display = "none";
  }
});

var harry = document.getElementById('harry');
$("#voldemort").click(function(){
  $("#Beginhardware").trigger('click');
  $('#hardwareOverview-body').empty();
  if(harry.style.display == "none"){
    harry.style.display = "block";
  }else{
    harry.style.display = "none";
  }
});
// wizardBtn.onclick = function() {
//      softwareWizard.style.display = "block";}
</script>
<!-- MOD FOR HARDWARE AND SOFTWARE -->
<script>
var modal = document.getElementById('myModalHOME');
var modal2 = document.getElementById('myModalTEST');
var modal3 = document.getElementById('swAction-modal');
var modal4 = document.getElementById('message-modal');


// Get the button that opens the modal
var btn = document.getElementById("hvr-bubble-bottomHW");
var btn2 = document.getElementById("hvr-bubble-bottomHW2");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var span2 = document.getElementsByClassName("close")[1];
var span3 = document.getElementsByClassName("close")[2];
var span4 = document.getElementsByClassName("close")[3];

// When the user clicks the button, open the modal
$("#hvr-bubble-bottomHW").click(function(){
  modal.style.display = "block";
  modal2.style.display = "none";
  $("#HW-Overview").trigger('click');
  document.getElementById("mySidenav2").style.width = "250px";
});
$("#hvr-bubble-bottomHW2").click(function(){
  modal2.style.display = "block";
  modal.style.display = "none";
  $("#SW-Overview").trigger('click');
  document.getElementById("mySidenav").style.width = "250px";
});

$("#startHWWizard").click(function(event){
  event.preventDefault();
  modal2.style.display = "block";
  modal.style.display = "none";
  $("#voldemort").trigger('click');
  document.getElementById("mySidenav2").style.width = "250px";

  $("#Beginhardware").trigger('click');
});

$("#startSWWizard").click(function(event){
  event.preventDefault();
  modal.style.display = "block";
  modal2.style.display = "none";
  $("#sauramon").trigger('click');
  document.getElementById("mySidenav").style.width = "250px";

  $("#Beginsoftware").trigger('click');
});
// btn2.onclick = function() {
// modal2.style.display = "block";
// modal.style.display = "none";
// $("#SW-Overview").trigger('click');
// }

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
modal.style.display = "none";
}
span2.onclick = function() {
modal2.style.display = "none";
}
span3.onclick = function() {
modal3.style.display = "none";
}
span4.onclick = function() {
modal4.style.display = "none";
$("#SW-Overview").trigger('click');
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
    modal2.style.display = "none";
  }

  if (event.target == modal2) {
    modal2.style.display = "none";
    modal.style.display = "none";
  }

  if (event.target == modal3) {
    modal3.style.display = "none";
  }

  if (event.target == modal4) {
    modal4.style.display = "none";
    $("#SW-Overview").trigger('click');
  }
}

function displaySoftwareToDeploy(id){
  $.ajax({
    type: 'GET',
    url: '/_apps/track1.5/php/getSoftwareToDeploy.php',
    data: 'BID=' + id,
    dataType: "html",
    success: function(html){
      $("#swDeploy-body").html(html);
      modal3.style.display = "block";
    },
    error: function(){
      alert('fail');
    }
  });
}

function displayHardwareToDeploy(dbColumn){
  $.ajax({
    type: 'GET',
    url: '/_apps/track1.5/php/getHardwareToDeploy.php',
    data: 'dbColumn=' + dbColumn,
    dataType: "html",
    success: function(html){
      $("#swDeploy-body").html(html);
      modal3.style.display = "block";
    },
    error: function(){
      alert('fail');
    }
  });
}

function addPurchaseToHW(id, index){
  var assetNumber = $("#sw-assetNumber-"+index).val();
  $.ajax({
    type: 'GET',
    url: '/_apps/track1.5/php/addPurchaseToHW.php',
    data: 'ID=' + id + '&assetNumber=' + assetNumber,
    dataType: "html",
    success: function(html){
      console.log(html);
      $("#SWrow-"+index).remove();
      $("#message-body").html(html);
      $("#message-modal").show().delay(2000).fadeOut();
    },
    error: function(){
      alert('fail');
    }
  });
}

function addInfoToHW(assetNumber, index){
  var serialNumber = $("#hw-serialNumber-"+index).val();
  var machineName = $("#hw-machineName-"+index).val();
  var isMIS = 'no';
  if($('#hw-isMIS-'+index).prop('checked')){
    isMIS = 'yes';
  }
  var installDate = $("#hw-installDate-"+index).val();
  var replaceDate = $("#hw-replaceDate-"+index).val();
  var description = $("#hw-description-"+index).val();
  $.ajax({
    type: 'GET',
    url: '/_apps/track1.5/php/addInfoToHW.php',
    data: 'assetNumber='+assetNumber+'&serialNumber='+serialNumber+'&machineName='+machineName+'&isMIS='+isMIS+'&installDate='+installDate+'&replaceDate='+replaceDate+'&description='+description,
    dataType: "html",
    success: function(html){
      console.log(html);
      $("#HWSerialrow-"+index).remove();
      console.log($("#HWSerialrow-"+index));
      $("#message-body").html(html);
      $("#message-modal").show().delay(2000).fadeOut();
    },
    error: function(){
      alert('fail');
    }
  });
}

function viewAsset(type, id){
  if(type == 'hardware'){

  }else{

  }
}

var isOpen = false;
function toggleNav(id){
  switch(id){
    case 1:
      if(document.getElementById("mySidenav").style.width == "250px"){
        document.getElementById("mySidenav").style.width = "0px";
        isOpen = false;
      }else{
        document.getElementById("mySidenav").style.width = "250px";
        isOpen = true;
      }
      break;

    case 2:
      if(document.getElementById("mySidenav2").style.width == "250px"){
        document.getElementById("mySidenav2").style.width = "0px";
        isOpen = false;
      }else{
        document.getElementById("mySidenav2").style.width = "250px";
        isOpen = true;
      }
      break;

    default:
      break;
  }
}
</script> 
<script>

$(document).ready(function () {

    $("#HW-Overview").trigger('click');

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for(var i=0; i<curInputs.length; i++){
            if (!curInputs[i].validity.valid){
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
                $(curInputs[i]).closest(".form-group").find("label").addClass("has-error");
            }
        }

        if (isValid){
            nextStepWizard.removeClass('disabled');
            nextStepWizard.trigger('click');
        }
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});

</script>

<div id="info">
</div> 
</body>
</html>