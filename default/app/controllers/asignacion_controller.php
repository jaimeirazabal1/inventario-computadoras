<?php 
Load::models("asignacion","procesador","equipo","ram","discoduro","monitor","tarjetamadre","mouse","teclado","cases","usuariopc");
class AsignacionController extends AppController{
	public function index(){

	}
	public function nueva(){
		$p = new Procesador();
		$r = new Ram();
		$d = new Discoduro();
		$m = new Monitor();
		$t = new Tarjetamadre();
		$mo = new Mouse();
		$te = new Teclado();
		$ca = new Cases();
		$usupc = new Usuariopc();
		/*----------------------------------------*/
		$this->procesadores = $p->getoptionsarray();
		$this->rams = $r->getoptionsarray();
		$this->discosduros = $d->getoptionsarray();
		$this->monitores = $m->getoptionsarray();
		$this->tarjetasmadres = $t->getoptionsarray();
		$this->mouses = $mo->getoptionsarray();
		$this->teclados = $te->getoptionsarray();
		$this->cases = $ca->getoptionsarray();
		$this->usuariospc = $usupc->getoptionsarray();
		/*----------------------------------------*/
		if (Input::haspost("equipo")) {
			$equipo = new Equipo(Input::post("equipo"));
			if ($id = $equipo->guardar()) {
				$asignacion = new Asignacion(Input::post("asignacion"));
				$asignacion->equipo_id = $id;
				if ($asignacion->save()) {
					Flash::valid("Asignacion Realizada");
				}else{
					Flash::error("No se Realizo la asignacion");

				}
			}
		}
	}

}
 ?>