<?php 
Load::models("teclado");
class tecladoController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("teclado")) {
			$t = new Teclado(Input::post("teclado"));
			if ($t->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Teclado Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$t = new Teclado();
		View::select(null,null);
		echo $t->getoptions();
	}
}

 ?>