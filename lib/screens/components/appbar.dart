import 'package:flutter/material.dart';
import 'package:elearningapp/constraints.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: (){},
            icon:const  Icon(
              Icons.dashboard_rounded,
              color: kpurple,

            )),
        IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search_rounded,
              // color: kpurple,

            ))
      ],
    );

  }
}