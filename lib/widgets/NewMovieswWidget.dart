import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewMovieswWidget extends StatelessWidget {
  const NewMovieswWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "New Movies",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Text("See All", style: TextStyle(fontSize: 15, color: Colors.grey)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 9; i++)
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 160,
                    height: 250,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color(0xFF292B37),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF292B37).withOpacity(0.5),
                            blurRadius: 4,
                            spreadRadius: 5,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                          child: Image.asset(
                            "assets/images/photo$i.jpg",
                            width: 160,
                            height: 180,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Movie Title Here",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Action/Adventure",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "8.5",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
