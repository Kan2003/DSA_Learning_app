// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elearningapp/constraints.dart';
import 'package:elearningapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const  BoxDecoration(
                    color: kpurple,
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(50))),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Expanded(child: Image.asset("assets/images/welcome.png")),

                      // Padding(padding:EdgeInsets.fromLTRB(5.0, 95.0, 5.0, 5.0)),
                      // Lottie.network("https://assets2.lottiefiles.com/packages/lf20_slpkbdfp.json",
                      // ),

                    ],
                  ),
                )),
            Expanded(
                flex:2,
              child: Container(
                color:kpurple,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50),
                    )),
                child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children:  [
                    Spacer(),
                    Text(
                      "DSA की Pathshala",
                      style: TextStyle(
                        // color: Colors.blue,
                        fontSize: 28,
                      fontWeight: FontWeight.bold,
                      ),
                    ),




                    // SizedBox(
                    //   height: 10,
                    // ),

                    //we can remove sizedbox with Spacer
                    Spacer(),


                    Text(
                      "Learn with pleasure with\nus,where you are!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        wordSpacing: 2.5,
                        height: 1.5,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),


                    //we can remove sizedbox with Spacer
                    Spacer(),


                    Row(
                      //button position
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                        height: 60,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                        color: kpink,
                        onPressed: (){
                        //  home screen path
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                        },
                        child: Text("Get Started",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 18,
                          color: Colors.white),
                        ),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ))
          ),
        ],
        ),
      )
    );
  }
}
