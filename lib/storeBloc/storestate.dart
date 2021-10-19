import 'package:drohometask/dataprovider/productdata.dart';
import 'package:drohometask/models/categories.dart';
import 'package:drohometask/models/products.dart';

abstract class StoreState{}



class InitialStoreState extends StoreState{}

class InitStoreState extends StoreState{
  Product product;
  Product cart;
  Category category;

  InitStoreState({this.product, this.cart,this.category});

}

class AddingToCartState extends StoreState{
  List<ProductItem> cartItem;
  Product cart;

  AddingToCartState({this.cartItem,this.cart});

}

class AddedToCartState extends StoreState{
  List<ProductItem> cartItem;
  AddedToCartState({this.cartItem});


}

class DeleteFromCartState extends StoreState{
  List<ProductItem> cartItem;
  DeleteFromCartState({this.cartItem,});

}
