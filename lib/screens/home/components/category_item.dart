import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix_clone/data/category.dart';

import '../../../constants.dart';

Widget categoryItem(int index, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    margin: const EdgeInsets.only(right: 16),
    width: size.width / 3 - 60,
    height: size.height / 9,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: kBoxColor.withOpacity(0.1),
    ),
    child: GestureDetector(
      child: Column(
        children: [
          SvgPicture.asset(category[index]['svg_url']),
          const SizedBox(height: 4),
          Text(category[index]['title'], style: kCategoryTitle),
        ],
      ),
    ),
  );
}
