import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTile extends StatefulWidget {
  final String imageName;
  final String productTitle;
  final String price;

  CardTile(
      {super.key,
      required this.imageName,
      required this.productTitle,
      required this.price});

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),

      // contents
      child: Column(
        children: [
          // image card
          Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(children: [
                  // icon container
                  Container(
                      margin: EdgeInsets.all(8),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        child: Icon(
                          (click == false)
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_outlined,
                          // icon color
                          color: Colors.black,
                        ),
                      )),
                  // svg container
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      widget.imageName,
                      fit: BoxFit.fill,
                    ),
                  ),
                ]),
              )),
          // product title
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(4),
                      width: double.infinity,
                      child: AutoSizeText(
                        widget.productTitle,
                        maxLines: 1,
                        style: TextStyle(fontSize: 26),
                      )),
                  Container(
                      margin: EdgeInsets.all(2),
                      width: double.infinity,
                      child: AutoSizeText(
                        widget.price,
                        maxLines: 1,
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
