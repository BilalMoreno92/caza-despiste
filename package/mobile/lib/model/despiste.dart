import 'dart:convert';

import 'clase.dart';

class Despiste {
  Despiste({
    required this.timestamp,
    required this.dispositivo,
    required this.clase,
  });

  int timestamp;
  String dispositivo;
  Clase clase;

  factory Despiste.fromRawJson(String str) => Despiste.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Despiste.fromJson(Map<String, dynamic> json) => Despiste(
    timestamp: json["timestamp"],
    dispositivo: json["dispositivo"],
    clase: Clase.fromJson(json["clase"]),
  );

  Map<String, dynamic> toJson() => {
    "timestamp": timestamp,
    "dispositivo": dispositivo,
    "clase": clase.toJson(),
  };
}