import 'dart:convert';

class Ubicacion {
  Ubicacion({
    required this.aula,
  });

  String aula;

  factory Ubicacion.fromRawJson(String str) => Ubicacion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ubicacion.fromJson(Map<String, dynamic> json) => Ubicacion(
    aula: json["aula"],
  );

  Map<String, dynamic> toJson() => {
    "aula": aula,
  };
}
