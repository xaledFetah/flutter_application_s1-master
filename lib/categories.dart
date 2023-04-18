import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page_13 extends StatefulWidget {
  Page_13({super.key});

  @override
  State<Page_13> createState() => _Page_13State();
}

final List _test = [
  ['item title', 'item details', 'assets/images/f2.png'],
  ['item title 2', 'item details 2', 'assets/images/f3.png'],
  ['item title 3', 'item details 3', 'assets/images/f4.png'],
  ['item title 4', 'item details 4', 'assets/images/f5.png'],
  ['item title 5', 'item details 5', 'assets/images/f6.png'],
];

class _Page_13State extends State<Page_13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Categories"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: Icon(Icons.arrow_back)),
        ),
        // list view builder
        body: ListView.builder(
            itemCount: _test.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //
                  print("click");
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.8, color: Colors.black26),
                        )),
                    height: 112,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 12),
                    child: Container(
                      child: Row(
                        children: [
                          // 1 svg image expanded
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(_test[index][2]),
                            ),
                          ),
                          // 2 title and subtitle expanded
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              height: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  AutoSizeText(
                                    // title from list(_test)
                                    _test[index][0],
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.black),
                                  ),
                                  AutoSizeText(
                                      // subtitle from list(_test)
                                      _test[index][1],
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black45)),
                                ],
                              ),
                            ),
                          ),
                          // 3 icon expanded

                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_right_rounded,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            }));
  }
}
