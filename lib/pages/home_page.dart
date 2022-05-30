import 'package:firstapp/modules/catalog.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.products =
        List.from(productData).map<Item>((e) => Item.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.00),
        child: (CatalogModel.products.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItmeWidgets(
                    item: CatalogModel.products[index],
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
