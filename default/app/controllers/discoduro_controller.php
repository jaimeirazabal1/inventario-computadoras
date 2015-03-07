<?php 
Load::models("discoduro");
class DiscoduroController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("discoduro")) {
			$r = new discoduro(Input::post("discoduro"));
			if ($r->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"discoduro Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$d = new Discoduro();
		View::select(null,null);
		echo $d->getoptions();
	}
}

 ?>