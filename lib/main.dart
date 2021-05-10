import 'package:flutter/material.dart';
import 'Foodmenu.dart';

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
    FoodMenu("กะเพราไก่ไข่ดาว", "50", "assets/image/krapow.jpg"),
    FoodMenu("ผัดพริกไก่ไข่ดาว", "50", "assets/image/padprick.jpg"),
    FoodMenu("ส้มตำไทย", "40", "assets/image/papayasalad.jpg"),
    FoodMenu("ผัดไทย", "45", "assets/image/padthai.jpg")
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
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
              Container(
                  padding: const EdgeInsets.all(40.0), // you can use s
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "ยอดคงเหลือ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          " 15000 บาท",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign
                              .right, // outside style and for aligning text
                        ),
                      )
                    ],
                  )),
                  SizedBox(height: 10),
                 Container(
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent[400],
                        borderRadius: BorderRadius.circular(10)),
                    height: 120,
                    child: Row(
                      children: [
                        Text(
                          "รายรับ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            " 25000 บาท",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    )),
              
            SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                        color: Colors.redAccent[700],
                        borderRadius: BorderRadius.circular(10)),
                    height: 120,
                    child: Row(
                      children: [
                        Text(
                          "ค้างชำระ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            " 0 บาท",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    )),
              SizedBox(height: 10), //define transparent box to cut space from container
                Container(
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent[400],
                        borderRadius: BorderRadius.circular(10)),
                    height: 120,
                    child: Row(
                      children: [
                        Text(
                          "รายจ่าย",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            " 10000 บาท",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    )),
              
            ],
          ),
        ));
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