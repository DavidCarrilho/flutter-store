import 'package:flutter/material.dart';

class TextCardDetails extends StatelessWidget {
  final String texto;
  final TextStyle estilo;

  TextCardDetails({this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: _styleText(texto),
    );
  }

  _styleText(texto) {
    if (estilo == null) {
      return Text(texto);
    }
    return Text(texto, style: estilo);
  }
}
