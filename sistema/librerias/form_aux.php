<?php

namespace sistema\librerias;

(!defined('SISTEMA')) ? exit('No se permite el acceso directo al script.') : false;

class form_aux
{
    public $formulario;
    public $etiquetas;
    public $campos;
    public $areas;
    public $lineas = array();
    public $codigo = '';
    public $saltoString = '<br>';
    public $sinAperturaForm = false; //establecer TRUE si NO desea abrir el form (<form>)
    public $sinCierreForm = true; //establecer TRUE si NO desea cerrar el form (</form>)
    public $saltoEntrada = false; //estables TRUE si deseas que los inputs tenga salto de linea tipo <br />
    public $hayEtiqueta = false;
    public $hayCampo = false;

    public function __construct($frNombre = 'MiFormulario', $frcAccion = '#', $frMetodo = 'POST', $apertura = false)
    {
        if ($apertura) {
            $this->formulario($frNombre, $frcAccion, $frMetodo);
        }
    }

    public function formulario($frNombre = 'MiFormulario', $frAccion = '#', $frMetodo = 'POST')
    {
        $this->lineas[] = '<form name="' . $frNombre . '" action="' . $frAccion . '" method="' . $frMetodo . '">' . "\n";
    }

    public function agr_string($param)
    {
        $this->lineas[] = $param;
    }

    public function agr_enviar($nombre = 'enviar', $valor = 'Enviar')
    {
        $this->lineas[] = '<input type="submit" value="' . $valor . '" name="' . $nombre . '" />' . "\n";
    }

    public function agr_etiqueta($etiEtiqueta = 'Etiqueta', $etiPara = '', $atributos = array())
    {
        $etiqueta = '<label ';
        if (count($atributos) > 0) {
            foreach ($atributos as $key => $value) {
                $etiqueta .= $key . '="' . $value . '" ';
            }
        }
        if (empty($etiPara)) {
            $etiqueta .= 'for="' . $etiEtiqueta . '" >' . $etiEtiqueta . '</label>' . "\n";
        } else {
            $etiqueta .= 'for="' . $etiPara . '" >' . $etiEtiqueta . '</label>' . "\n";
        }
        $this->etiquetas[] = $etiqueta;
        $this->lineas[] = $etiqueta;
        $this->hayEtiqueta = true;
    }

    public function agr_campo($camNombre = 'MiCampo', $camId = '', $valor = '', $tipo = 'text', $size = 50)
    {
        $campo = '';
        $salto = '';
        if (empty($tipo)) {
            $tipo = 'text';
        }
        if ($this->saltoEntrada) {
            $salto = $this->saltoString;
        }
        if (empty($camId)) {
            $campo = '<input type="' . $tipo . '" id="' . $camNombre . '" name="' . $camNombre . '" value="' . $valor . '" size="' . $size . '" />' . $salto . "\n";
        } else {
            $campo = '<input type="' . $tipo . '" id="' . $camId . '" name="' . $camNombre . '" value="' . $valor . '" size="' . $size . '" />' . $salto . "\n";
        }
        $this->campos[] = $campo;
        $this->lineas[] = $campo;
        $this->hayCampo = true;
    }

    public function agr_area($areaNombre = 'MiArea', $valor = '', $rows = 4, $cols = 20)
    {
        $salto = '';
        if ($this->saltoEntrada) {
            $salto = $this->saltoString;
        }
        $area = '<textarea id="' . $areaNombre . '" name="' . $areaNombre . '" rows="' . $rows . '" cols="' . $cols . '">' . $valor . '</textarea>' . $salto . "\n";
        $this->areas[] = $area;
        $this->lineas[] = $area;
    }

    public function agr_selector($nombre, $opciones, $id = '', $seleccion = '', $atributos = array())
    {
        $salto = '';
        if ($this->saltoEntrada) {
            $salto = $this->saltoString;
        }
        if (empty($id)) {
            $id = $nombre;
        }
        if (!empty($nombre)) {
            if (!empty($opciones)) {
                foreach ($opciones as $valor) {
                    foreach ($valor as $key => $value) {
                        $x[] = $valor[$key];
                    }
                    $filas[] = array(
                        'valor' => $x[0],
                        'etiqueta' => $x[1],
                    );
                    unset($x);
                }
                $conca = '';
                $select = array();
                $txt = '<select name="' . $nombre . '" id="' . $id . '" ';
                if (count($atributos) > 0) {
                    foreach ($atributos as $key => $value) {
                        $txt .= $key . '="' . $value . '" ';
                    }
                }
                $txt .= '>' . "\n";
                $select[] = $txt;

                foreach ($filas as $value) {
                    if ($seleccion == $value['valor']) {
                        $select[] = '<option value="' . $value['valor'] . '" selected="selected">' . $value['etiqueta'] . '</option>' . "\n";
                    } else {
                        $select[] = '<option value="' . $value['valor'] . '">' . $value['etiqueta'] . '</option>' . "\n";
                    }
                }
                $select[] = '</select>' . $salto . "\n";
                foreach ($select as $value) {
                    $conca .= $value;
                }
                $this->lineas[] = $conca;
            }
        }
    }

    public function generar($imprimir = false)
    {
        if (!$this->sinCierreForm) {
            $this->lineas[] = '</form>' . "\n";
        }

        foreach ($this->lineas as $lineas) {
            $this->codigo .= $lineas;
        }
        if ($imprimir) {
            echo $this->codigo;
        } else {
            return $this->codigo;
        }
    }

    public function limpiar_cache()
    {
        $this->codigo = '';
        $this->lineas = array();
    }
}

// FIN form_aux Class
/* FIN de archivo form_aux.php */
/* Location: sistema/librerias/form_aux.php */
