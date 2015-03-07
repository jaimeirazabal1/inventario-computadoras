<?php 
class Mouse extends ActiveRecord{
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Mouse";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->marca} {$value->serial}";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Mouse</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->marca} {$value->serial}</option>";
		}
		return $p;
	}
}


 ?>