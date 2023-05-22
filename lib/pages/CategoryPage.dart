import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import '../widgets/CustomNavBar.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  )),
            ),
            Text(
              "Discover",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                children: [
                  for (int i = 1; i < 9; i++)
                    Row(
                      children: [
                        ClipRect(
                            child: Image.asset(
                          "assets/images/photo$i.jpg",
                          width: 90,
                          height: 70,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Category",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.white,
                              size: 25,
                            ))
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
