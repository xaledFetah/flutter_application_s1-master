import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_s1/class_horizental_card.dart';
import 'package:flutter_application_s1/class_mytabs.dart';
import 'package:flutter_application_s1/test_tabbarview.dart';

class CatSubDet extends StatefulWidget {
  const CatSubDet({super.key});

  @override
  State<CatSubDet> createState() => _CatSubDetState();
}

class _CatSubDetState extends State<CatSubDet> {
  final List<Widget> _exampleListTab = [
    // Featured tab
    MyTabb(Nametitle: "Featured"),
    // Collection tab
    MyTabb(Nametitle: "Collection"),

    // Trend tab
    MyTabb(Nametitle: "Trend"),

    // test tab
    MyTabb(Nametitle: "Test"),
    // example tab7
    MyTabb(Nametitle: "Example"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _exampleListTab.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Decoration",
              style: TextStyle(color: Colors.black),
            ),
            leading: Container(
              margin: EdgeInsets.only(
                bottom: 10,
                left: 6,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ),
            // Filters
            actions: [
              Container(
                  margin: EdgeInsets.all(6),
                  child: AutoSizeText(
                    "Filters",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // tab bar
              TabBar(
                  dividerColor: Colors.white,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                      border: Border.all(width: 0, style: BorderStyle.none)),
                  isScrollable: true,
                  tabs: _exampleListTab),
              // SIZEDBOX
              SizedBox(
                height: 20,
              ),
              // tab bar view
              Expanded(
                  child: TabBarView(children: [
                // Featured Page
                Test_TabbarvieW(),
                // Collection Page
                Test_TabbarvieW(),
                // Trend Page
                Test_TabbarvieW(),
                // test Page
                Test_TabbarvieW(),

                // example Page
                Test_TabbarvieW(),
              ]))
            ],
          )),
    );
  }
}
