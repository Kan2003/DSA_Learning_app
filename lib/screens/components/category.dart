import 'package:elearningapp/dsa_topics/array.dart';
import 'package:elearningapp/models/product_model.dart';
import 'package:elearningapp/screens/welcome_sreen.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
          product: products[index],
        ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),

            // const SizedBox(
            //   height: 2,
            // ),

            // Text(
            //   "${product.Videos} Videos",
            //   style: const TextStyle(
            //     fontSize: 15,
            //     color: Colors.white,
            //   ),
            // ),

            Row(
              //button position
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.blue,
                  onPressed: (){
                    //  home screen path
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Array()));
                  },
                  child: Text("Start Now",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15,
                      color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
