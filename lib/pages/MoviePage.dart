import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/MoviePageButtons.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

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
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red, boxShadow: [
                            BoxShadow(
                                color: Colors.red, blurRadius: 8, spreadRadius: 1)
                          ]),
                          child: ClipRect(
                            child: Image.asset("assets/images/photo1.jpg",width: 180,height: 250,),
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  MoviePageButtons(),
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
