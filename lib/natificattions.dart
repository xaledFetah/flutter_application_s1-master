import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PageNotif extends StatefulWidget {
  const PageNotif({super.key});

  @override
  State<PageNotif> createState() => _PageNotifState();
}

//  example list
final List _ExTitle = [
  [
    'Your order #854534 has been',
    'Successfuly!',
    '15 min ago',
    Icon(Icons.file_present_sharp)
  ],
  [
    'Your order #854534 has been',
    'No success!',
    '15 min ago',
    Icon(Icons.interests_outlined)
  ],
  [
    'Your order #854534 has been',
    'Successfuly!',
    '1 day ago',
    Icon(Icons.share)
  ],
  [
    'Your order #854534 has been',
    'Shipped!',
    '15 min ago',
    Icon(Icons.file_present_sharp)
  ],
  [
    'Your order #854534 has been',
    'Successfuly!',
    '15 min ago',
    Icon(Icons.file_present_sharp)
  ],
  [
    'Your order #854534 has been',
    'Successfuly!',
    '1 day ago',
    Icon(Icons.share)
  ],
  [
    'Your order #854534 has been',
    'Shipped!',
    '15 min ago',
    Icon(Icons.file_present_sharp)
  ],
  [
    'Your order #854534 has been',
    'Successfuly!',
    '15 min ago',
    Icon(Icons.file_present_sharp)
  ]
];

class _PageNotifState extends State<PageNotif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            title: Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Container(
                  // right text
                  margin: EdgeInsets.only(right: 10, top: 10),
                  child: AutoSizeText("Mark all read",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      )))
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
                margin: EdgeInsets.all(5),
                height: 100,
                child: Row(
                  children: [
                    // icon expanded
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: double.infinity,
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          // icons list
                          child: _ExTitle[index][3],
                        ),
                      ),
                    ),
                    // text expanded
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // title text 1
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: AutoSizeText(
                                _ExTitle[index][0],
                              ),
                            ),
                            // subtitle text 2
                            AutoSizeText(_ExTitle[index][1]),
                            // details text 3
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: AutoSizeText(
                                _ExTitle[index][2],
                                style: TextStyle(color: Colors.black45),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: _ExTitle.length,
          ))
        ],
      ),
    );
  }
}
