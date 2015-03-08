<?php 
Load::models("departamento","coordinacion");
class Usuariopc extends ActiveRecord{

	public function getoptionsarray(){
		$objs = $this->find("order: id desc");
		$p[] = "Usuarios de Pc";
		$dep = new Departamento();
		$coor = new Coordinacion();
		foreach ($objs as $key => $value) {
			$departamento = $dep->getNombreById($value->departamento_id);
			$coordinacion = $coor->getNombreById($value->coordinacion_id);
			$p[$value->id]= "{$value->nombremaquina} - {$value->nombreusuario} {$value->apellidousuario} - $departamento / $coordinacion";
		}
		return $p;
	}
	public function getoptions(){
		$objs = $this->find("order: id desc");
		$p = "<option value=''>Usuarios de Pc</option>";
		$dep = new Departamento();
		$coor = new Coordinacion();
		foreach ($objs as $key => $value) {
			$departamento = $dep->getNombreById($value->departamento_id);
			$coordinacion = $coor->getNombreById($value->coordinacion_id);
			$p.="<option value=".$value->id.">{$value->nombremaquina} - {$value->nombreusuario} {$value->apellidousuario} - $departamento / $coordinacion</option>";
		}
		return $p;
	}
}
 ?>