import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyTabb extends StatelessWidget {
  final String Nametitle;
  const MyTabb({super.key, required this.Nametitle});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: AutoSizeText(
        Nametitle,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
