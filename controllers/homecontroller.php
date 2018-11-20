<?php

	class HomeController extends Controller{

        public function __construct($model, $action){

            parent::__construct($model, $action);
            $this->_setModel($model);

        }

        public function index(){

            try{

                $addPublisher = $this->_model->getPublisherToADD();
                $addTitle = $this->_model->getTitleToADD();
                $addEdition = $this->_model->getEditionToADD();
                $addVersion = $this->_model->getVersionToADD();

                $hwTypeList = $this->_model->getHardwareTypeToADD();
                $hwManufacturers = $this->_model->getManufacturerToADD();
                $hwTiers = $this->_model->getTierToADD();
                $hwAQ = $this->_model->getAcquisitionToADD();
                $locations = $this->_model->getlocations();
                $facilities = $this->_model->getFacilities();

                $this->_view->set('addpublisher', $addPublisher);
                $this->_view->set('addtitle', $addTitle);
                $this->_view->set('addedition', $addEdition);
                $this->_view->set('addversion', $addVersion);
                $this->_view->set('hwTypeList', $hwTypeList);
                $this->_view->set('hwManufacturers', $hwManufacturers);
                $this->_view->set('hwTiers', $hwTiers);
                $this->_view->set('hwAQ', $hwAQ);
                $this->_view->set('locations', $locations);
                $this->_view->set('facilities', $facilities);
                $this->_view->set('home', 'Track v1.5');

                return $this->_view->output();

            }catch(Exception $e){
                echo "Application error:" . $e->getMessage();
            }

        }

	}

?>