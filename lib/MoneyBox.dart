import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
// create blueprint widget
String title ;
double amount ;
Color color ;
double size;

MoneyBox(this.title , this.amount , this.color , this.size) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      //create container
                  padding: const EdgeInsets.all(40.0), // you can use s
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10)),
                  height: size,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                         '${NumberFormat("#,###.##").format(amount)}' + (" บาท"),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign
                              .right, // outside style and for aligning text
                        ),
                      )
                    ],
                  ));
    
  }
}