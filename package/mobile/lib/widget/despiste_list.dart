import 'package:flutter/material.dart';
import 'package:mobile/model/despiste.dart';

class DespisteList extends StatefulWidget {
  const DespisteList({Key? key}) : super(key: key);

  @override
  _DespisteListState createState() => _DespisteListState();
}

class _DespisteListState extends State<DespisteList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoDespistes.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(demoDespistes[index].toString()),
      ),
    );
  }
}
