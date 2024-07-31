import 'dart:convert';

import 'package:flutter/material.dart';

class Usuario {
  TextEditingController name;
  TextEditingController alias;
  TextEditingController document;
  Usuario({
    required this.name,
    required this.alias,
    required this.document,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name.text});
    result.addAll({'alias': alias.text});
    result.addAll({'document': document.text});

    return result;
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      name: TextEditingController(text: map['name'] ?? ''),
      alias: TextEditingController(text: map['alias'] ?? ''),
      document: TextEditingController(text: map['document'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source));
}
