<?php 
Load::models("departamento");
class DepartamentoController extends AppController{
	public function nuevo(){
		if (Input::isAjax()) {
			View::template(null);
		}
		if (Input::haspost("departamento")) {
			$de = new Departamento(Input::post("departamento"));
			if ($de->save()) {
				if (Input::isAjax()) {
					View::template("json");
					$this->data = array("mensaje"=>"Departamento Agregado",'correcto'=>true);
				}else{

					Flash::valid("Departamento Agregado");
				}
			}else{
				if (Input::isAjax()) {
					View::template("json");
					$this->data = array("mensaje"=>ob_get_contents() . "<br>Error, no de agrego el departamento",'correcto'=>false);
				}else{

				Flash::error("Error, no de agrego el departamento");
				}
			}
		}
	}
	public function get(){
		if (Input::isAjax()) {
			View::select(null,null);
			$de = new Departamento();
			echo $de->getoptions();
		}
	}
}


 ?>