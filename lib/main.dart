import 'package:flutter/material.dart';
import 'Foodmenu.dart' ;

void main() {
  runApp(LabelOrtext());
}

class LabelOrtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กะเพราไก่ไข่ดาว" , "50"),
    FoodMenu("ผัดพริกไก่ไข่ดาว" , "50"),
     FoodMenu("ส้มตำไทย" , "40"),
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("เมนูอาหารทั้งหมดที่ต้องการรับประทาน")),
      body: ListView.builder(
        itemCount: menu.length ,
        itemBuilder: (BuildContext context , int indexmenu) {
          FoodMenu foods = menu[indexmenu] ;
        return ListTile(title: Text("เมนูที่ ${indexmenu+1}"),subtitle: Text(foods.name+" ราคา "+ foods.price+" บาท"),
        );
      }));
  }

  void addNumber() {
    setState(() {
      counter++;
      if (counter >= 20) {
        counter = 0;
      }
    });
  }
}

List<Widget> getData(int number) {
  List<Widget> data = [];
  data.add(Image(
      image: NetworkImage(
          'https://png.pngtree.com/png-clipart/20190515/original/pngtree-vector-cartoon-illustration-of-a-traditional-set-of-fast-food-me-png-image_3565698.jpg')));

  data.add(Text(
    "WELCOME TO KEEARAIDIN",
    style: TextStyle(fontSize: 30),
  ));
  data.add(Text(
    "กินอะไรดี .....",
    style: TextStyle(fontSize: 30),
  ));
  data.add(Text(
    "สั่งอาหาร คลิกที่ปุ่มนี้",
    style: TextStyle(fontSize: 30),
  ));
  data.add(Text(
    "สั่งอาหารไปแล้วทั้งหมด $number ครั้ง ",
    style: TextStyle(fontSize: 30),
  ));
  for (int i = 0; i < number; i++) {
    var menu = ListTile(
      title: Text("เมนูที่ ${i + 1 }"),
      subtitle: Text("ชื่อเมนู : "),
    );
    data.add(menu);
  }
  return data;
}
