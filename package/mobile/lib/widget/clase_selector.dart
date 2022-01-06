import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/clase.dart';

class ClaseSelector extends StatefulWidget {
  const ClaseSelector({required Key key}) : super(key: key);

  @override
  ClaseSelectorState createState() => ClaseSelectorState();
}

class ClaseSelectorState extends State<ClaseSelector> {
  Clase? clase;

  @override
  Widget build(BuildContext context) {
    return FormField<Clase>(
      builder: (FormFieldState<Clase> state) {
        return InputDecorator(
          decoration: InputDecoration(
              // labelStyle: textStyle,
              errorStyle:
                  const TextStyle(color: Colors.redAccent, fontSize: 16.0),
              hintText: 'Selecciona una clase',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0))),
          isEmpty: clase == null,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<Clase>(
              // isExpanded: true,
              value: clase,
              isDense: true,
              onChanged: (Clase? newValue) {
                setState(() {
                  clase = newValue;
                  state.didChange(newValue);
                });
              },
              items: demoClases.map((Clase value) {
                return DropdownMenuItem<Clase>(
                  value: value,
                  child: Text(value.toString(), overflow: TextOverflow.fade,softWrap: false,),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
