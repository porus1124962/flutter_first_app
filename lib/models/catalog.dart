

class CatalogModel{
  static List<Item> items =[
  ];
  //get Item by ID
  Item getById(int id) => 
      items.firstWhere((element) => element.id == id , orElse:null);
  //get Item by position
  Item getByPosition(int pos) => items[pos];
}
class Item{
  final int id;
  final String name;
  final String desc;
  final String color;
  final String image;
  final num price;

  Item({required this.id, required this.name, required this.desc, required this.color, required this.image, required this.price});

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      color: map["color"],
      image: map["image"],
      price: map["price"],
    );
  }
  toMap() => {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "color" : color,
    "image" : image,
    "price" : price,
  };
}
