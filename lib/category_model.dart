import 'dart:math';

import 'package:flutter/material.dart';

class CategoryModel {
  int id;
  String name;
  String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<CategoryModel> categoryList = [
  CategoryModel(
    id: 1,
    name: 'HOW TO CREATE BINARY.COM ACCOUNT',
    image: '1.png',
  ),
  CategoryModel(
    id: 2,
    name: 'HOW TO CREATE BINARY.COM ACCOUNT',
    image: '1.png',
  ),
  CategoryModel(
    id: 3,
    name: 'HOW TO CREATE BINARY.COM ACCOUNT',
    image: '1.png',
  ),
  CategoryModel(
    id: 4,
    name: 'HOW TO CREATE BINARY.COM ACCOUNT',
    image: '1.png',
  ),
  CategoryModel(
    id: 5,
    name: 'HOW TO CREATE BINARY.COM ACCOUNT',
    image: '1.png',
  ),
];
