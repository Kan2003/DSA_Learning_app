import 'package:flutter/material.dart';
import 'package:elearningapp/constraints.dart';



class Sorting extends StatelessWidget {
  const Sorting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //space between widgets
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15.0,vertical: 10),
          decoration: BoxDecoration(color: kpink,borderRadius:BorderRadius.circular(10.0)),
          child: const Text("Top",
            style: TextStyle(fontSize: 18.0,color: Colors.white),),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15.0,vertical: 10),
          // decoration: BoxDecoration(color: kpink,borderRadius:BorderRadius.circular(10.0)),
          child: const Text("Array",
            style: TextStyle(fontSize: 18.0,color: Colors.purple,fontWeight: FontWeight.bold,),),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15.0,vertical: 10),
          // decoration: BoxDecoration(color: kpink,borderRadius:BorderRadius.circular(10.0)),
          child: const Text("List",
            style: TextStyle(fontSize: 18.0,color: Colors.purple,fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
              height: 20,
              child: Image.asset("assets/icon/sort.png")),
        ),
      ],
    );
  }
}



