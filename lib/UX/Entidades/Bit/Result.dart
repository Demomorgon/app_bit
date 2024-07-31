import 'dart:convert';

class Result {
  String result;
  Result({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'result': result});

    return result;
  }

  factory Result.fromMap(Map<String, dynamic> map) {
    return Result(
      result: map['result'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Result.fromJson(String source) => Result.fromMap(json.decode(source));
}
