<?php 
class Discoduro extends ActiveRecord{
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Discos duros";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->marca} {$value->capacidad} {$value->puerto}";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Discos Duros</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->marca} {$value->capacidad} {$value->puerto}</option>";
		}
		return $p;
	}
}


 ?>