import 'package:flutter/material.dart';
import 'package:flutterstore/src/pages/home_page.dart';
import 'package:flutterstore/src/widgets/index_buttom_cart.dart';

class ButtomCart extends StatefulWidget {
  @override
  _ButtomCartState createState() => _ButtomCartState();
}

class _ButtomCartState extends State<ButtomCart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cart')
            .then((value) => setState(() {}));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: 30, left: 20),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            topLeft: Radius.circular(100),
          ),
        ),
        child: _visibilityIndexcadorCart(),
      ),
    );
  }

  Widget _visibilityIndexcadorCart() {
    if (HomePage.itensCarrinho.length > 0) {
      return Stack(children: [
        Image(
            height: 30,
            image: AssetImage('utilities/assets/icones/cart.png')),
        IndexButtomCart()
      ]);
    }
    return Image(
        height: 30, image: AssetImage('utilities/assets/icones/cart.png'));
  }
}
