// ignore_for_file: file_names

import '../Procesos/UtilDate.dart';

const String ipSai = 'http://10.3.11.129:8080';
const String ipSiabs = '10.3.11.114';
const String ipMvdi = 'http://10.3.11.129:8080/bcb-mvdi-rest/rest/';

// const String ipMoneda = 'http://192.168.96.111:3000/';
// const String ipMoneda = 'http://192.168.96.3:3000/';

const String urlBaseSai = '$ipSai/bcb-sai-rest/rest/';
const String urlBaseMvdi = ipMvdi;
//PRODUCCION
const String urlExterno =
    'https://canalexterno.bcb.gob.bo/bcb-canalext-be-rest/';

//VALIDACION
// const String urlExterno =
//     'https://canalexterno.pruebas.bcb.gob.bo/bcb-canalext-be-rest/';

// DESARROLLO
// const String urlExterno = 'http://10.3.11.129:8080/bcb-canalext-be-rest/';
//const String urlExterno ='http://10.3.11.183:8090/bcb-canalext-be-rest/';
// const String urlExterno = 'http://10.3.11.129:8080/bcb-canalext-be-rest/';

const String cveEstaFis = 'CVE_ESTA_FIS';
const String cveVerificado = 'CVE_VERIFICADO';

const String aplicacion = 'SEOMA_MVDI';
const String aplicacionMobil = 'app';
const String apiKey =
    'E3Ile_V3tw9xTFjxJ0jPsgtf9x7KQzz8fj3CHYFrDMJGPQcrbbYFcD0_wjBXmcK7wJYtaqiGjGNLfth0j3VLrw';
// const String apiKey =
//     'XHbIVdeIiG2ed9zsobVn8Q7WPtkj-yCAlN73505GsDC88rujxH8QWnscqz01c7NHFL8PguFgc1S7VZoaqNiaXd';
const bool usuarioInterno = false;
const bool ldap = false;
const bool datosAdicionales = true;

const String cveVigenteConst = 'V';

const String usuarioPermitido1 = 'SEOMA_MVDI_TITULAR';
// const String usuarioPermitido2 = 'OPERADOR_ACT';

const String tutorialLogin = 'tutorialLogin';
const String tutorialLecturaQr = 'tutorialLecturaQr';
const String tutorialDetalleItem = 'tutorialDetalleItem';
const String tutorialSinLectura = 'tutorialSinLectura';
const String tutorialEliminarDB = 'tutorialEliminarDB';

const String tema = 'tema';

const String usuario = 'usuario2';
const String token = 'token';
const String llave = 'llave';
const String modelo = 'modelo';

// const String llave = 'llave';
const String mobil = 'mobil';
const String imei = 'imei';
const String mac = 'mac';
const String wifiInfo = 'wifiInfo';
const String urlBase = 'urlBase';

// lista valores
List<String> listValorDominio = [
  'cve_lugar_emision',
  'cve_estado_civil',
  'cve_actividad_economica_uif',
  'cve_tipo_cuenta',
  'cve_genero',
  'cve_pais_uif',
  // 'cve_tipo_pago_vencim',
  'cve_genero',
  'cve_tipo_pago_vencim_movil'
];
// const String cveTipoPago = 'cve_tipo_pago_vencim';
const String cvePaisUif = 'cve_pais_uif';
const String cveLugarEmision = 'cve_lugar_emision';
const String cveEstadoCivil = 'cve_estado_civil';
const String cveActividadEconofimaUif = 'cve_actividad_economica_uif';
const String cveTipoCuenta = 'cve_tipo_cuenta';
const String cveGenero = 'cve_genero';
const String cveTipoPagoVencimMovil = 'cve_tipo_pago_vencim_movil';

//cod monedas
const String codDolar = '34';
const String codBoliviano = '69';

//cod tipo oferta
const String codRemesa = 'R';
const String cveEstadoCilvilCasado = 'csd';
const String sinDato = 'S/N';

//extenciones
const String png = 'PNG';
const String pdf = 'PDF';
const String xlsx = 'XLSX';

//segmentos
const String baseSai = 'sai.base.url';
const String baseMVDI = 'seoma.mvdi.base.url';
const String tipoHttpPost = 'POST';
const String tipoHttpGet = 'GET';

//servicios

const String urlValorDominio = 'claves/get-map-valores-dominio';
const String urlOcupacion = 'claves/get-ocupacion';
const String urlOfertaDisponible = 'externo/ofertaDisponible';
const String urlDiaAbierto = 'externo/dia-abierto';
// const String urlDatosTitular = 'externo/datos-titular';
const String urlDatosTitular = 'externo/datosTitular';
Map<String, dynamic> urlDatosTitularPatametro(String email) => {'email': email};

const String urlCantidadValoresVigentes = 'externo/cantidad-valores-vigentes';
Map<String, dynamic> urlCantidadValoresVigentesParametros(
        String diaAbierto,
        String nroDocumento,
        String complemento,
        String codMoneda,
        String codOperacion,
        String tipo) =>
    {
      'diaAbierto': diaAbierto,
      'nroDocumento': nroDocumento,
      if (complemento != '') 'complemento': complemento,
      'codMoneda': codMoneda,
      'codOperacion': codOperacion,
      'tipo': tipo
    };
// complemento == ''
//     ? 'externo/cantidad-valores-vigentes?diaAbierto=$diaAbierto&nroDocumento=$nroDocumento&complemento&codMoneda=$codMoneda&codOperacion=$codOperacion&tipo=$tipo'
//     : 'externo/cantidad-valores-vigentes?diaAbierto=$diaAbierto&nroDocumento=$nroDocumento&complemento=$complemento&codMoneda=$codMoneda&codOperacion=$codOperacion&tipo=$tipo';

const String urlOfertasVigente = 'externo/ofertaVigentes';

const String urlCotizaciones = 'externo/cotizacion-moneda';

Map<String, dynamic> urlOfertasVigenteParametros(
        String diaAbierto, String codTipoOferta) =>
    {'diaAbierto': diaAbierto, 'codTipoOferta': codTipoOferta};
// 'externo/ofertaVigentes?diaAbierto=$diaAbierto&codTipoOferta=$codTipoOferta';
const String urlPersonas = 'parametro/get-personas';
const String urlBancos = 'parametro/get-personas';
const String urlRegistrarColocacion = 'externo/registrar-colocacion';
const String urlRegistrarTitular = 'externo/registrar-titular';

const String urlDetalleColocacion = 'externo/bonos-titular';
Map<String, dynamic> urlDetalleColocacionPatametros(
        String nroDocumento, String complemento, dynamic lista) =>
    {
      'nroDocumento': nroDocumento,
      if (complemento != '') 'complemento': complemento,
      'estadoList': lista
    };

const String urlBonos = 'externo/bonos-titular-basico';
Map<String, dynamic> urlDetalleBonos(String nroDocumento, String complemento) =>
    {
      'nroDocumento': nroDocumento,
      if (complemento != '') 'complemento': complemento
    };
const String urlBonosTotal = 'externo/bonos-titular-total';

const String urlQrColocacion = 'externo/qr-colocacion';
Map<String, dynamic> urlQrColocacionParametro(int colocacion, bool postura) =>
    postura
        ? {'idPostura': colocacion.toString()}
        : {'nroColocacion': colocacion.toString()};

const String urlReporteColocacion = 'externo/reporte-colocacion';

// complemento == ''
//     ? 'externo/bonos-titular?nroDocumento=$nroDocumento&complemento=$complemento'
//     : 'externo/bonos-titular?nroDocumento=$nroDocumento&complemento=';
const String urlCalculoOfertas = 'externo/calculo-ofertas';
Map<String, dynamic> urlCalculoOfertasParametros(
        {required DateTime fechaEmis,
        required String codTipoOferta,
        required int cantidad,
        int? diasPlazo}) =>
    {
      'fechaEmis': UtilDate.formatoFechaHora(fechaEmis),
      'codTipoOferta': codTipoOferta,
      'cantidad': cantidad.toString(),
      if (diasPlazo != null && diasPlazo > 0) 'diasPlazo': diasPlazo.toString()
    };
const String urlValidacionSistema = 'externo/validacion-sistema';
Map<String, dynamic> urlValidacionSistemaParametro(String vrSistema) =>
    {'vrSistema': vrSistema};
const String urlSdi = 'sdi';
Map<String, dynamic> urlSdiParametros(String vrSistema) =>
    {'vrSistema': vrSistema};

//sai
const String urlActualizarContrasenia =
    'contrasenia/actualizar-contrasenia-movil';
const String urlObtenerTokenMovil = 'auth/obtenerTokenMovil';
const String urlGetDatosUsuario = 'usuario/get-datos-usuario';
const String urlGenerarCodigo = 'usuario/generar-codigo';
const String urlRestablecerContrasena = 'usuario/restablecer-contrasenia-movil';
const String urlActualizarTitular = 'externo/actualizar-titular';

Map<String, dynamic> urlGetDatosUsuarioParametros(String login) => {
      'login': login,
      'aplicacion': aplicacion,
      'usuarioInterno': usuarioInterno,
      'datosAdicionales': datosAdicionales
    };

//version de aplicacion
const String urlVersion = 'canalexterno/canalext/version';
Map<String, dynamic> urlVersionParametro(String v) => {'v': v};
