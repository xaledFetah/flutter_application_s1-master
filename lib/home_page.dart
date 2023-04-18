import 'package:flutter/material.dart';

class Home_p extends StatelessWidget {
  const Home_p({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.amber[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_9");
                },
                child: Text("page_9"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.green[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_13");
                },
                child: Text("Page_13"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.blue[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_14");
                },
                child: Text("Page_14"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.purple[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_19");
                },
                child: Text("Page_19"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.red[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_30");
                },
                child: Text("Page_30"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.teal[50],
                onPressed: () {
                  Navigator.pushNamed(context, "page_23");
                },
                child: Text("Page_23"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
