import 'package:elearningapp/screens/welcome_sreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      //removing debug banner
      debugShowCheckedModeBanner: false,

      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      //
      // home: const WelcomeScreen(),



      //Addition of Splash Screen
      home:
      AnimatedSplashScreen(


        backgroundColor: Colors.black,

        splash:
        Image.asset(
          'assets/images/dsaaa-removebg-preview.png',
        ),



        nextScreen: const  WelcomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 100000,
        duration: 3000,

      ),


    );
  }
}
//
// Image.asset(
// 'assets/icon/dsapt.png',

// Container(
//   height: 400.0,
//   width: 400.0,
//   color: Colors.black,
// ),

// Icons.home,