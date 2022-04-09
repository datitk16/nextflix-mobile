import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(int index, BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("Category")],
      ),
    );
  }
}
