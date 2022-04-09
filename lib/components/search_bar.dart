import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix_clone/constants.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  String query = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      decoration: BoxDecoration(
        color: kTextColor.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextField(
        controller: _searchController,
        style: kSearchHint.apply(color: kTextColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: query.isEmpty ? 'Search Movies' : query,
          hintStyle: kSearchHint,
        ),
        onSubmitted: (value) {
          // setState(() {
          //   query = value;
          // });
        },
      ),
    );
  }
}
