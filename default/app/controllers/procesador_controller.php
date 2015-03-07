<?php 
Load::models("procesador");
class ProcesadorController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("procesador")) {
			$p = new Procesador(Input::post("procesador"));
			if ($p->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Procesador Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$p = new Procesador();
		View::select(null,null);
		echo $p->getoptions();
	}
}


 ?>