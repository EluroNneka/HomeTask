import 'package:flutter/material.dart';

class CategoryItem {
   String image;
   String name;


  CategoryItem(
      {this.image,this.name});

}


class Category {
  List<CategoryItem> categoryItem;

  Category({this.categoryItem});

}
