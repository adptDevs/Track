<?php

	class AddHardwareController extends Controller{

		public function __construct($model, $action){

			parent::__construct($model, $action);
			$this->_setModel($model);

		}

		public function index(){

			try{

				$addHardwareType = $this->_model->getHardwareTypeToADD();
				$addManufacturer = $this->_model->getManufacturerToADD();
				$addTier = $this->_model->getTierToADD();

				$this->_view->set('addHardwareType', $addHardwareType);
				$this->_view->set('addManufacturer', $addManufacturer);
				$this->_view->set('addTier', $addTier);
				$this->_view->set('title', 'Add Hardware');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

		public function manage(){

			try{

				$addHardwareType = $this->_model->getHardwareTypeToADD();
				$addManufacturer = $this->_model->getManufacturerToADD();
				$addTier = $this->_model->getTierToADD();

				$this->_view->set('addHardwareType', $addHardwareType);
				$this->_view->set('addManufacturer', $addManufacturer);
				$this->_view->set('addTier', $addTier);
				$this->_view->set('title', 'Manage Hardware');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

	}

?>