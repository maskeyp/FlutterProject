import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:learning_flutter/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.semiBold.xl4.green800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Buy".text.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4.bold.make(),
                    catalog.desc.text.xl.caption(context).make(),
                  ]).py64()),
            ))
          ],
        ),
      ),
    );
  }
}
