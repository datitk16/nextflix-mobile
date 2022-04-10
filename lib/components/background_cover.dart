import 'package:flutter/material.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/services/services.dart';

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
