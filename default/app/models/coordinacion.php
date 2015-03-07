<?php 
class Coordinacion extends ActiveRecord{
	public function getoptions($departamento_id){
		$objs = $this->find("conditions: departamento_id='$departamento_id'","order: id desc");
		$options = '<option value="">Coordinacion</option>';
		foreach ($objs as $key => $value) {
			$options.="<option value=".$value->id.">$value->nombre</option>"; 
		}
		return $options;
	}
}

 ?>