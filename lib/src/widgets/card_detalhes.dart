import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/cart_item.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/pages/home_page.dart';
import 'package:flutterstore/src/widgets/text_card_details.dart';
import 'package:intl/intl.dart';

class CardDetails extends StatelessWidget {
  final formatReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Product product;
  final Function updatePagina;

  CardDetails({this.product, this.updatePagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextCardDetails(
              text: product.title,
              style: Theme.of(context).textTheme.headline1),
          TextCardDetails(text: product.description),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  formatReais.format(product.price),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _verifyListItemCart(
                      HomePage.cartItems,
                      CartItem(product: product, quatity: 1),
                    );
                  },
                  child: Text('Comprar', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _addCartItem(CartItem item) {
    HomePage.cartItems.add(item);
    updatePagina();
  }

  void _verifyListItemCart(
      List<CartItem> list, CartItem item) {
    int indexProduct = list.indexWhere((item) => item.product == product);

    if (indexProduct >= 0) {
      list[indexProduct].quatity = list[indexProduct].quatity + 1;
    } else {
      _addCartItem(item);
    }
  }
}
