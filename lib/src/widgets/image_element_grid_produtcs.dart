import 'package:flutter/material.dart';

class ImageElementProductsGrid extends StatelessWidget {
  final String image;

  ImageElementProductsGrid({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('utilities/assets/images/$image'),
      ),
    );
  }
}
