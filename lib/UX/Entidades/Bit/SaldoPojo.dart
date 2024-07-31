import 'dart:convert';

class SaldoPojo {
  String saldo;
  SaldoPojo({
    required this.saldo,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'saldo': saldo});

    return result;
  }

  factory SaldoPojo.fromMap(Map<String, dynamic> map) {
    return SaldoPojo(
      saldo: map['saldo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SaldoPojo.fromJson(String source) =>
      SaldoPojo.fromMap(json.decode(source));
}
