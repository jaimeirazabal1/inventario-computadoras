
<?php 
Load::models("coordinacion");
class CoordinacionController extends AppController{
	public function nueva($departamento_id = null){
		if (Input::isAjax()) {
				View::template(null);
		}
		if (Input::haspost("coordinacion")) {
			
			$co = new Coordinacion(Input::post("coordinacion"));
			if ($co->save()) {
				if (Input::isAjax()) {
					View::template("json");
					$this->data = array("mensaje"=>"Coordinacion Agregada",'correcto'=>true);
				}else{

					Flash::valid("Coordinacion Agregada");
				}
			}else{
				if (Input::isAjax()) {
					View::template("json");
					$this->data = array("mensaje"=> ob_get_contents() . "<br> Error, no se agrego la coordinacion",'correcto'=>false);
				}else{
					Flash::error("Error, no se agrego la coordinacion");
				}
			}
		}
		if ($departamento_id) {
			$this->coordinacion = new Coordinacion();
			$this->coordinacion->departamento_id = $departamento_id ;
		}
	}
	public function get($departamento_id){
		if (Input::isAjax()) {
				View::select(null,null);
		}
		$co = new Coordinacion();
		$options = $co->getoptions($departamento_id);
		echo $options;
	}
}

 ?>