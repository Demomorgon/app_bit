import 'dart:convert';

class Cuentas {
  Map<String, List<String>?> jugadores;
  Cuentas({
    required this.jugadores,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'jugadores': jugadores});

    return result;
  }

  factory Cuentas.fromMap(Map<String, dynamic> map) {
    var a = map['jugadores'] as Map<String, List<String>?>;

    Map<String, List<String>> b = {};
    b.putIfAbsent('jugadores', a['jugadores'] as List<String> Function());
    return Cuentas(
      jugadores: b,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cuentas.fromJson(String source) =>
      Cuentas.fromMap(json.decode(source));
}
