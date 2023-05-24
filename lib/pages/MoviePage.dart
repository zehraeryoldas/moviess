import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/MoviePageButtons.dart';

class MoviePage extends StatefulWidget {
  MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late double _rating;

  double _userRating = 3.0;

  int _ratingBarMode = 1;

  double _initialRating = 2.0;

  bool _isRTLMode = false;

  bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "assets/images/photo1.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 30),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: ClipRect(
                            child: Image.asset(
                              "assets/images/photo1.jpg",
                              width: 180,
                              height: 250,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviePageButtons(),
                  RatingBar.builder(
                    initialRating: _initialRating,
                    minRating: 1,
                    //direction: _isVertical ? Axis.vertical : Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: Colors.amber.withAlpha(50),
                    itemCount: 5,
                    itemSize: 50.0,
                    itemBuilder: (context, _) => Icon(
                      _selectedIcon ?? Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                    updateOnDrag: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
