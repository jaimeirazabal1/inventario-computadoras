<?php 
Load::models("ram");
class RamController extends AppController{
	public function nueva(){
		View::template(null);
		if (Input::haspost("ram")) {
			$r = new Ram(Input::post("ram"));
			if ($r->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Ram Guardada","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$r = new Ram();
		View::select(null,null);
		echo $r->getoptions();
	}
}

 ?>