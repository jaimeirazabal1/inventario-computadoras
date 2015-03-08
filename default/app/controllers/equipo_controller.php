<?php 
Load::models("equipo");
class EquipoController extends AppController{
	public function index(){
		$e = new Equipo();
		$this->equipos = $e->getTodo();
		
	}
}

 ?>