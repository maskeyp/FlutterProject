// ignore_for_file: unnecessary_null_comparison
import 'package:learning_flutter/widgets/home_widgets/catalog_header.dart';
import 'package:learning_flutter/widgets/home_widgets/catalog_list.dart';
import 'package:learning_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:learning_flutter/models/catalog.dart';
import 'package:learning_flutter/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:learning_flutter/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Maskey";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: MyTheme.creamColor,
        body: SafeArea(
      child: Container(
        padding: Vx.m24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
              CatalogList().py12().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ],
        ),
      ),
    ));
  }
}
