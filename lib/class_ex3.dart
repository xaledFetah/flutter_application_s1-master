import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Cexpthrey extends StatelessWidget {
  const Cexpthrey({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Row 1
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  "Shopping fee",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                AutoSizeText(
                  '\$6.99',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
          ),
          // Row 2
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "Sub Total",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  AutoSizeText(
                    '\$6.99',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          // Row 3
        ]));
  }
}
