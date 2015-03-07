<?php 
Load::models("mouse");
class MouseController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("mouse")) {
			$m = new Mouse(Input::post("mouse"));
			if ($m->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Mouse Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$m = new Mouse();
		View::select(null,null);
		echo $m->getoptions();
	}
}

 ?>