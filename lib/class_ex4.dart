import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CexFour extends StatelessWidget {
  const CexFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            "Totla",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          AutoSizeText(
            '\$6.99',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
