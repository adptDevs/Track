<?php

	class hardwareReportController extends Controller{

		public function __construct($model, $action){

			parent::__construct($model, $action);
			$this->_setModel($model);

		}

		public function location(){

			try{

				$locations = $this->_model->getHardwareLocations();

				$this->_view->set('locations', $locations);
				$this->_view->set('title', 'Hardware Reports - Location');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

		public function custom(){

			try{

				$types = $this->_model->getHardwareTypes();
				$manufacturers = $this->_model->getHardwareManufacturers();
				$locations = $this->_model->getHardwareLocations();
				$facilities = $this->_model->getHardwareFacilities();

				$this->_view->set('types', $types);
				$this->_view->set('manufacturers', $manufacturers);
				$this->_view->set('locations', $locations);
				$this->_view->set('facilities', $facilities);
				$this->_view->set('title', 'Hardware Reports - Custom');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}


	}

?>