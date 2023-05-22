import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/NewMovieswWidget.dart';
import '../widgets/UpcomingWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello Alex",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text("What to watch!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54)),
                    ],
                  ),
                  ClipRect(
                    child: Image.asset(
                      "assets/images/photo1.jpg",
                      height: 60,
                      width: 60,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
           UpcomingWidget(),
                       SizedBox(height: 20,),
                       NewMovieswWidget(),

          ],
        )),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
