import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviess/pages/CategoryPage.dart';
import 'package:moviess/pages/HomePage.dart';
import 'package:moviess/pages/MoviePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
    void initState(){
      //to hide status bar and below buttons
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
     routes:{
      "/":(context) => HomePage(),
      "categoryPage":(context)=>CategoryPage(),
      "moviePage":((context) => MoviePage())
     } ,
    );
  }
}



