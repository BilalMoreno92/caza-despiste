import 'dart:convert';

import 'package:mobile/model/ubicacion.dart';

class Clase {
  Clase({
    required this.timestamp,
    required this.ubicacion,
  });

  int timestamp;
  Ubicacion ubicacion;

  factory Clase.fromRawJson(String str) => Clase.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Clase.fromJson(Map<String, dynamic> json) => Clase(
    timestamp: json["timestamp"],
    ubicacion: Ubicacion.fromJson(json["ubicacion"]),
  );

  Map<String, dynamic> toJson() => {
    "timestamp": timestamp,
    "ubicacion": ubicacion.toJson(),
  };
}