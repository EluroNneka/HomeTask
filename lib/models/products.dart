import 'package:flutter/material.dart';

class ProductItem {
  final String productImage;
  final String productName;
  final String form;
  final double price;
  final String weight;
  int quantity;
  final String manu;
  final String constituents;
  final String id;
  final String size;

  ProductItem({
    this.productImage,
    this.productName,
    this.form,
    this.price,
    this.weight,
    this.quantity,
    this.manu,
    this.constituents,
    this.id,
    this.size,
  });
}

class Product {
  List<ProductItem> productItems;

  Product({this.productItems});

  void addProduct(ProductItem item) {
    productItems.add(item);
  }

  void removeProduct(ProductItem item) {
    productItems.add(item);
  }
}
