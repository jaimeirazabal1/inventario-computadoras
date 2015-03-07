<?php 
class Ram extends ActiveRecord{
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Rams";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->cantidad} {$value->tipo}";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Rams</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->cantidad} {$value->tipo}</option>";
		}
		return $p;
	}
}


 ?>