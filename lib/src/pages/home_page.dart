import 'package:flutter/material.dart';
import 'package:flutterstore/src/models/cart_item.dart';
import 'package:flutterstore/src/widgets/custom_appbar.dart';
import 'package:flutterstore/src/widgets/products_grid.dart';

class HomePage extends StatefulWidget {
  static List<CartItem> cartItems = List();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List products = [
    {
      "titulo": "Mochila",
      "preco": 300,
      "foto": "product1.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Tablet",
      "preco": 120,
      "foto": "product2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 200,
      "foto": "product3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Notebook",
      "preco": 800,
      "foto": "product4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Fones",
      "preco": 400,
      "foto": "product5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Notebook",
      "preco": 250,
      "foto": "product6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cama",
      "preco": 900,
      "foto": "product7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        titulo: 'Flutter Store',
        isCartPage: false,
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Divider(),
                ),
              ),
              Text(
                'Produtos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 30, top: 10, bottom: 10),
                      child: Divider()))
            ],
          ),
          Flexible(
            child: ProductsGrid(
              update: update,
              products: products,
            ),
          )
        ],
      ),
    );
  }

  void update() {
    setState(() {});
  }
}
