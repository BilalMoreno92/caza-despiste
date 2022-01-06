import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/clase.dart';
import 'package:mobile/model/despiste.dart';
import 'package:mobile/model/ubicacion.dart';
import 'package:mobile/widget/clase_selector.dart';
import 'package:mobile/widget/despiste_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ClaseSelectorState> claseKey =
      GlobalKey<ClaseSelectorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despistes"),
      ),
      body: Column(
        children: [
          Flexible(flex: 1,child: const DespisteList()),
          Container(height: 96, width: double.maxFinite, color: Colors.black12)
        ],
      ),
      floatingActionButton: Row(children: [
        Flexible(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ClaseSelector(key: claseKey))),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {
            if (claseKey.currentState?.clase != null)
              {
                demoDespistes.add(Despiste(
                    timestamp: DateTime.now().millisecondsSinceEpoch,
                    dispositivo: "dispositivo",
                    clase: claseKey.currentState?.clase ??
                        Clase(asignatura: "", ubicacion: Ubicacion(aula: ""))))
              }
            else
              {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text("Indica una clase"),
                          content: const Text(
                              "Para registrar un despiste debes indicar en qué clase te encuentras."),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Ok"))
                          ],
                        ))
              }
          },
        )
      ]),
    );
  }
}
