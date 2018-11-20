<?php

	class SoftwareController extends Controller{

		public function __construct($model, $action){

			parent::__construct($model, $action);
			$this->_setModel($model);

		}

		public function index(){

			try{

				$software = $this->_model->getSoftware();
				$softwareByPublisher = $this->_model->getSoftwareByPublisher();
				$softwareByTitle = $this->_model->getSoftwareByTitle();
				$softwarePurchases = $this->_model->getSoftwarePurchases();

				$this->_view->set('software', $software);
				$this->_view->set('softwareByPublisher', $softwareByPublisher);
				$this->_view->set('softwareByTitle', $softwareByTitle);
				$this->_view->set('softwarePurchases', $softwarePurchases);
				$this->_view->set('title', 'Software Master');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}


	}

?>