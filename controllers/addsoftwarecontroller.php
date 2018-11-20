<?php

	class AddSoftwareController extends Controller{

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

				$this->_view->set('addpublisher', $addPublisher);
				$this->_view->set('addtitle', $addTitle);
				$this->_view->set('addedition', $addEdition);
				$this->_view->set('addversion', $addVersion);
				$this->_view->set('title', 'Add Software');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

		public function manage(){

			try{

				$addPublisher = $this->_model->getPublisherToADD();
				$addTitle = $this->_model->getTitleToADD();
				$addEdition = $this->_model->getEditionToADD();
				$addVersion = $this->_model->getVersionToADD();
				$addLocation = $this->_model->getLocations();

				$this->_view->set('addpublisher', $addPublisher);
				$this->_view->set('addtitle', $addTitle);
				$this->_view->set('addedition', $addEdition);
				$this->_view->set('addversion', $addVersion);
				$this->_view->set('addlocation', $addLocation);
				$this->_view->set('title', 'Manage Software');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

		public function purchase(){

			try{

				$addPublisher = $this->_model->getPublisherToADD();
				$addTitle = $this->_model->getTitleToADD();
				$addEdition = $this->_model->getEditionToADD();
				$addVersion = $this->_model->getVersionToADD();

				$this->_view->set('addpublisher', $addPublisher);
				$this->_view->set('addtitle', $addTitle);
				$this->_view->set('addedition', $addEdition);
				$this->_view->set('addversion', $addVersion);
				$this->_view->set('title', 'Add Software Purchase');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

	}

?>