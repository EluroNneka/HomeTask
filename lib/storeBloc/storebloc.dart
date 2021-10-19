import 'package:bloc/bloc.dart';
import 'package:drohometask/dataprovider/categorydata.dart';
import 'package:drohometask/dataprovider/productdata.dart';
import 'package:drohometask/models/categories.dart';
import 'package:drohometask/models/products.dart';
import 'package:drohometask/storeBloc/storeevent.dart';
import 'package:drohometask/storeBloc/storestate.dart';


class StoreBloc extends Bloc<StoreEvent, StoreState>{
  ProductDataProvider productData = ProductDataProvider();
  CategoryDataProvider categoryData = CategoryDataProvider();

  StoreBloc() : super(InitialStoreState()){
    add(InitStoreEvent());
  }


   @override
    Stream<StoreState> mapEventToState(StoreEvent event) async* {
     super.onEvent(event);
     if (event is InitStoreEvent){
       Product product = await productData.getProductItem();
       Product cart = await productData.getCartItem();
       Category category = await categoryData.getCategoryItem();
       yield InitStoreState(product:  product, cart: cart, category: category);
     }
     if(event is AddingToCartEvent){
       yield AddingToCartState(cartItem: event.cartItem);
     }
     if(event is AddedToCartEvent){
       yield AddedToCartState(cartItem: event.cartItem);
     }
     if (event is DeleteFromCartEvent){
       yield DeleteFromCartState(cartItem: event.cartItem);
     }



   }


}