import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/cart_item.dart';
import 'package:flutterstore/src/models/product.dart';
import 'package:flutterstore/src/pages/home_page.dart';
import 'package:intl/intl.dart';

class ListCart extends StatefulWidget {
  final Function update;

  ListCart({
    this.update,
  });

  @override
  _ListCartState createState() => _ListCartState();
}

class _ListCartState extends State<ListCart> {
  final List<CartItem> cart = HomePage.itensCarrinho;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (BuildContext context, int indice) {
        CartItem item = cart[indice];
        Product product = item.product;

        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(
                        'utilities/assets/images/${product.picture}'),
                    height: 92,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 92,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title,
                            style: Theme.of(context).textTheme.headline3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatacaoReais.format(product.price)),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _upQuantity(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.add, size: 14),
                                  ),
                                ),
                                Text('${item.quatity}'),
                                GestureDetector(
                                  onTap: () => _downQuantity(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.remove, size: 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _upQuantity(CartItem item) {
    setState(() {
      item.quatity++;
      widget.update();
    });
  }

  void _downQuantity(CartItem item) {
    if (item.quatity > 1) {
      setState(() {
        item.quatity--;
        widget.update();
      });
    } else {
      _removerproduct(item);
    }
  }

  void _removerproduct(CartItem item) {
    setState(() {
      HomePage.itensCarrinho.remove(item);
      widget.update();
    });
  }
}
