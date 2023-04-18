import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PageColl extends StatefulWidget {
  const PageColl({super.key});

  @override
  State<PageColl> createState() => _PageCollState();
}

//  example list
final List _CardC = [
  [
    // image card
    'assets/images/f1.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '',
    // click
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f6.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '50 % Off',
    // click
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f7.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '',
    // click
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f4.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '50 % Off',
    // click
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f5.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '50 % Off',
    // click
    'Shop Now', 'assets/images/f5.png',
    'Black Fridays',
    'New Arrivals Winter',
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f3.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '50 % Off',
    // click
    'SHOP NOW',
  ],
  [
    // image card
    'assets/images/f2.png',
    // title card
    'Black Fridays',
    // subtitle card
    'New Arrivals Winter',
    // rival yes / no
    '50 % Off',
    // click
    'SHOP NOW',
  ],
];

class _PageCollState extends State<PageColl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            title: Text(
              "Collection",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              // search icon
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  icon: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  )),
              //  shop icon
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ))
            ],

            // arrow icon button
            leading: Container(
              margin: EdgeInsets.all(6),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
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
                  height: 200,
                  child: Stack(
                    children: [
                      // images container
                      Container(
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.centerRight,
                          child: Image.asset(_CardC[index][0])),
                      // title card text
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(12),
                          child: AutoSizeText(_CardC[index][1])),
                      // subtitle card text
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 28, bottom: 4),
                          padding: EdgeInsets.all(12),
                          child: AutoSizeText(
                            _CardC[index][2],
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )),
                      // rival card text
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.all(12),
                          child: AutoSizeText(
                            _CardC[index][3],
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )),
                      // click card text
                      Container(
                          width: 114,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black54, width: 2))),
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 28, left: 20),
                          padding: EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //1 text
                              AutoSizeText(
                                _CardC[index][4],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              //2 icon
                              Container(
                                  margin: EdgeInsets.only(left: 0),
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 26,
                                    color: Colors.black,
                                  ))
                            ],
                          )),
                    ],
                  ));
            },
            childCount: _CardC.length,
          ))
        ],
      ),
    );
  }
}
