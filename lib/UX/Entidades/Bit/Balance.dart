import 'dart:convert';

class Balance {
  String balance;
  Balance({
    required this.balance,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'balance': balance});

    return result;
  }

  factory Balance.fromMap(Map<String, dynamic> map) {
    return Balance(
      balance: map['balance'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Balance.fromJson(String source) =>
      Balance.fromMap(json.decode(source));
}
