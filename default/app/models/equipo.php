<?php 
class Equipo extends ActiveRecord{
	public function guardar(){
		if ($this->save()) {
			return $this->getUltimoId();
		}else{
			return false;
		}
	}
	public function getUltimoId(){
		$id = $this->find("limit:1","order: id desc");
		return $id[0]->id;
	}
}

 ?>