// To parse this JSON data, do
//
//     final ayatData = ayatDataFromJson(jsonString);

import 'dart:convert';

List<AyatData> ayatDataFromJson(String str) =>
    List<AyatData>.from(json.decode(str).map((x) => AyatData.fromJson(x)));

String ayatDataToJson(List<AyatData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AyatData {
  AyatData({
    this.ar,
    this.id,
    this.nomor,
    this.tr,
  });

  String ar;
  String id;
  String nomor;
  String tr;

  factory AyatData.fromJson(Map<String, dynamic> json) => AyatData(
        ar: json["ar"],
        id: json["id"],
        nomor: json["nomor"],
        tr: json["tr"],
      );

  Map<String, dynamic> toJson() => {
        "ar": ar,
        "id": id,
        "nomor": nomor,
        "tr": tr,
      };
}
