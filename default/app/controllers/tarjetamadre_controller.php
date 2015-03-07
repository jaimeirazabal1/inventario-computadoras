<?php 
Load::models("tarjetamadre");
class TarjetamadreController extends AppController{
	public function nueva(){
		View::template(null);
		if (Input::haspost("tarjetamadre")) {
			$t = new tarjetamadre(Input::post("tarjetamadre"));
			if ($t->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Tarjeta madre Guardada","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$t = new tarjetamadre();
		View::select(null,null);
		echo $t->getoptions();
	}
}

 ?>