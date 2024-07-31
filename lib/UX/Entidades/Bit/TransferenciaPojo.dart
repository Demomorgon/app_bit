import 'dart:convert';

import 'package:flutter/material.dart';

class TranferenciaPojo {
  String from;
  TextEditingController to;
  TextEditingController amount;
  TranferenciaPojo({
    required this.from,
    required this.to,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'from': from});
    result.addAll({'to': to.text});
    result.addAll({'amount': amount.text});

    return result;
  }

  factory TranferenciaPojo.fromMap(Map<String, dynamic> map) {
    return TranferenciaPojo(
      from: map['from'] ?? '',
      to: TextEditingController(text: map['to'] ?? ''),
      amount: TextEditingController(text: map['amount'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory TranferenciaPojo.fromJson(String source) =>
      TranferenciaPojo.fromMap(json.decode(source));
}
