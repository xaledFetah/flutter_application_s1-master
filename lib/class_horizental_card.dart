import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_s1/classCardTile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsH extends StatelessWidget {
  final List cardContent = [
    // [imageName , productName , price]
    ['assets/images/f1.png', 'Sandalya Yeni 1', '\$250'],
    ['assets/images/f2.png', 'Sandalya Yeni 2', '\$266'],
    ['assets/images/f4.png', 'Sandalya Yeni 3', '\$223'],
    ['assets/images/f5.png', 'Sandalya Yeni 4', '\$299'],
    ['assets/images/f7.png', 'Sandalya Yeni 5', '\$270'],
  ];
  CardsH({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // card container
        Scaffold(
            body: Container(
      height: 280,
      child: Center(
        child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.4,
            ),
            itemCount: cardContent.length,
            itemBuilder: (context, index) {
              return CardTile(
                  imageName: cardContent[index][0],
                  productTitle: cardContent[index][1],
                  price: cardContent[index][2]);
            }),
      ),
    ));
  }
}

// Container(
//
//   );
