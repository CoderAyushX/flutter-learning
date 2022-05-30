import 'package:flutter/material.dart';

import '../modules/catalog.dart';

class ItmeWidgets extends StatelessWidget {
  final Item item;
  const ItmeWidgets({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .8,
      child: ListTile(
        leading: Image.network(item.imageurl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style:
              const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
