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
		$id = $this->find("limit: 1","order: id desc");
		return $id[0]->id;
	}
	public function getTodo(){
		return $this->find("columns: equipo.nombre as nombre_equipo,equipo.so,equipo.ip,equipo.macaddress1,equipo.macaddress2",
						   "join: inner join procesador on procesador.id = equipo.procesador_id",
						   "join: inner join ram on ram.id = equipo.ram_id",
						   "join: inner join discoduro on discoduro.id = equipo.discoduro_id",
						   "join: inner join monitor on monitor.id = equipo.monitor_id",
						   "join: inner join tarjetamadre on tarjetamadre.id = equipo.tarjetamadre_id",
						   "join: inner join mouse on mouse.id = equipo.mouse_id",
						   "join: inner join teclado on teclado.id = equipo.teclado_id",
						   "join: inner join cases on cases.id = equipo.cases_id");
	}	
}

 ?>