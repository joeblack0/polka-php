<?php

namespace sistema\nucleo;

if (!defined('SISTEMA')) {
    exit('No se permite el acceso directo al script.');
}

class PK_Solicitud {

    private static $controlador  = '';
    private static $metodo       = '';
    private static $argumentos   = array();
    public static $sub_carpeta   = '';

    use PK_Singleton;

    private static function configurar() {
        $ruta = new PK_Rutas();
        $url = '';
        // Si se encontró ruta
        if ($ruta->hay()) {
            // Si hay cohincidencia en la ruta
            $url = filter_var($ruta->url_destino(), FILTER_SANITIZE_URL);
        } else {
            // Si No hay, procesar normalmente la url solicitada
            $url = filter_input(INPUT_GET, 'url', FILTER_SANITIZE_URL);
        }
        // Si hay uno de los anteriores casos, sustraer sus componentes
        if (!empty($url)) {
            $url = explode('/', $url);
            $url = array_filter($url);
            if (is_dir(CONTROLADORES . $url[0])) {
                self::$sub_carpeta = $url[0] . SD;
                unset($url[0]);
            }
            self::$controlador = array_shift($url);
            self::$metodo = array_shift($url);
            self::$argumentos = $url;
        }
    }

    public static function obt_controlador() {
        if (empty(self::$controlador))
            self::configurar();
        return self::$controlador;

    }

    public static function obt_metodo() {
        if (empty(self::$metodo))
            self::configurar();
        return self::$metodo;
    }

    public static function obt_argumentos() {
        if (empty(self::$argumentos))
            self::configurar();
        return self::$argumentos;
    }

}
