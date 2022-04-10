import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/services/services.dart';

import '../../../constants.dart';

class Carousel extends StatefulWidget {
  // final int currentIndex;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _carouselController = CarouselController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text('Popular', style: kSectionTitle),
          ],
        ),
        FutureBuilder<Movie>(
            future: futureDiscoverMovie,
            builder: (content, snapshot) {
              return SizedBox(
                height: 256,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 256.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.45,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 500),
                    onPageChanged: (index, reason) {
                      setState(() {
                        // _current = index;
                      });
                    },
                  ),
                  carouselController: _carouselController,
                  items: [
                    ...snapshot.data!.results!.map(
                      (item) => GestureDetector(
                        child: Container(
                          height: 256,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              imageUrl: posterUrl + item.posterPath.toString(),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }
}
