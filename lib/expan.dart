import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_s1/class_ex1.dart';
import 'package:flutter_application_s1/class_ex2.dart';
import 'package:flutter_application_s1/class_ex3.dart';
import 'package:flutter_application_s1/class_ex4.dart';
import 'package:flutter_application_s1/class_ex5.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class eXpan extends StatefulWidget {
  const eXpan({super.key});

  @override
  State<eXpan> createState() => _eXpanState();
}

class _eXpanState extends State<eXpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // edit text
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: AutoSizeText(
              "Edit",
              style: TextStyle(color: Colors.blueAccent, fontSize: 18),
            ),
          )
        ],
        // icon
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            icon: Icon(Icons.close)),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            // 1 expanded for title & item count (4 item)
            Expanded(flex: 2, child: CexpOne()),
            // 2 expanded for Lista

            Expanded(flex: 6, child: CexpTow()),

            // 3 Expanded for price
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(child: Cexpthrey()),
                    Expanded(child: CexFour()),
                  ],
                )),

            // 4 Expanded Four Material Button
            Expanded(flex: 1, child: CexpFive()),
          ],
        ),
      ),
      // 4 for Ceckout inkwell
    );
  }
}
