import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/pages/details_page.dart';
import 'package:flutterstore/src/widgets/gradient_element_grid_produtcs.dart';
import 'package:flutterstore/src/widgets/image_element_grid_produtcs.dart';
import 'package:flutterstore/src/widgets/title_element_grid_produtcs.dart';

class ElementoProductsGrid extends StatefulWidget {
  final Product product;
  final Function update;

  ElementoProductsGrid({
    this.product,
    this.update,
  });

  @override
  _ElementoProductsGridState createState() => _ElementoProductsGridState();
}

class _ElementoProductsGridState extends State<ElementoProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(product: widget.product),
          ),
        ).then(
          (value) => widget.update(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ImageElementProductsGrid(image: widget.product.picture),
              GradientElementProductsGrid(),
              TitleElementoProductsGrid(title: widget.product.title)
            ],
          ),
        ),
      ),
    );
  }
}
