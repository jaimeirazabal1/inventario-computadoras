<?php 
Load::models("cases");
class CaseController extends AppController{
	public function nuevo(){
		View::template(null);
		if (Input::haspost("cases")) {
			$c = new Cases(Input::post("cases"));
			if ($c->save()) {
				View::template('json');
				$this->data = array("mensaje"=>"Case Guardado","correcto"=>true);
			}else{
				$this->data = array("mensaje"=>ob_get_contents() . "\n No se Agrego" ,"correcto"=>false);
			}
		}
	}
	public function get(){
		$c = new Cases();
		View::select(null,null);
		echo $c->getoptions();
	}
}

 ?>