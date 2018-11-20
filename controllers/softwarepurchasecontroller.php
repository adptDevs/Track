<?php

	class SoftwarePurchaseController extends Controller{

		public function __construct($model, $action){

			parent::__construct($model, $action);
			$this->_setModel($model);

		}

		public function index(){

			try{

				$purchases = $this->_model->getPurchases();
				$this->_view->set('purchases', $purchases);
				$this->_view->set('title', 'Software Purchases');

				return $this->_view->output();

			}catch(Exception $e){
				echo "Application error:" . $e->getMessage();
			}

		}

	}

?>