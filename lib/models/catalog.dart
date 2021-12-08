class CatalogModel {
  static final items = [
Item(
      id: "maskey001",
      name: "iPhone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 1299,
      color: "#33505a",
      image:
          "https://www.apple.com/newsroom/images/product/availability/Apple_iphone12mini-iphone12max-homepodmini-availability_iphone12promax-us_110520_inline.jpg.large.jpg")

  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  
];