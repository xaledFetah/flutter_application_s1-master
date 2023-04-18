import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CexpOne extends StatelessWidget {
  const CexpOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                "Shopping Cart",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                "4 item",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
