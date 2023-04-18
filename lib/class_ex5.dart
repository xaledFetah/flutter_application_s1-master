import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CexpFive extends StatelessWidget {
  const CexpFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: MaterialButton(
        onPressed: () {},
        child: Container(
          width: double.infinity,
          child: AutoSizeText(
            "CHEKOUT",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
