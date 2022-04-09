import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/screens/home/components/body.dart';
import 'package:netflix_clone/screens/index.dart';
import 'package:netflix_clone/services/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  @override
  void initState() {
    futureDiscoverMovie = fetchDiscoverMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // resizeToAvoidBottomInset: false,
      child: Stack(
        children: [
          Positioned(
              top: 0, left: 0, right: 0, bottom: 0, child: backgroundCover()),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: () {
                  return Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Index(),
                    ),
                  );
                },
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Body()],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget backgroundCover() {
    return FutureBuilder<Movie>(
        future: futureDiscoverMovie,
        builder: (context, snapshot) {
          Size size = MediaQuery.of(context).size;
          return SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/images/cover.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
          );
        });
  }
}
