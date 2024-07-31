import 'dart:convert';

import 'package:flutter/material.dart';

class CargarSaldo {
  String account;
  TextEditingController amount;
  CargarSaldo({
    required this.account,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'account': account});
    result.addAll({'amount': amount.text});

    return result;
  }

  factory CargarSaldo.fromMap(Map<String, dynamic> map) {
    return CargarSaldo(
      account: map['account'] ?? '',
      amount: TextEditingController(text: map['amount'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory CargarSaldo.fromJson(String source) =>
      CargarSaldo.fromMap(json.decode(source));
}
