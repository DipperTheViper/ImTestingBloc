// To parse this JSON data, do
//
//     final bsTest = bsTestFromJson(jsonString);

// import 'package:meta/meta.dart';

import 'dart:convert';

class BsTest {
  BsTest({
    required this.id,
    required this.name,
    required this.bla,
  });

  int id;
  String name;
  String bla;

  factory BsTest.fromRawJson(String str) => BsTest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BsTest.fromJson(Map<String, dynamic> json) => BsTest(
        id: json["id"],
        name: json["name"],
        bla: json["bla"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "bla": bla,
      };
}
