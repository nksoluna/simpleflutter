import 'package:flutter/material.dart';
//import 'Foodmenu.dart';
import 'MoneyBox.dart';
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
  int number = 0 ;
   @override

  void initState() {
  super.initState();
  print("Test");
  }
  /*List<FoodMenu> menu = [
    FoodMenu("กะเพราไก่ไข่ดาว", "50", "assets/image/krapow.jpg"),
    FoodMenu("ผัดพริกไก่ไข่ดาว", "50", "assets/image/padprick.jpg"),
    FoodMenu("ส้มตำไทย", "40", "assets/image/papayasalad.jpg"),
    FoodMenu("ผัดไทย", "45", "assets/image/padthai.jpg")
  ];
  int counter = 0;
*/
 
  @override
  Widget build(BuildContext context) {
    print("Run build");
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "บัญชีของฉัน",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10,10,10, 0), // space from top and side
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ",15000 , Colors.orange, 150) ,
              SizedBox(height : 10) ,
              MoneyBox("รายรับ", 25000, Colors.greenAccent[400] , 120) ,
              SizedBox(height : 10) ,
              MoneyBox("รายจ่าย", 10000, Colors.redAccent[700] , 120) ,
              SizedBox(height : 10) ,
              MoneyBox("ค้างชำระ", 0, Colors.deepOrangeAccent[400] , 120),
              SizedBox(height : 10) ,
              Text(number.toString(),style:TextStyle(fontSize : 30) , ) 
             
            ],
          ), 
            
        ),
        floatingActionButton : FloatingActionButton(onPressed: () {
              setState(() {
                number++ ;
              });
            },
            child : Icon(Icons.add),));
  }

  /*void addNumber() {
    setState(() {
      counter++;
      if (counter >= 20) {
        counter = 0;
      }
    });
  }*/
}



//Increasement of data and counter 
/*List<Widget> getData(int number) {
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
      title: Text("เมนูที่ ${i + 1}"),
      subtitle: Text("ชื่อเมนู : "),
    );
    data.add(menu);
  }
  return data;
}
*/