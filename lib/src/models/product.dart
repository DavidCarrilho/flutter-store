class Product {
  String title;
  String picture;
  String description;
  int price;

  Product({
    this.title,
    this.picture,
    this.description,
    this.price,
  });

  Product.fromJson(Map<String, dynamic> json) {
    title = json['titulo'];
    picture = json['foto'];
    description = json['descricao'];
    price = json['preco'];
  }
}
