<?php 
Load::models("procesador","equipo","ram");
class AsignacionController extends AppController{
	public function index(){

	}
	public function nueva(){
		$p = new Procesador();
		$r = new Ram();
		//$this->equipo = new Equipo();
		$this->procesadores = $p->getoptionsarray();
		$this->rams = $r->getoptionsarray();
	}

}
 ?>