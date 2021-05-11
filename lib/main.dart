import 'package:flutter/material.dart';
//import 'Foodmenu.dart';
import 'MoneyBox.dart';
import 'package:http/http.dart' as http ;
import 'ExchangeRate.dart';
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
  ExchangeRate _dataFromAPI ;
   @override

  void initState() {
  super.initState();
  getExchangeRate() ;
  }
  Future <ExchangeRate> getExchangeRate() async {
    var url = "http://api.exchangeratesapi.io/latest?access_key=bc3c91d239139eea7abdc48656683f0d&symbols=USD,GBP,THB" ;
    var response = await http.get(url) ;
    print("Call Exchange Rate with API") ;
   _dataFromAPI =  exchangeRateFromJson(response.body) ;
   return _dataFromAPI ;
    

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
        body: FutureBuilder(
          future: getExchangeRate() ,
          builder: (BuildContext context , AsyncSnapshot<dynamic> snapshot ){
            if(snapshot.connectionState == ConnectionState.done) { //get all API request 
            var result = snapshot.data ;
              return  Padding(
          padding: const EdgeInsets.fromLTRB(10,10,10, 0), // space from top and side
          child: Column(
            children: [

              SizedBox(height : 10) ,
              MoneyBox("ยอดคงเหลือ",15000/result.rates["THB"] , Colors.orange, 150) ,
              SizedBox(height : 10) ,
              MoneyBox("รายรับ", 25000/result.rates["THB"], Colors.greenAccent[400] , 120) ,
              SizedBox(height : 10) ,
              MoneyBox("รายจ่าย", 10000/result.rates["THB"], Colors.redAccent[700] , 120) ,
              SizedBox(height : 10) ,
              MoneyBox("ค้างชำระ", 0/result.rates["THB"], Colors.deepOrangeAccent[400] , 120),
              SizedBox(height : 10) ,
              Text("สกุลเงิน " + result.base ,style: TextStyle(fontSize: 30 ),)
              
              
             
            ],
          ), 
            
        );
            }
            return LinearProgressIndicator() ;
           
          },
       
           
            
        ),
         
    );
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