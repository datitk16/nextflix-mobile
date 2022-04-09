import 'package:flutter/material.dart';
import 'package:netflix_clone/components/search_bar.dart';
import 'package:netflix_clone/screens/home/components/category_list.dart';
import 'package:netflix_clone/screens/home/components/header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [Header(), SearchBar(), CategoryList()],
      ),
    );
  }
}
