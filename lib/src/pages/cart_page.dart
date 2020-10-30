import 'package:flutter/material.dart';
import 'package:flutterstore/src/widgets/cart_list.dart';
import 'package:intl/intl.dart';
import './home_page.dart';
import 'package:flutterstore/src/widgets/custom_appbar.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final formatReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int _valueTotal = _calcTotal();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        titulo: 'Carrinho',
        isCartPage: true,
      ),
      body: ListCart(update: update),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: Theme.of(context).textTheme.headline4),
            Text(
              formatReais.format(_valueTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }

  void update() {
    setState(() {});
  }

  int _calcTotal() {
    if (HomePage.cartItems.isNotEmpty) {
      return HomePage.cartItems
          .map((item) => item.product.price * item.quatity)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }

    return 0;
  }

  Widget _buildScreen() {
    if (HomePage.cartItems.isNotEmpty) {
      return ListCart(
        update: update,
      );
    } else {
      return Container(
        alignment: Alignment.center,
        height: double.infinity,
        child: Text('Nenhum item no carrinho'),
      );
    }
  }
}
