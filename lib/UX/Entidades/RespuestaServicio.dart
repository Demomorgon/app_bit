// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
class RespuestaServicio {
  String body;
  bool servicio;
  int status;
  RespuestaServicio({
    required this.body,
    required this.servicio,
    required this.status,
  });

  @override
  String toString() =>
      'RespuestaServicio(body: $body, servicio: $servicio, status: $status)';
}
