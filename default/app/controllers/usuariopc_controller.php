<?php 
Load::models("usuariopc");
class UsuariopcController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("usuariopc")) {
			$t = new Usuariopc(Input::post("usuariopc"));
			if ($t->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Usuario de Pc Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$t = new Usuariopc();
		View::select(null,null);
		echo $t->getoptions();
	}
}

 ?>