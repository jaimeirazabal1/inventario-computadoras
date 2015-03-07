<?php 
class Cases extends ActiveRecord{
	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Case";
		foreach ($objs as $key => $value) {
			$p[$value->id]= "{$value->tipo} {$value->marca} {$value->modelo} {$value->serial}";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Case</option>";
		foreach ($objs as $key => $value) {
			$p.="<option value=".$value->id.">{$value->tipo} {$value->marca} {$value->modelo} {$value->serial}</option>";
		}
		return $p;
	}
}


 ?>