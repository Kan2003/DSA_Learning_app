import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, Videos;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.Videos,
    required this.color,
    required this.id,

  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Array",
    image: "assets/images/array (2).png",
    // color: Color(0xFFf9c5bd),
    color: Color(0xFF659DBD),
    // color: Color(0xFFA6607C),
    Videos: 10,
  ),
  Product(
    id: 2,
    title: "Linked List",
    image: "assets/images/linked list.png",
    color: Color(0xFFFE7773),
    Videos: 10,
  ),
  Product(
    id: 3,
    title: "Stack",
    image: "assets/images/stack.png",
    color: Color(0xFF12343b),
    Videos: 10,
  ),
  Product(
    id: 4,
    title: "Queue",
    image: "assets/images/Queue1.png",
    color: Color(0xFF98DBC6),
    Videos: 10,
  ),
  Product(
    id: 5,
    title: "Tree",
    image: "assets/images/tree.png",
    color: Color(0xFF0049B7),
    Videos: 10,
  ),
  Product(
    id: 6,
    title: "Graph" ,
    image: "assets/images/graph.png",
    color: Color(0xFFffaa5b),
    Videos: 10,
  ),
  Product(
    id: 7,
    title: "Sorting",
    image: "assets/images/sorting (1).png",
    color: Color(0xFF0db4b9),
    Videos: 10,
  ),
  Product(
    id: 8,
    title: "Searching",
    image: "assets/images/searchlinear.png",
    color: Color(0xFFc9af98),
    Videos: 10,
  ),
  Product(
    id: 9,
    title: "Hashing",
    image: "assets/images/hash_function.png",
    color: Color(0xFF393939),
    Videos: 10,
  ),
  Product(
    id: 10,
    title: "Maping",
    image: "assets/images/mapping.png",
    color: Color(0xFF7c677f),
    Videos: 10,
  ),
  Product(
    id: 11,
    title: "Recursion",
    image: "assets/images/recursion.png",
    color: Color(0xFF021616),
    Videos: 10,
  ),
  Product(
    id: 12,
    title: "Backtracking",
    image: "assets/images/backtrack.png",
    color: Color(0xFF8458B3),
    Videos: 10,
  ),
  Product(
    id: 13,
    title: "Heap",
    image: "assets/images/heap.png",
    color: Color(0xFFff6374),
    Videos: 10,
  ),
  Product(
    id: 14,
    title: "String",
    image: "assets/images/string.png",
    // color: Color(0xFFdcdcdc),
    color: Color(0xFFc89666),
    Videos: 10,
  ),




];
