import 'package:flutter/material.dart';
import 'package:flutter_application_s1/card_amer.dart';
import 'package:flutter_application_s1/class_ex2.dart';
import 'package:flutter_application_s1/class_horizental_card.dart';
import 'package:flutter_application_s1/expan.dart';
import 'package:flutter_application_s1/home_page.dart';
import 'package:flutter_application_s1/collection.dart';
import 'package:flutter_application_s1/shopping.dart';
import 'package:flutter_application_s1/natificattions.dart';
import 'package:flutter_application_s1/categories.dart';
import 'package:flutter_application_s1/catigoreisSubDetails.dart';
import 'package:flutter_application_s1/homeStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(color: Colors.white, surfaceTintColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      routes: {
        "home": (context) => Home_p(),
        "page_9": (context) => PageHomeS(),
        "page_13": (context) => PageShop(),
        "page_19": (context) => PageColl(),
        "page_23": (context) => eXpan(),
        "page_30": (context) => PageNotif(),
        "page_14": (context) => CatSubDet(),
      },
      home: eXpan(),
    );
  }
}
