import 'dart:convert';

class Cuenta {
  String cuenta;
  Cuenta({
    required this.cuenta,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'cuenta': cuenta});

    return result;
  }

  factory Cuenta.fromMap(Map<String, dynamic> map) {
    return Cuenta(
      cuenta: map['cuenta'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cuenta.fromJson(String source) => Cuenta.fromMap(json.decode(source));
}
