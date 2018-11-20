<?php

/***********************************************************
*                                                          *
*   CONTROLLER                                             *
*                                                          *
*   MVC design for TRACK. This is the base Controller      *
*   Object that is the interface between the View and      *
*   the Model. It is called through a URL call and uses    *
*   the specific function.                                 *
*                                                          *
*   By: Aaron Pillert                                      *
*                                                          *
***********************************************************/
 
    class Controller{

        protected $_model;
        protected $_controller;
        protected $_action;
        protected $_view;
        protected $_modelBaseName;
         
        public function __construct($model, $action){

            $this->_controller = ucwords(__CLASS__);
            $this->_action = $action;
            $this->_modelBaseName = $model;
             
            $this->_view = new View(HOME . DS . 'views' . DS . strtolower($this->_modelBaseName) . DS . $action . '.tpl');
        }
         
        protected function _setModel($modelName){

            $modelName .= 'Model';
            $this->_model = new $modelName();
        }
         
        protected function _setView($viewName){

            $this->_view = new View(HOME . DS . 'views' . DS . strtolower($this->_modelBaseName) . DS . $viewName . '.tpl');
        }
    }

?>