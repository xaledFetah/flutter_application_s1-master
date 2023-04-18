import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CatigTitle extends StatelessWidget {
  CatigTitle({super.key, required this.title_catigories});
  final String title_catigories;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title text
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: AutoSizeText(
              title_catigories,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                //
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: AutoSizeText(
                      "Show all",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Icon(
                      Icons.arrow_right_outlined,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
