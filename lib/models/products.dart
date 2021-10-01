import 'package:flutter/material.dart';

class ProductItem {
   final String productImage;
 final String productName;
   final String form;
   final double price;
   final String weight;
    int quantity;


  ProductItem(
      {this.productImage,
      this.productName,
      this.form,
      this.price,
      this.weight,
      this.quantity});

}


class Product {
  List<ProductItem> productItems;

  Product({this.productItems});

  void addProduct(ProductItem item){
    productItems.add(item);
  }

  void removeProduct(ProductItem item){
    productItems.add(item);
  }
}
