class CatalogModel {
  static List<Item> products = [
    Item(
        id: 0,
        name: "Iphone xr",
        desc: "Apple iphone next generation feel",
        price: 999,
        color: "#33505a",
        imageurl: "https://i.postimg.cc/j2DqxW4S/iphone-13-pro-family-hero.png")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageurl});

  factory Item.fromMap(Map<String, dynamic> map) {

    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      imageurl: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageurl": imageurl,
      };
}
