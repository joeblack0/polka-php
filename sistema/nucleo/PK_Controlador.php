<?php
namespace sistema\nucleo;
if (!defined('SISTEMA')) exit('No se permite el acceso directo al script.');
/**
 * Controlador principal para los controladores del usuario,
 * este último debe extederse de ésta clase
 * @author Ricardo Rotela González :: ricksystems->gmail.com ;-)
 * @package sistema
 * @subpackage nucleo
 * @copyright Ricksystems (c)2014
 */
class PK_Controlador
{
	/**
	 * Propiedad para acceder directamente a las funciones de vistas -> PK_Vista
	 * @var object
	 */
	public $vista;
	/**
	 * Propiedad para acceder directamente a las funciones de entradas -> PK_EntradaS
	 * OJO
	 * Este recurso no está disponible aún
	 * @var [type]
	 */
	public $entradas;
	/**
	 * Uso singleton para instanciar, si es que se necesitare.
	 */
	use PK_Singleton;
	/**
	 * Función del constructor donde instancio la clase PK_Vista y PK_Entradas
	 * y almaceno sus instancias en sus respectivas propiedades
	 */
	public function __construct()
	{
		// instancio los recursos de Vista y Entradas
		$this->vista    = PK_Vista::obt_instancia();
		$this->entradas = PK_Entradas::obt_instancia();
		// cargo los recursos del sistema y usuario
		$this->recursos_sistema();
		$this->recursos_usuario();
	}
	/**
	 * Función para cargar configuración/es
	 * @param  mixed $value Nombre o conjunto de nombres (array)
	 *                      las configuraciones a cargar
	 * @return object       Devuelve el objecto en un propiedad del controldador
	 *                      usando el mismo nombre para acceder a ella
	 */
	public function configuracion($value='')
	{
		$this->$value = PK_Config::obtener($value);
	}
	/**
	 * Función para cargar los recursos del usuario
	 * como ser autocargas de ayudas, librerías y modelos
	 * @return mised Devuelve o anida los recursos cargados
	 */
	private function recursos_usuario()
	{
		$this->configuracion('autocargas');
		$itens_ayudas    = $this->autocargas->ayudas;
		$itens_librerias = $this->autocargas->librerias;
		$itens_modelos   = $this->autocargas->modelos;
		if (count($itens_ayudas)>0) {
			$this->ayudas($itens_ayudas);
		}
		if (count($itens_modelos)>0) {
			$this->modelos($itens_modelos);
		}
		if (count($itens_librerias)>0) {
			$this->librerias($itens_librerias);
		}
	}
	/**
	 * Función para cargar los recursos del sistema
	 * como ser autocargas de ayudas, librerías y modelos
	 * @return mixed Devuelve o anida los recursos cargados
	 */
	private function recursos_sistema()
	{
		$this->configuracion('sis_autocargas');
		$itens_ayudas    = $this->sis_autocargas->ayudas;
		$itens_librerias = $this->sis_autocargas->librerias;
		$itens_modelos   = $this->sis_autocargas->modelos;
		if (count($itens_ayudas)>0) {
			$this->ayudas($itens_ayudas);
		}
		if (count($itens_modelos)>0) {
			$this->modelos($itens_modelos);
		}
		if (count($itens_librerias)>0) {
			$this->librerias($itens_librerias);
		}
	}
	/**
	 * Carga la/s librería/s indicadas
	 * @param  mixed $librerias String o array de las librerías a cargar
	 * @return object Retorna en la propiedad con nombre de la librería
	 * las funciones de la librería solicitadas
	 */
	public function librerias($librerias='',$alias='',$param='')
	{
		// si no está vacío el parámetro,
		if (!empty($librerias)) {
			// si es array,
			if (is_array($librerias)) {
				// recorrer el array,
				foreach ($librerias as $value) {
					// si existe la libreria,
					$this->incluir_libreria($value,$alias,$param);
				}
			}else{
				// si existe la libreria,
				$this->incluir_libreria($librerias,$alias,$param);
			}
		}else{
			// si está vacio el parámetro de librería, mostrar el error
			exit(mostrar_error('Librería','Parámetro nombre de librería requerido.'));
		}
	}
	/**
	 * Incluye de forma explícita la/s librerías/s del usuario
	 * @param  mixed $librerías Nombre/s de la/s librerías/s
	 * @param string $alias Nombre del alias a al instanciar, opcional
	 */
	private function incluir_libreria($libreria='',$alias='',$param='')
	{
		$alias_lib       = empty($alias) ? nom_arc_sim($libreria) : $alias;
		$carpeta         = LIBRERIAS;
		$archivo         = $carpeta.agr_ext($libreria);
		$nombre_libreria = nom_arc_sim($libreria);
		// si existe la libreria,
		if (file_exists($archivo)) {
			// incluirlo,
			if (!method_exists($this, $alias_lib)) {
				$libreria = 'aplicacion\librerias\\'.$nombre_libreria;
				$this->$alias_lib = PK_Coleccion::obtener($libreria,$param);
			}
		}else{
			// o, buscar en librerias del sistema e incluirlo,
			$carpeta = SIS_LIBRERIAS;
			$archivo = $carpeta.agr_ext($libreria);
			if (file_exists($archivo)) {
				// o, si existe incluirlo si es que aún no existe,
				if (!method_exists($this, $alias_lib)) {
					$libreria = 'sistema\librerias\\'.$nombre_libreria;
					$this->$alias_lib = PK_Coleccion::obtener($libreria);
				}
			}else{
				// o, no incluir, enviar el error al navegador.-
				exit(mostrar_error('Librerias','No existe la librería: '.$archivo));
			}
		}
	}
	/**
	 * Carga el/los modelo/s indicados y los devuelve como
	 * una propiedad del controlador, con las funciones del
	 * mismo
	 * @param  mixed $modelos String o array de los modelos
	 * @return object         Devuelve el modelo como objecto
	 * con el mismo nombre del modelo para acceder a sus funciones
	 */
	public function modelos($modelos='',$alias='')
	{
		// si no está vacío el parámetro,
		if (!empty($modelos)) {
			// si es array,
			if (is_array($modelos)) {
				// recorrer el array,
				foreach ($modelos as $value) {
					// si existe el modelo,
					$this->incluir_modelo($value,$alias);
				}
			}
			else
			{
				// si existe el modelo, y si solo es un modelo a cargar
				$this->incluir_modelo($modelos,$alias);
			}
		}else{
			// si está vacio el parámetro de librería, mostrar el error
			exit(mostrar_error('Modelo','Parámetro nombre de modelo requerido.'));
		}
	}
	/**
	 * Incluye de forma explícita lo/s modelo/s del usuario
	 * @param  mixed $modelo Nombre/s de lo/s modelo/s
	 */
	private function incluir_modelo($modelo='', $alias='')
	{
		$nombre_modelo = nom_arc_sim($modelo);
		$alias_mod     = empty($alias) ? $nombre_modelo : $alias;
		$carpeta       = MODELOS;
		$archivo       = $carpeta.agr_ext($modelo);
		// si existe el modelo,
		if (file_exists($archivo)) {
			// incluirlo si es que aún no exite,
			if (!method_exists($this, $alias_mod)) {
				$modelo = "aplicacion\modelos\\".$modelo;
				$this->$alias_mod = PK_Coleccion::obtener($modelo);
			}
		}else{
			// o, enviar el error al navegador
			exit(mostrar_error('Modelos','No existe el modelo: '.$archivo));
		}
	}
	/**
	 * Carga las ayudas (colección de funciones)
	 * solicitadas por el usuario
	 * @param  string $ayudas Nombre o colección de nombres de ayudas
	 */
	public function ayudas($ayudas='')
	{
		if (!empty($ayudas)){
			if (is_array($ayudas)){
				foreach ($ayudas as $value){
					$this->incluir_ayuda($value);
				}
			}else{
				$this->incluir_ayuda($ayudas);
			}
		}else{
			exit(mostrar_error('Ayudas','Parámetro nombre de ayuda vacío'));
		}
	}
	/**
	 * Incluye de forma explícita la/s ayuda/s del usuario
	 * @param  mixed $ayuda Nombre/s de la/s ayuda/s
	 */
	private function incluir_ayuda($ayuda='')
	{
		$carpeta = AYUDAS;
		$archivo = $carpeta.agr_ext($ayuda);
		// si existe la ayuda,
		if (file_exists($archivo)) {
			// incluirla, o,
			include_once $archivo;
		}else{
			$carpeta = SIS_AYUDAS;
			$archivo = $carpeta.agr_ext($ayuda);
			// incluirla, o,
			if (file_exists($archivo)) {
				include_once $archivo;
			}else{
				// enviar el error al navegador.-
				exit(mostrar_error('Ayudas','No existe el archivo de ayuda '.$ayuda));
			}
		}
	}
}
/* Final de archivo PK_Controlador.php */
/* Ubicación: ./sistema/nucleo/PK_Controlador.php */