-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2013 a las 12:38:57
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `polka`
--
CREATE DATABASE IF NOT EXISTS `polka` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `polka`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `idart` int(7) NOT NULL AUTO_INCREMENT,
  `idsec` int(3) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `titulo_url` varchar(120) NOT NULL,
  `contenido` text NOT NULL,
  `tags` varchar(400) NOT NULL,
  PRIMARY KEY (`idart`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Contenido del manual' AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`idart`, `idsec`, `titulo`, `titulo_url`, `contenido`, `tags`) VALUES
(1, 1, 'Bienvenido a Polka', 'bienvenido-a-polka', '<h1>Bienvenido</h1>\r\n\r\n<p><strong>Polka&nbsp;</strong>es un marco de trabajo&nbsp;para aplicaciones web&#39;s escrita en PHP<sup>5</sup>, dise&ntilde;ado con la intenci&oacute;n de facilitar tanto el aprendizaje del mismo y&nbsp;el desarrollo de aplicaciones web, brindando al programador un gran&nbsp;conjunto de herramientas y recursos para la codificaci&oacute;n&nbsp;r&aacute;pida&nbsp;de aplicaciones en PHP. <strong>Tagua </strong>est&aacute; fuertemente tipado al idioma espa&ntilde;ol para la r&aacute;pida compresi&oacute;n y utilizaci&oacute;n del mismo, tanto las ayudas, funciones, librerias, etc, se rigen por el mismo concepto.</p>\r\n\r\n<h2>Es para t&iacute;?</h2>\r\n\r\n<p>Polka te puede servir si quieres:</p>\r\n\r\n<ul>\r\n	<li>desarrollar aplicaci&oacute;nes web&#39;s tipo MVC</li>\r\n	<li>crear&nbsp;tus propias ayudas, librer&iacute;as, con tus propias l&oacute;gicas</li>\r\n	<li>c&oacute;digo no obstructivo</li>\r\n	<li>alto rendimiento</li>\r\n	<li>compatibilidad con la mayoria&nbsp;de alojamientos web</li>\r\n	<li>poca configuraci&oacute;n</li>\r\n	<li>no usar lineas de comando</li>\r\n	<li>comunicaci&oacute;n entre&nbsp;las&nbsp;secciones de su&nbsp;aplicaci&oacute;n</li>\r\n	<li>satisfacer tus necesidades m&aacute;s comunes</li>\r\n	<li>rapid&eacute;s de ejecuci&oacute;n de tus aplicaciones</li>\r\n	<li>bajo consumo de memoria del servidor</li>\r\n	<li>versatibilidad</li>\r\n	<li>un marco de trabajo de f&aacute;cil compresi&oacute;n</li>\r\n	<li>y mucho m&aacute;s...</li>\r\n</ul>\r\n\r\n<h2>Requisitos</h2>\r\n\r\n<ul>\r\n	<li>Versi&oacute;n de PHP&nbsp;5.4+</li>\r\n	<li>El Modelo principal est&aacute; dise&ntilde;ado sobre PDO, por lo tanto, Polka soporta&nbsp;todas las bases de datos que &eacute;ste driver soporta,&nbsp;como ser&nbsp;MySQL (5.1+), MySQLi, MS SQL, Postgres, Oracle, SQLite, entre otros.</li>\r\n	<li>Por lo general, estos son los &uacute;nico requisitos para desarrollar en Polka.</li>\r\n</ul>\r\n\r\n<h2>Por &uacute;ltimo</h2>\r\n\r\n<p>Te invitamos a que pongas a prueba a <strong>Polka</strong>&nbsp;y quites tus propias conclusiones.</p>\r\n\r\n<blockquote>an&iacute;mate, Polka es amigable y habla t&uacute; idioma...</blockquote>\r\n', 'bienvenido, introducción, varios'),
(2, 1, 'Acuerdo de Licencia', 'acuerdo-de-licencia', '<h1>Acuerdo de Licencia</h1>\r\n\r\n<p>Copyright (c) 2013, Ricardo Rotela Gonz&aacute;lez.<br />\r\nTodos los derechos reservados.<br />\r\nEsta licencia es un acuerdo legal entre Ud y Ricardo Rotela Gonz&aacute;lez,&nbsp;para el uso del software Polka&nbsp;(el &quot;Software&quot;). Al&nbsp;obtener el Software, Ud est&aacute; de acuerdo a cumplir con los t&eacute;rminos y condiciones de esta licencia.</p>\r\n\r\n<h2>Uso Permitido</h2>\r\n\r\n<p>Se le permite usar, copiar, modificar y distribuir el Software y su documentaci&oacute;n, con o sin modificaciones, para&nbsp;cualquier prop&oacute;sito, siempre que se cumplan los siguientes requisitos:</p>\r\n\r\n<ol>\r\n	<li>Se incluya una copia de esta licencia con la distribuci&oacute;n.</li>\r\n	<li>Las redistribuciones del c&oacute;digo fuente deben conservar el aviso de copyright en todos los archivos de&nbsp;c&oacute;digo fuente.</li>\r\n	<li>Las redistribuciones en formato binario deben reproducir el aviso de copyright en la documentaci&oacute;n y/o&nbsp;otros materiales suministrados con la distribuci&oacute;n.</li>\r\n	<li>Todos los archivos que han sido modificados deben llevar avisos indicando la naturaleza de los cambios y&nbsp;los nombres de aquellos que los cambi&oacute;.</li>\r\n	<li>Los productos derivados del Software debe incluir un reconocimiento de que son derivados de Polka&nbsp;en su documentaci&oacute;n y/o otros materiales suministrados con la distribuci&oacute;n.</li>\r\n	<li>Los productos derivados del Software no se pueden llamar &quot;Polka&quot;, ni puede aparecer &quot;Polka&quot;&nbsp;en su nombre, sin la previa autorizaci&oacute;n por escrito de Ricardo Rotela Gonz&aacute;lez.</li>\r\n</ol>\r\n\r\n<h2>Indemnizaci&oacute;n</h2>\r\n\r\n<p>Usted acepta indemnizar y mantener inocentes al autor del Software y/o todos los colaboradores por los da&ntilde;os&nbsp;directos, indirectos, incidentales o consecuentes reclamaciones de terceros, acciones o demandas, as&iacute; como&nbsp;cualquier gasto, responsabilidades, da&ntilde;os, asentamientos o cargos derivados de su uso o mal uso del Software, o&nbsp;una violaci&oacute;n de cualquiera de los t&eacute;rminos de esta licencia.</p>\r\n\r\n<h2>Renuncia de Garant&iacute;a</h2>\r\n\r\n<p>EL SOFTWARE SE PROVEE &quot;COMO EST&Aacute;&quot;, SIN GARANT&Iacute;A DE NING&Uacute;N TIPO, EXPRESA O IMPL&Iacute;CITA,&nbsp;INCLUYENDO, PERO NO LIMITADA A, GARANT&Iacute;AS DE CALIDAD, RENDIMIENTO, NO INFRACCI&Oacute;N, COMERCIALIZACI&Oacute;N O IDONEIDAD PARA UN PROP&Oacute;SITO PARTICULAR.</p>\r\n\r\n<h2>Limitaciones de Responsabilidad</h2>\r\n\r\n<p>UD ASUME TODOS LOS RIESGOS ASOCIADOS CON LA INSTALACI&Oacute;N Y USO DE ESTE SOFTWARE. EN NING&Uacute;N&nbsp;CASO EL&nbsp;AUTOR&nbsp;O DUE&Ntilde;O&nbsp;DEL COPYRIGHT DEL SOFTWARE SER&Aacute;&nbsp;RESPONSABLE&nbsp;POR RECLAMOS,&nbsp;DA&Ntilde;OS O CUALQUIER OTRA RESPONSABILIDAD QUE SE PRESENTE DE O EN RELACI&Oacute;N CON EL SOFTWARE. EL DUE&Ntilde;O&nbsp;DE LA LICENCIA ES&nbsp;RESPONSABLE&nbsp;UNICAMENTE DE DETERMINAR LA CONVENIENCIA DEL USO Y&nbsp;ASUMIR TODOS LOS RIESGOS ASOCIADOS CON SU USO, INCLUYENDO PERO NO LIMITADO A LOS RIESGOS DE&nbsp;LOS ERRORES DEL PROGRAMA, DA&Ntilde;O AL EQUIPO, P&Eacute;RDIDA DE DATOS O PROGRAMAS DE SOFTWARE, O LA&nbsp;FALTA DE DISPONIBILIDAD O INTERRUPCI&Oacute;N DE OPERACIONES.</p>\r\n', 'introducción, licencia, uso, indemnización, garantía, limitaciones, responsabilidad'),
(3, 1, 'Créditos', 'creditos', '<h1>Cr&eacute;ditos</h1>\r\n\r\n<p>Polka&nbsp;fue desarrollado Ricardo Rotela Gonz&aacute;lez (joeblack). En un principio el autor desarrollaba aplicaciones web apoyandose en clases/librer&iacute;as y funciones gen&eacute;ricas que &eacute;l mismo los desarrollaba, con el tiempo, cre&oacute; un marco de trabajo para&nbsp;obtener una herramienta de acceso r&aacute;pido y familiar en su idioma materno, d&aacute;ndo &eacute;nfasis a la disponibilidad de muchas bibliotecas de clases, funciones de ayudas independientes de forma natural. Muchas de las ideas, estructura, l&oacute;gica, etc. fueron inspirados por&nbsp;otros frameworks que alguna vez utiliz&oacute;, extrayendo muchas ideas&nbsp;buenas&nbsp;de cada unas de ellas.</p>\r\n\r\n<p>Por el memento, Ricardo es el &uacute;nico que va desarrollando, corriguiendo, extendiendo Polka, pero si quieres colaborar, Polka&nbsp;se encuentra en github.org</p>\r\n\r\n<h2>Acerca de la Gu&iacute;a</h2>\r\n\r\n<p>Esta gu&iacute;a se ha escrito a modo de orientaci&oacute;n y apoyo para el desarrollo de aplicaciones en Polka, si bien las&nbsp;funciones, ayudas, librer&iacute;as, etc,&nbsp;son&nbsp;intuitivas y&nbsp;en espa&ntilde;ol, esta gu&iacute;a servir&aacute; de empuje para adoptar este marco de trabajo.</p>\r\n\r\n<h2>Agradecimientos</h2>\r\n\r\n<p>Palabras del autor</p>\r\n\r\n<blockquote>Un agradecimiento inmenso a todos los colegas desarrolladores del mundo entero (no importa de que lenguaje sea), quienes de forma desinteresada colaboran, instruyen, ayudan (por sus medios) a otros futuros desarrolladores y amateurs, de las distintas p&aacute;ginas, grupos, foros, etc. de este maravillosa red de redes.</blockquote>\r\n\r\n<blockquote>El camino del Programador es bastante dif&iacute;cil, si t&uacute; has decidido caminar por este sendero, te dar&aacute;s cuenta que sin la ayuda y/o aportaciones de otros colegas las cosas ser&iacute;an m&aacute;s dif&iacute;ciles para nosotros, los incomprendidos de la sociedad.</blockquote>\r\n', 'créditos, guía, acerca, agradecimientos, autor'),
(4, 2, 'Descargar Polka', 'descargar-polka', '<h1>Descargar Polka</h1>\r\n\r\n<p>Descargue la &uacute;ltima versi&oacute;n de Polka en <a href="https://github.com/joeblack0/polka-php" target="_blank">https://github.com/joeblack0/polka-php</a></p>\r\n\r\n<h2>Instalando</h2>\r\n\r\n<p>Polka en s&iacute;, no se instala, m&aacute;s bien se copia y se ajusta algunas configuraciones, siga estos pasos:</p>\r\n\r\n<ul>\r\n	<li>Descomprima el paquete en su servidor, &nbsp;dependiendo de su sistema operativo, ser&iacute;a algo como:&nbsp;\r\n	<ul>\r\n		<li>en windows (xampp) <code>c:\\xampp\\htdocs\\</code> (polka)</li>\r\n		<li>en linux (centos en una instalaci&oacute;n standar) <code>vars\\www\\</code> (polka)</li>\r\n		<li><strong>obs</strong>: las ubicaciones pueden cambiar, seg&uacute;n las preferencias del usuario.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Abra el archivo<code> aplicacion/configuracion/aplicacion.php</code> con un editor de texto y establezca su URL base. Si&nbsp;tiene intenci&oacute;n de usar encriptaci&oacute;n o sesiones, establezca su clave de encriptaci&oacute;n.</li>\r\n	<li>Si tiene intenci&oacute;n de usar una base de datos, abra el archivo <code>aplicacion/configuracion/db.php</code> con un&nbsp;editor de texto y establezca los par&aacute;metros de la base de datos.</li>\r\n</ul>\r\n\r\n<h2>Eso es todo</h2>\r\n\r\n<p>Si Ud es nuevo en Polka, por favor lea la secci&oacute;n Primeros Pasos de la Gu&iacute;a del Usuario para comenzar a&nbsp;aprender como construir aplicaciones PHP din&aacute;micas.</p>\r\n\r\n<blockquote>Disfr&uacute;telo...</blockquote>\r\n', 'instalación, descarga, windows, linux'),
(5, 3, 'Primeros Pasos', 'primeros-pasos', '<h1>Primeros Pasos</h1>\r\n\r\n<p>Aprender cualquier marco de trabajo o (framework) require alg&uacute;n tipo de esfuerzo, sin embargo Polka&nbsp;fu&eacute; escrito,&nbsp;definido y destinado para programadores de habla hispana, por lo tanto&nbsp;la curva de aprendizaje ser&aacute;&nbsp;minima, con Polka s&oacute;lo debe aprender a utilizar sus recursos y la l&oacute;gica del modelo, vista y controlador (MVC), tenga en cuenta que este marco de trabajo utiliza POO, sin embargo su complejidad es manejada por el n&uacute;cleo, dejando al programador la escritura de funciones y su l&oacute;gica de aplicaci&oacute;n o negocio.</p>\r\n\r\n<p>Te recomendamos empezar por la secci&oacute;n Mi primera aplicaci&oacute;n en Polka, en ella se tocaran&nbsp;temas generales y un tanto b&aacute;sicas, como el manejo de controladores, modelos, vistas, librer&iacute;as, funciones entre otros.</p>\r\n\r\n<p>Una vez comprendido la l&oacute;gica de Polka, favor leer cada una de las documentaciones sobre los paquetes nativos de librer&iacute;as, ayudas y clases de Polka, en ellas encontrar&aacute;s las&nbsp;funciones&nbsp;adecuadas para tus necesidades.</p>\r\n\r\n<blockquote>recuerde que Polka a&uacute;n est&aacute; creciendo, por lo tanto, si no encuentra una ayuda, librer&iacute;a o clase que se adecue a tus necesidades, sientase libre de crearlo</blockquote>\r\n', 'primeros, pasos'),
(6, 3, 'Descripción General', 'descripcion-general', '<h1>Descripci&oacute;n General</h1>\r\n\r\n<h2>Polka es un marco de trabajo (framework)</h2>\r\n\r\n<p>Polka es un marco de trabajo (framework) para desarrollar aplicaciones web&#39;s din&aacute;micas, con un monton de paquetes (ayudas, librerias, clases) nativas, con posibilidad de&nbsp;crear paquetes nuevos, o extender las clases nativas. Polka&nbsp;permite desarrollar aplicaciones mucho m&aacute;s r&aacute;pido ya que no necesitas codificar desde cero, permitiendo al programador centrarse libremente en su/s proyecto/s y/o logica de programa. Con Polka se minimiza significactivamente la cantidad de c&oacute;digo innecesario&nbsp;y los recursos se cargan seg&uacute;n se den las necesidades.</p>\r\n\r\n<h2>Polka&nbsp;es Liviano</h2>\r\n\r\n<p>Es realmente liviano. El n&uacute;cleo del sistema s&oacute;lo requiere algunas bibliotecas muy peque&ntilde;as. Esto est&aacute; en marcado&nbsp;contraste con muchos frameworks que requieren muchos m&aacute;s recursos. Las bibliotecas adicionales se cargan&nbsp;din&aacute;micamente bajo pedido, basado en sus necesidades para un proceso dado, por lo que el sistema base es muy&nbsp;ligero y bastante r&aacute;pido.</p>\r\n\r\n<h2>Polka es vel&oacute;z</h2>\r\n\r\n<p>Es verdaderamente r&aacute;pido. Lo invitamos&nbsp;probar y comparar el desempe&ntilde;o de Polka con otros marcos.</p>\r\n\r\n<h2>Polka usa MVC</h2>\r\n\r\n<p>Polka usa el enfoque Modelo-Vista-Controlador, aunque realmente usa C-(Salida):(V):(M-V), que permite una gran separaci&oacute;n entre la l&oacute;gica y la&nbsp;presentaci&oacute;n. La Vista es particularmente bueno para proyectos en los que los dise&ntilde;adores trabajan en sus archivos de&nbsp;plantillas, ya que el c&oacute;digo en estos archivos ser&aacute; m&iacute;nimo. Describimos MVC en m&aacute;s detalle en su propia p&aacute;gina.</p>\r\n\r\n<h2>Polka usa&nbsp;url&#39;s&nbsp;amigables</h2>\r\n\r\n<p>Las URLs generadas por Polka&nbsp;son claras y amigables con los motores de b&uacute;squeda. En lugar de usar el&nbsp;enfoque est&aacute;ndar &quot;query string&quot; caracter&iacute;stico de sistemas din&aacute;micos, Polka se&nbsp;ejecuta por url&#39;s segmentados:</p>\r\n\r\n<p><code>ejemplo.com/noticias/articulo/1452</code></p>\r\n\r\n<h2>Polka trae un Mont&oacute;n de Paquetes</h2>\r\n\r\n<p>Polka viene con una gama completa de bibliotecas que facilitan las tareas de desarrollo web m&aacute;s&nbsp;com&uacute;nmente usadas, como acceso a base de datos, validaci&oacute;n de datos de&nbsp;formularios, manejo de sesiones&nbsp; y mucho m&aacute;s.&nbsp;</p>\r\n\r\n<h2>Polka es extensible</h2>\r\n\r\n<p>El sistema se puede extender f&aacute;cilmente a trav&eacute;s de sus propias bibliotecas, helpers, extensiones de clases o&nbsp;sistema de gancho (hook).</p>\r\n\r\n<h2>Polka no&nbsp;usa&nbsp;complejo motor de plantillas</h2>\r\n\r\n<p>Polka&nbsp;viene con un sencillo motor de plantillas que se puede usar opcionalmente, Ud no est&aacute; forzado&nbsp;a usar uno. Tenga en cuenta que la abstracci&oacute;n de los motores de plantillas simplemente no pueden igualar el desempe&ntilde;o del PHP nativo, y la sintaxis&nbsp;que hay que aprender para usar un motor de plantillas normalmente es solo marginalmente m&aacute;s f&aacute;cil que aprender&nbsp;los fundamentos de PHP.</p>\r\n', 'descripción, general, marco, trabajo, desarrollo, framework, introducción'),
(7, 3, 'Reglas', 'reglas', '<h1>Reglas</h1>\r\n\r\n<h2>Consideraciones</h2>\r\n\r\n<p><strong>Polka </strong>utiliza autocargas nativas de Php para la carga&nbsp;de <strong>clases</strong>, en s&iacute;stesis, ninguna <strong>clase </strong>es cargada&nbsp;con includes, include_once, require o sus variantes. Php 5.(3)(4) vino con varios cambios significativos al respecto, algunas de las m&aacute;s importantes fueron la inclusion de trait&#39;s, acceso a&nbsp;metodos en tiempo de creacion, namespace&#39;s, y claro est&aacute;, los registros de autocargas, todo esto para dar m&aacute;s soporte a POO restrictivo, basado en estas &uacute;ltimas bondades de Php, <strong>Polka </strong>sufri&oacute; algunos cambios en su core y en sus clases principales. Por lo tanto al crear sus controladores, modelos, librerias y&nbsp;ayudas tenga en cuenta lo siguiente.</p>\r\n\r\n<h3>Creaci&oacute;n de Controladores, Modelos y Librerias</h3>\r\n\r\n<ul style="list-style-type:square">\r\n	<li>Defina el nombre de espacio o namespace para esto/s, siempre apuntado a la ubicaci&oacute;n de su archivo, seg&uacute;n sea el caso;\r\n	<ul>\r\n		<li>&nbsp;Controladores:&nbsp;<code>aplicacion\\controladores;</code></li>\r\n		<li>&nbsp;Modelos:&nbsp;<code>aplicacion\\modelos;</code></li>\r\n		<li>&nbsp;Librerias:&nbsp;<code>aplicacion\\librerias;</code></li>\r\n	</ul>\r\n	</li>\r\n	<li>Respete el orden de ejecuci&oacute;n (Php), o sea, la definici&oacute;n de nombre de espacio o<code> namespace</code>, es lo primero que debe escribirse, luego (de ser necesario) la clausula <code>use.</code></li>\r\n	<li>Para m&aacute;s detalle sobre la creaci&oacute;n de estas, dirijase en sus respectivos apartados.</li>\r\n</ul>\r\n\r\n<h3>Obtenci&oacute;n de recursos</h3>\r\n\r\n<p>Polka es muy flexible en cuanto a la obtenci&oacute;n de recursos, esto quiere decir que hay varias formas de acceder a ellas, tenga en cuenta, que si est&aacute;s programando dentro de un controlador, estos recursos est&aacute; disponibles desde la clausula $this. Pero que pasa si estas programado una librer&iacute;a? o peor a&uacute;n, una ayuda, que es simplemente funciones?, para ello, Polka consta de varias clases de nucleo independiente, solo pk_Controlador las tiene todas integradas, es m&aacute;s, &eacute;sta &uacute;ltima usa las mismas&nbsp;clases de nucleo.</p>\r\n\r\n<h3>Clases del n&uacute;cleo (los tres mosqueteros)</h3>\r\n\r\n<p><strong>pk_Controlador</strong>: es la clase m&aacute;s importante del marco, de echo, de &eacute;sta debe extenderse su controlador personal, ejemplo <code>class mi_controlador extends pk_Controlador;</code></p>\r\n\r\n<p><strong>pk_Coleccion</strong>: desde luego es importante tambi&eacute;n, s&oacute;lo que &eacute;ste no es m&aacute;s que una colecci&oacute;n de librerias y modelos del sistema, obtenga sus recursos con una instancia de la misma, cuidado, la librer&iacute;a llames debe contener su nombre de espacio (o fullname), esto quiere decir que si desea una librer&iacute;a deberias hacerlo as&iacute;:&nbsp;</p>\r\n\r\n<p><code>$tg = pk_Coleccion::obtener( &quot;aplicacion\\librerias\\tulibreria&quot;&nbsp;); </code></p>\r\n\r\n<p>o</p>\r\n\r\n<p><code>$tg = pk_Coleccion::obtener( &quot;nucleo\\librerias\\libreria_del_sistema&quot;&nbsp;)</code></p>\r\n\r\n<p><strong>pk_Config</strong>: Lo mismo que pk_Coleccion, s&oacute;lo que &eacute;sta contiene las configuraciones que sean utilizado o por utilizarse, devuelve un objeto con las propiedades individuales de la configuraci&oacute;n requerida, o directamente el valor de la configuraci&oacute;n, ejemplo;</p>\r\n\r\n<p><code>$cfg&nbsp;= pk_Config::obtener(&#39;principal&#39;)-&gt;base_url; </code></p>\r\n', 'reglas, consideraciones, controladores, modelos, librerías, ayudas, recursos, acceder, obtener'),
(8, 4, 'Mi primera aplicación', 'mi-primera-aplicacion', '<h1>Bienvenido/s</h1>\r\n\r\n<p>Si lleg&oacute; hasta aqu&iacute; es porque est&aacute; interezad@ a crear aplicaciones en Polka. En esta secci&oacute;n (Tutorial), iremos tocando temas como:</p>\r\n\r\n<ul>\r\n	<li>Configuraci&oacute;n de la aplicaci&oacute;n</li>\r\n	<li>Creaci&oacute;n de un <strong>Controlador</strong>\r\n	<ul>\r\n		<li>Hola mundo!</li>\r\n		<li>Conociendo nuestro <strong>Controlador</strong></li>\r\n		<li>Salidas Eco</li>\r\n	</ul>\r\n	</li>\r\n	<li>Creaci&oacute;n de una <strong>Vista</strong>\r\n	<ul>\r\n		<li>Conociendo la <strong>Vista</strong></li>\r\n		<li>Crear Capas</li>\r\n		<li>Vista Final</li>\r\n	</ul>\r\n	</li>\r\n	<li>Creaci&oacute;n de un <strong>Modelo </strong>de datos (base de datos)\r\n	<ul>\r\n		<li>Conociendo nuestro <strong>Modelo</strong></li>\r\n		<li>Lista de datos</li>\r\n		<li>Inserci&oacute;n de registro</li>\r\n		<li>Edici&oacute;n / actualizaci&oacute;n de registro</li>\r\n		<li>Eliminaci&oacute;n de registro</li>\r\n		<li>Sql libres</li>\r\n	</ul>\r\n	</li>\r\n	<li>Unificaci&oacute;n de todos los m&oacute;dulos <strong>M-V-C</strong></li>\r\n</ul>\r\n\r\n<p>Hay un dicho,</p>\r\n\r\n<blockquote>no hay mejor manera de aprender, que practicando con ejemplos...<br />\r\nDesconocido</blockquote>\r\n\r\n<p>Lo que trae a colaci&oacute;n una cita,</p>\r\n\r\n<blockquote>Dime y lo olvido, ens&eacute;&ntilde;ame y lo recuerdo, invol&uacute;crame y lo aprendo<br />\r\nBenjam&iacute;n Franklin</blockquote>\r\n\r\n<p>Para compreder mejor Polka, se guiar&aacute; al lector a construir una aplicaci&oacute;n de <strong>Lista de Contactos</strong>, con sus correspondiente controlador, modelo y vista, creando as&iacute;&nbsp;todo su sistema de ABM-C&nbsp;(alta, baja, modificaciones,&nbsp;consultas), y por &uacute;ltimo, como dir&iacute;a el autor;</p>\r\n\r\n<blockquote>Espero&nbsp;que disfrutes de Polka, como yo he&nbsp;disfrutado&nbsp;desarroll&aacute;ndolo, gracias...</blockquote>\r\n', 'tutorial, manual, controlador, modelo, vista, hola mundo, abm, inserción, modificación, eliminación, consulta'),
(9, 4, 'Configurando La Aplicación', 'configurando-la-aplicacion', '<h1>Configurando la aplicaci&oacute;n</h1>\r\n\r\n<h2>Descarga de Paquete</h2>\r\n\r\n<p>Para realizar nuestra aplicaci&oacute;n haremos lo siguiente:</p>\r\n\r\n<p>Descargamos la &uacute;ltima versi&oacute;n de Polka MT desde&nbsp;<a href="http://github.com/joeblack0/polka-php" target="_blank">http://github.com/joeblack0/polka-php</a></p>\r\n\r\n<p>Descomprimimos el paquete en nuestro servidor, si usas Windows con XAMPP, seria en:</p>\r\n\r\n<p style="margin-left:40px"><code>c:\\xampp\\htdocs\\polka-php</code></p>\r\n\r\n<p>Cambiamos el nombre de la carpeta del paquete a &quot; contactos &quot;, quedar&iacute;a as&iacute;:</p>\r\n\r\n<p style="margin-left:40px"><code>c:\\xampp\\htdocs\\contactos</code></p>\r\n\r\n<h2>Configurando</h2>\r\n\r\n<p>Polka no necesita mayores configuraciones, aunque hay sutiles cambios para crea su aplicaci&oacute;n, siguiendo nuestro Tutorial, haremos lo siguiente:</p>\r\n\r\n<p>Entraremos a&nbsp;<code>c:\\xampp\\htdocs\\Polkamt\\aplicacion\\configuracion\\aplicacion.php</code></p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/config-aplicacion.jpg" style="height:214px; width:500px" /></p>\r\n\r\n<p>Modificaremos el par&aacute;metro<code> $config[&#39;base_url&#39;]</code>, quedar&iacute;a as&iacute;:</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/config-aplicacion-2.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p>Eso es suficiente para ejecutar <strong>Polka PHP</strong>, para comprobarlo, abriremos nuestro navegador e ingresaremos&nbsp;<a href="http://localhost/contactos/">http://localhost/contactos/</a>&nbsp;, deber&iacute;mos ver la siguiente pantalla de bienvenida de <strong>Polka PHP</strong></p>\r\n\r\n<p><strong><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/patalla-bienvenida.jpg" style="height:436px; width:600px" /></strong></p>\r\n\r\n<p>Felicidades, haz instalado correctamente Polka PHP, ya estas preparado para crear tus aplicaciones webs.</p>\r\n\r\n<blockquote>Dicen que los pesimistas ven el vaso medio vac&iacute;o; los optimistas, en cambio, lo ven medio lleno. Los ingenieros, por supuesto, ven que el vaso es el doble de grande de lo que ser&iacute;a necesario.<br />\r\nBob Lewis</blockquote>\r\n\r\n<p>Siga con el siguiente tema del Manual&nbsp;<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px">Creaci&oacute;n de un&nbsp;</span><strong>Controlador</strong>.</p>\r\n', 'Configurando La Aplicación'),
(10, 4, 'Creación de un Controlador', 'creacion-de-un-controlador', '<h1>Creaci&oacute;n de un Controlador</h1>\r\n\r\n<p>Vamos a lo nuestro, para crear un controlador, igresaremos dentro de<code> c:\\xampp\\htdocs\\contactos</code>&nbsp;y haremos lo siguiente:</p>\r\n\r\n<ul>\r\n	<li>Ingresaremos a controladores y veremos un archivo llamado <strong>bienvenido.php</strong></li>\r\n</ul>\r\n\r\n<p>El controlador&nbsp;<strong>bienvenido&nbsp;</strong>es el controlador principal de nuestra aplicaci&oacute;n, si deseas puedes cambiarlo en la configuraci&oacute;n del sistema&nbsp;<code>c:\\xampp\\htdocs\\contactos\\configuracion\\aplicaci&oacute;n.php</code>, como lo hemos visto anteriormente, (por el momento dej&eacute;moslo como est&aacute;).</p>\r\n\r\n<p>Ahora crearemos un nuevo controlador llamado <code>micontrolador.php</code>, ahora deber&iacute;amos tener dos controladores, el <code>bienvenido.php</code> y <code>micontrolador.php</code>, quedar&iacute;a as&iacute;:</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/ficheros-controladores-1.JPG" style="height:370px; width:203px" /></p>\r\n\r\n<p>Abriremos el fichero <code>micontrolador.php</code> con nuestro editor favorito (con codificaci&oacute;n utf8), y escribiremos nuestras primeras l&iacute;neas, quedar&iacute;a as&iacute;:</p>\r\n\r\n<p><a href="http://localhost/polka/aplicacion/vistas/imagenes/images/mi-controlador-1.JPG" target="_blank"><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/mi-controlador-1.JPG" style="height:223px; width:500px" /></a></p>\r\n\r\n<h3>Explicando por l&iacute;neas:</h3>\r\n\r\n<p><strong>L&iacute;nea 2:</strong> Indicamos a PHP que nuestra clase (micontrolador) se encuentra en el espacio de nombre aplicacion\\controladores, esto quiere decir que al momento que se solicita el controlador <strong>micontrolador </strong>se buscar&aacute; en <code>aplicacion\\controladores</code>,<span style="color:#B22222"> <strong><em>&eacute;sta l&iacute;nea es obligatoria</em></strong></span>.</p>\r\n\r\n<p><strong>L&iacute;nea 3:</strong> Importamos la clase <strong>pk_Controlador </strong>que se encuentra en <code>sistema\\nucleo\\</code> y lo llamaremos por su propio nombre <strong>pk_Controladores</strong>. Para tener en cuenta, (analog&iacute;a) si haz programado en <code>java</code>, la clausula <code>USE </code>es como <code>IMPORT</code>, d&oacute;nde indicamos que deseamos trabajar con todas las librer&iacute;as import paquete.<code>libreria.*</code> , en nuestro caso <code>sitema\\nucleo</code>&nbsp;, sin embargo, podemos indicar que s&oacute;lo nos intereza una clase en concreto, en este caso, <strong>pk_Controlador</strong>, ya que de ella extenderemos nuestro <strong>controlador,</strong><span style="color:rgb(178, 34, 34)">&nbsp;<strong><em>&eacute;sta l&iacute;nea es obligatoria</em></strong></span>.</p>\r\n\r\n<p><strong>L&iacute;nea 4:</strong> Declaramos nuestra clase, <strong>micontrolador </strong>extendida de <strong>pk_Controlador</strong>, es importante aclarar que el nombre de clase (o <strong>micontrolador </strong>en nuestro caso) debe ser del mismo nombre del archivo (<code>micontrolador.php</code>), de &eacute;sta forma la auto carga de <strong>PHP </strong>lo encontrar&aacute;, tengamos en cuenta que el diparador del sistema, no usa include&#39;s ni sus derivados para la carga de clases, aunque en otro lugares&nbsp;del sistema si lo usa, pero por muy importante razones (<em>comodida de acceso para el desarrollador</em>).</p>\r\n\r\n<p><strong>L&iacute;nea 6:</strong> Declaramos la funci&oacute;n constructora de la clase &nbsp;<code>__construct()</code>,&nbsp;e</p>\r\n\r\n<p><strong>L&iacute;nea 8:</strong> Indicamos que se ejecute&nbsp;el contructor de la clase padre.</p>\r\n\r\n<p>Ahora a probar, ingresemos en la url&nbsp;<a href="http://localhost/contactos/micontrolador">http://localhost/contactos/micontrolador</a>&nbsp;y veremos la siguiente pantalla:</p>\r\n\r\n<p><a href="http://localhost/polka/aplicacion/vistas/imagenes/images/micontrolador-no-existe.JPG" target="_blank"><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/micontrolador-no-existe.JPG" style="height:224px; width:500px" /></a></p>\r\n\r\n<p>Este es un error personalizado de <strong>Polka</strong>, nos indica que el m&eacute;todo principal no existe.<strong> <span style="color:#B22222"><em>El m&eacute;todo principal es un m&eacute;todo obligatorio</em></span></strong>, o m&aacute;s bien, debe haber un m&eacute;todo obligatorio (aunque pueda que no se use), ya que, en programaci&oacute;n orientada a objeto debe tener un punto de partida, dicho de otro modo, &iquest;c&oacute;mo sabr&aacute; el sistema por d&oacute;nde empezar?, y recordando que&nbsp;java&nbsp;debe tener un m&eacute;todo main, en nuestro caso debe tener&nbsp;el <strong>m&eacute;todo&nbsp;principal,</strong>&nbsp;(puede cambiar el nombre de funci&oacute;n principal si lo desea, en <code>configuracion/aplicacion.php</code>)</p>\r\n\r\n<p>Entonces, declaremos el m&eacute;todo <strong>principal </strong>y escribiremos un texto para luego&nbsp;verlo en el navegador, quedar&iacute;a as&iacute;:</p>\r\n\r\n<p><a href="http://localhost/polka/aplicacion/vistas/imagenes/images/mi-controlador-2.JPG" target="_blank"><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/mi-controlador-2.JPG" style="height:296px; width:500px" /></a></p>\r\n\r\n<p>Ahora a probar, ingresemos en la url&nbsp;<a href="http://localhost/contactos/micontrolador">http://localhost/contactos/micontrolador</a>&nbsp;y veremos la siguiente pantalla:</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/pantalla-mi-controlador-2.jpg" style="height:154px; width:401px" /></p>\r\n\r\n<p><strong>Genial!</strong>, creamos nuestro primer<strong> controlador</strong>...</p>\r\n\r\n<h3>Explicando por l&iacute;nea:</h3>\r\n\r\n<p><strong>L&iacute;nea 10:</strong> Declaramos una funci&oacute;n con el nombre <strong>principal </strong>(porque <strong>Polka </strong>lo pide), y</p>\r\n\r\n<p><strong>L&iacute;nea 12:</strong> Mostramos un texto, usando la funci&oacute;n <code>eco</code> de <strong>Polka </strong>(vea la referencia de <strong>funciones </strong>en&nbsp;el apartado <strong>Ayudas </strong>de <strong>Polka</strong>).</p>\r\n\r\n<p>B&aacute;sicamente, &eacute;ste es un <strong>controlador</strong>, de aqu&iacute; en adelante seguiremos enriqueci&eacute;ndolo.</p>\r\n\r\n<h2>Par&aacute;metros</h2>\r\n\r\n<p>Ahora crearemos un&nbsp;m&eacute;todo que recibir&aacute; un par&aacute;metro (nombre)&nbsp;y &eacute;ste mostrar&aacute; en pantalla un saludo personalizado, ve&aacute;moslo.</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/mi-controlador-3.JPG" style="height:348px; width:500px" /></p>\r\n\r\n<p>A probar, ingresemos en el navegador la siguiente url: <a href="http://localhost/contactos/micontrolador/saludos">http://localhost/contactos/micontrolador/saludos</a>&nbsp;, y veremos la siguiente pantalla;</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/pantalla-mi-controlador-3.jpg" style="height:183px; width:500px" /></p>\r\n\r\n<p>Ahora ingresaremos un par&aacute;metro, para &eacute;ste ejemplo se usar&aacute; joeblack (en su caso, utilice su nombre), ingresemos en el navegador la siguiente url:&nbsp;<a href="http://localhost/contactos/micontrolador/saludos/joeblack">http://localhost/contactos/micontrolador/saludos/joeblack</a>&nbsp;, y veremos la siguiente pantalla;</p>\r\n\r\n<p><img alt="" src="http://localhost/polka/aplicacion/vistas/imagenes/images/pantalla-mi-controlador-3-2.jpg" style="height:170px; width:500px" /></p>\r\n', 'creación, controlador, crear, manual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `idmen` int(5) NOT NULL AUTO_INCREMENT,
  `menu_etiqueta` varchar(80) NOT NULL,
  `menu_url` varchar(80) NOT NULL,
  `menu_ord` tinyint(2) NOT NULL,
  PRIMARY KEY (`idmen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`idmen`, `menu_etiqueta`, `menu_url`, `menu_ord`) VALUES
(1, 'Introducción', 'introduccion', 1),
(2, 'Instalación', 'instalacion', 2),
(3, 'este es una inyección ', 'informacionbasica', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

DROP TABLE IF EXISTS `seccion`;
CREATE TABLE IF NOT EXISTS `seccion` (
  `idsec` int(3) NOT NULL AUTO_INCREMENT,
  `seccion_nombre` varchar(100) NOT NULL,
  `seccion_url` varchar(100) NOT NULL,
  UNIQUE KEY `idsec` (`idsec`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idsec`, `seccion_nombre`, `seccion_url`) VALUES
(1, 'Información Básica', 'informacion-basica'),
(2, 'Instalación', 'instalacion'),
(3, 'Introducción', 'introduccion'),
(4, 'Tutorial', 'tutorial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenus`
--

DROP TABLE IF EXISTS `submenus`;
CREATE TABLE IF NOT EXISTS `submenus` (
  `idsub` int(5) NOT NULL AUTO_INCREMENT,
  `idmen` int(5) NOT NULL,
  `submenu_etiqueta` varchar(80) NOT NULL,
  `submenu_url` varchar(80) NOT NULL,
  `submenu_ord` tinyint(2) NOT NULL,
  PRIMARY KEY (`idsub`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `submenus`
--

INSERT INTO `submenus` (`idsub`, `idmen`, `submenu_etiqueta`, `submenu_url`, `submenu_ord`) VALUES
(1, 1, 'Bienvenido a polka', 'articulos/ver/BienvenidoaTaguaMD', 1),
(2, 1, 'Licencia', 'licencia', 2),
(3, 1, 'Créditos', 'creditos', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusu` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `edad` int(2) NOT NULL,
  `profesion` varchar(80) NOT NULL,
  PRIMARY KEY (`idusu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ejemplo para uso de Tagua MD' AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusu`, `nombre`, `edad`, `profesion`) VALUES
(1, 'Bart Simpson', 8, 'estudiante'),
(3, 'Lisa Simpson', 8, 'estudiante'),
(4, 'Abrahan Simpson', 86, 'jubilado'),
(5, 'Maggie Simpson', 2, 'bebe'),
(9, 'Homero Simpson', 42, 'Inspector de seguridad'),
(13, 'Marge Simpson <select', 38, 'Ama de casa'),
(15, 'Ricardo Rotela González', 30, 'Programador PHP Jr.'),
(16, 'Joe Black', 29, 'Programador'),
(17, 'Milhouse Vanhunter', 9, 'Nerd'),
(21, 'Barnee', 46, 'bebedor'),
(23, 'Mr. Burns', 86, 'Empresario'),
(25, 'Sasha Gray', 25, 'actriz'),
(26, 'Linus Troval', 56, 'Programador Junior');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
