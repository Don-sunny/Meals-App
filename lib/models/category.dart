import 'package:flutter/material.dart';

class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.title,
    this.color =
        Colors.orange, // default color it initilize if color is not provided.
  });
  final String id;
  final String title;
  final Color color;
}
