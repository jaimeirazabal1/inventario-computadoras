<?php 
class Departamento extends ActiveRecord{
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$options = '<option value="">Departamento</option>';
		foreach ($objs as $key => $value) {
			$options.="<option value=".$value->id.">$value->nombre</option>"; 
		}
		return $options;
	}
	public function getNombreById($id){
		return $this->find($id)->nombre;
	}
}

 ?>