import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/widgets/element_produtcs_grid.dart';

class ProductsGrid extends StatelessWidget {
  final products;
  final Function update;

  ProductsGrid({
    this.products,
    this.update,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = Product.fromJson(products[index]);

        return ElementoProductsGrid(
          product: product,
          update: update,
        );
      },
    );
  }
}
