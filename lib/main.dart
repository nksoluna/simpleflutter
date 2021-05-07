import 'package:flutter/material.dart';

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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KEEARAIDIN")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: NetworkImage(
                    'https://png.pngtree.com/png-clipart/20190515/original/pngtree-vector-cartoon-illustration-of-a-traditional-set-of-fast-food-me-png-image_3565698.jpg')),
            Text("WELCOME TO KEEARAIDIN"),
            Text("กินอะไรดี ....."),
            Text("สั่งอาหาร คลิกที่ปุ่มนี้"),
            Text(
              "สั่งอาหารไปแล้วทั้งหมด $counter ครั้ง ",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
            if (counter >=20) {
              counter = 0 ;
            }
          });
        },
        child : Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
