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

  factory Despiste.fromRawJson(String str) =>
      Despiste.fromJson(json.decode(str));

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

final List<Despiste> demoDespistes = [
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 1, seconds: 57))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 1, minutes: 48, seconds: 22))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[1]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 1, hours: 2, minutes: 6, seconds: 11))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[1]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 1, hours: 1, minutes: 12, seconds: 33))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 1, minutes: 19, seconds: 15))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[6]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 1, minutes: 9, seconds: 50))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[6]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 1, minutes: 48, seconds: 48))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 2, minutes: 6, seconds: 11))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 2, minutes: 20, seconds: 19))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[1]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 2, minutes: 48, seconds: 26))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
  Despiste(
      timestamp: DateTime.fromMillisecondsSinceEpoch(1638439200000)
          .subtract(const Duration(days: 2, hours: 2, minutes: 56, seconds: 11))
          .millisecondsSinceEpoch,
      dispositivo: "dispositivo",
      clase: demoClases[0]),
];
