<?php 
class Procesador extends ActiveRecord{
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Procesadores</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->marca} {$value->nombre} -  {$value->velocidad} Gz</option>";
		}
		return $p;
	}
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Procesadores";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->marca} {$value->nombre} -  {$value->velocidad} Gz";
		}
		return $p;
	}
}


 ?>