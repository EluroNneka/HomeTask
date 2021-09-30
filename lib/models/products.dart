import 'package:flutter/material.dart';

class ProductList {
  final String productImage;
  final String productName;
  final String form;
  final String price;
  final String weight;


  ProductList(this.productImage, this.productName, this.form, this.price, this.weight);

}

List <ProductList> products = [
  //ProductList(productImage, productName, form, price, weight)
];