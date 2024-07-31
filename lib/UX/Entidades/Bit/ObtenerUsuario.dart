import 'dart:convert';

class ObtenerUsuario {
  String name;
  String document;
  String aliasx;
  String error;
  ObtenerUsuario(
      {required this.name,
      required this.document,
      required this.aliasx,
      required this.error});

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'document': document});
    result.addAll({'aliasx': aliasx});

    return result;
  }

  factory ObtenerUsuario.fromMap(Map<String, dynamic> map) {
    return ObtenerUsuario(
        name: map['name'] ?? '',
        document: map['document'] ?? '',
        aliasx: map['aliasx'] ?? '',
        error: map['error'] ?? '-1');
  }

  String toJson() => json.encode(toMap());

  factory ObtenerUsuario.fromJson(String source) =>
      ObtenerUsuario.fromMap(json.decode(source));
}
