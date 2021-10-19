import 'package:drohometask/models/products.dart';

abstract class StoreEvent{}

class InitStoreEvent extends StoreEvent{}

class AddingToCartEvent extends StoreEvent{
  List<ProductItem> cartItem;
  AddingToCartEvent({this.cartItem});

}

class AddedToCartEvent extends StoreEvent{
  List<ProductItem> cartItem;
  AddedToCartEvent({this.cartItem});
}

class DeleteFromCartEvent extends StoreEvent{
  List<ProductItem> cartItem;
  int index;
  DeleteFromCartEvent({this.cartItem, this.index});

}
