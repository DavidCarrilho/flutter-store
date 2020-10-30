import 'package:flutter/material.dart';

class TextCardDetails extends StatelessWidget {
  final String text;
  final TextStyle style;

  TextCardDetails({this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: _styleText(text),
    );
  }

  _styleText(text) {
    if (style == null) {
      return Text(text);
    }
    return Text(text, style: style);
  }
}
