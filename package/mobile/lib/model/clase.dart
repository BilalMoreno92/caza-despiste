import 'dart:convert';

import 'package:mobile/model/ubicacion.dart';

class Clase {
  Clase({
    this.timestamp,
    required this.asignatura,
    required this.ubicacion,
  });

  int? timestamp;
  String asignatura;
  Ubicacion ubicacion;

  factory Clase.fromRawJson(String str) => Clase.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Clase.fromJson(Map<String, dynamic> json) => Clase(
        timestamp: json["timestamp"],
        ubicacion: Ubicacion.fromJson(json["ubicacion"]),
        asignatura: json["asignatura"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "ubicacion": ubicacion.toJson(),
      };
}

final List<Clase> demoClases = [
  Clase(ubicacion: demoUbicaciones[0], asignatura: 'Química'),
  Clase(ubicacion: demoUbicaciones[0], asignatura: 'Física'),
  Clase(ubicacion: demoUbicaciones[0], asignatura: 'Química avanzada'),
  Clase(ubicacion: demoUbicaciones[1], asignatura: 'Física'),
  Clase(ubicacion: demoUbicaciones[1], asignatura: 'Química avanzada'),
  Clase(ubicacion: demoUbicaciones[1], asignatura: 'Química'),
  Clase(ubicacion: demoUbicaciones[2], asignatura: 'Matemáticas'),
  Clase(ubicacion: demoUbicaciones[2], asignatura: 'Física avanzada'),
  Clase(ubicacion: demoUbicaciones[3], asignatura: 'Matemáticas'),
  Clase(ubicacion: demoUbicaciones[3], asignatura: 'Física avanzada'),
];
