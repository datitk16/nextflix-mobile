import 'package:flutter/material.dart';
import 'package:netflix_clone/components/search_bar.dart';
import 'package:netflix_clone/screens/home/components/carousel.dart';
import 'package:netflix_clone/screens/home/components/category_list.dart';
import 'package:netflix_clone/screens/home/components/header.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final int currentIndex;

  const Body({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Header(),
          SearchBar(),
          Row(
            children: [
              Text(
                'Category',
                style: kSectionTitle,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CategoryList(),
          SizedBox(
            height: 20,
          ),
          Carousel()
        ],
      ),
    );
  }
}
