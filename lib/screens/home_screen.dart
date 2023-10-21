import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:elearningapp/constraints.dart';
import 'package:elearningapp/screens/components/category.dart';
import 'package:flutter/material.dart';
import 'package:elearningapp/models/product_model.dart';
import 'components/appbar.dart';
import 'components/sorting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // bottom bar
     // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kpurple,
        inactiveColor: Colors.grey[300]
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite_rounded),
              title: Text('Favorite'),
              activeColor: kpink,
              inactiveColor: Colors.grey[300]
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: kpink,
              inactiveColor: Colors.grey[300]
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              activeColor: kpink,
              inactiveColor: Colors.grey[300]),
        ],
      ),
     body: SafeArea(
       child: ListView(
         children: [
           CustomAppbar(),

           const SizedBox(
             height: 20,
           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal:10.0),
             child: Column(
               children: [
                 Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:const [
                         Text(
                             "Hi Monesh",
                         style: TextStyle(
                           fontSize: 28,
                           fontWeight: FontWeight.bold,
                         ),
                         ),

                         SizedBox(
                           height: 10,
                         ),

                         Text(
                           "Today is a good day\nto learn something new!",
                           // textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Colors.black54,
                             wordSpacing: 2.5,
                             // height: 1.5,
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ],
                     ),

                     const Spacer(),
                     Column(
                       children: [
                         Container(
                           height: 70,
                           width: 70,
                       child: Image.asset("assets/images/avatar (Custom).jpg"),
                           ),
                       ],
                     ),
                   ],
                 ),

                 const SizedBox(
                   height: 20,
                 ),

               //  sorting
                 Sorting(),
                 const SizedBox(
                   height: 20,
                 ),


               //  category list
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Text(
                       "Categories",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     InkWell(
                       onTap: (){},
                       child: const  Text(
                         "See All",
                         style: TextStyle(fontSize: 16,color:Colors.lightBlue),
                       ),
                     ),
                   ],
                 ),

                 //  now we create model of our images and colors which we will use in our app

                 const SizedBox(
                   height: 20,
                 ),


                 //we can not use gridview inside column
                 //use shrinkwrap and physical scroll

                  CategoryList(),
                 const SizedBox(
                   height: 20,
                 ),

               ],
             ),
           ),
         ],
       ),
     ),
    );
  }
}

