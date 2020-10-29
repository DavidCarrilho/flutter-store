import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/widgets/custom_appbar.dart';
import 'package:flutterstore/src/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Product product;

  Detalhes({
    this.product,
  });

  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'utilities/assets/images/${widget.product.picture}'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          titulo: '',
          isCartPage: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 205,
            margin: EdgeInsets.all(10),
            child: CardDetails(
              product: widget.product,
              updatePagina: update,
            ),
          ),
        ),
      ),
    );
  }

  void update() {
    setState(() {});
  }
}
