import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/cart_item.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/pages/home_page.dart';
import 'package:flutterstore/src/widgets/text_card_details.dart';
import 'package:intl/intl.dart';

class CardDetails extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

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
              texto: product.title,
              estilo: Theme.of(context).textTheme.headline1),
          TextCardDetails(texto: product.description),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  formatacaoReais.format(product.price),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _verificarListaItemCarrinho(
                      HomePage.itensCarrinho,
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

  void _adicionarItemCarrinho(CartItem item) {
    HomePage.itensCarrinho.add(item);
    updatePagina();
  }

  void _verificarListaItemCarrinho(
      List<CartItem> lista, CartItem item) {
    int indiceProduct = lista.indexWhere((item) => item.product == product);

    if (indiceProduct >= 0) {
      lista[indiceProduct].quatity = lista[indiceProduct].quatity + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
