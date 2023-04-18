import 'package:flutter/material.dart';

class appItems extends StatelessWidget {
  appItems({super.key, this.widgetA, this.widgetB, this.widgetC});
  final widgetA;
  final widgetB;
  final widgetC;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    icon: widgetA,
                    color: Colors.black,
                  ))),
          Expanded(
              child: Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: widgetB,
              color: Colors.black,
            ),
          )),
          Expanded(
              child: Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: widgetC,
              color: Colors.black,
            ),
          )),
        ],
      ),
    );
  }
}
