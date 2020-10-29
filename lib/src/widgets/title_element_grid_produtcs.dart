import 'package:flutter/material.dart';

class TitleElementoProductsGrid extends StatelessWidget {
  final String title;

  TitleElementoProductsGrid({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
