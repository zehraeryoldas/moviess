import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xFF292B37),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
           
            onTap: () {
              //navigate to home page
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
               Navigator.pushNamed(context, "categoryPage");
            },
            child: Icon(
              Icons.category,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "moviePage");
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
