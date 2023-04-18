import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_s1/classAppRow.dart';
import 'package:flutter_application_s1/class_catigoreis_title.dart';
import 'package:flutter_application_s1/class_horizental_card.dart';

class PageHomeS extends StatefulWidget {
  const PageHomeS({super.key});

  @override
  State<PageHomeS> createState() => _PageHomeSState();
}

// slider list
List imageList = [
  {
    "ID": 1,
    "images_path": 'assets/images/g.webp',
    "Text_Title": "Make yourself at home",
    "Text_details": "We love clean design and natural funiture solution",
  },
  {
    "ID": 2,
    "images_path": 'assets/images/s.jpeg',
    "Text_Title": "Make yourself at home 2",
    "Text_details": "We love clean design and natural funiture solution 2",
  },
  {
    "ID": 3,
    "images_path": 'assets/images/q.jpg',
    "Text_Title": "Make yourself at home 3",
    "Text_details": "We love clean design and natural funiture solution 3",
  },
];

final CarouselController carouselController = CarouselController();
int currentIndex = 0;

class _PageHomeSState extends State<PageHomeS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Slider images
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                    items: imageList
                        .map(
                          (e) =>
                              // images slider
                              Stack(children: [
                            Image.asset(
                              e['images_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),

                            // container text
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 80, bottom: 20, right: 20, left: 20),
                                child: Column(
                                  children: [
                                    // title text image

                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 80),
                                        child: AutoSizeText(
                                          e['Text_Title'],
                                          style: TextStyle(
                                              fontSize: 60,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    // sizedbox
                                    SizedBox(
                                      height: 20,
                                    ),
                                    // detalies text
                                    Expanded(
                                      child: AutoSizeText(
                                        e['Text_details'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            height: 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 1.4,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )),
              ),
              // POSITION
              Positioned(
                // top: 0,
                bottom: 20,
                left: 20,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: imageList.asMap().entries.map((entry) {
                    print(entry);
                    print(entry.key);
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 9 : 8,
                        height: currentIndex == entry.key ? 9 : 8,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.white
                                : Color.fromARGB(255, 188, 187, 187)
                                    .withOpacity(1)),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // app_Row Icons item
              appItems(
                widgetA: Icon(
                  Icons.menu_sharp,
                  size: 30,
                ),
                widgetB: Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
                widgetC: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          // row tow text title
          // HorzCards(id: [0], price: price, imagec: imagec, title: title)
          CatigTitle(
            title_catigories: 'New Arrivals',
          ),
          Container(height: 280, child: CardsH()),
          CatigTitle(
            title_catigories: 'top Trends',
          ),
          Container(height: 280, child: CardsH()),
        ],
      ),
    );
  }
}
