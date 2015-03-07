<?php 
class Monitor extends ActiveRecord{
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Monitores";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->marca} {$value->modelo} {$value->serial}";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Monitores</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->marca} {$value->modelo} {$value->serial}</option>";
		}
		return $p;
	}
}


 ?>