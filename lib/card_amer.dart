import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Camer extends StatelessWidget {
  const Camer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 6),
                  blurRadius: 14,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                )
              ]),
          // الارتفاع
          height: 200,
          child: Stack(
            children: [
              // images container
              Container(
                  padding: EdgeInsets.all(12),
                  alignment: Alignment.centerLeft,
                  // الصورة
                  child: Image.asset("الصورة مسار")),
              // title card text
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(12),
                  child: AutoSizeText("ppppppppppp")),
              // subtitle card text
              Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 28, bottom: 4),
                  padding: EdgeInsets.all(12),
                  child: AutoSizeText(
                    "wwwwwwwwwwwwww",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )),
              // rival card text
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(bottom: 4),
                  padding: EdgeInsets.all(12),
                  child: AutoSizeText(
                    "rrrrrrrr",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )),
              // click card text
              
            ],
          )),
    );
  }
}
