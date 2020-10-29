import 'package:flutter/material.dart';
import 'package:flutterstore/src/widgets/cart_buttom.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool isCartPage;

  CustomAppBar({
    this.titulo,
    this.isCartPage,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo, style: TextStyle(color: Colors.black)),
      titleSpacing: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        _changeCartPage(isCartPage),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _changeCartPage(bool isCartPage) {
    if (isCartPage) return Container();
    return ButtomCart();
  }
}
