

import 'package:drohometask/models/products.dart';
import 'package:drohometask/storeBloc/storebloc.dart';
import 'package:drohometask/storeBloc/storeevent.dart';
import 'package:drohometask/storeBloc/storestate.dart';
import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget{
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<ProductItem> cartItems;

  double res = 0;
  double total = 0;

  void calculateAmount(List<ProductItem> list){

    list.forEach((element) {
      res = res + element.price * element.quantity;
    });
    total = res;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
      builder:(context, state) {
        if(state is InitStoreState){
          cartItems = state.cart.productItems;
          calculateAmount(cartItems);
        }
        if(state is AddingToCartState){
          cartItems = state.cartItem;
          calculateAmount(cartItems);

        }
        if(state is AddedToCartState){
          cartItems = state.cartItem;
          calculateAmount(cartItems);
        }
        if(state is DeleteFromCartState){
          cartItems = state.cartItem;
          calculateAmount(cartItems);
        }
        return Scaffold(

            body: SingleChildScrollView(

              child: Container(
                color: Colors.white,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,

                child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: AppBars(
                          lead: Icons.arrow_back_ios,
                          title: 'Pharmacy',
                          icon2: 'shopping-cart.png',
                          icon: 'like.png',
                          search: false,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        child: cartItems == null || cartItems.length == 0 ? Text('Your Cart is Currently Empty') :
                        ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: cartItems.length,
                          itemBuilder: (context, index) {
                            return
                              CartItem(
                                image: cartItems[index].productImage,
                                name: cartItems[index].productName,
                                form: cartItems[index].form,// cartItems?[index].weight,
                                price: cartItems[index].price.toString(),
                                quantity: cartItems[index].quantity,
                                add: (){
                                  setState(() {
                                    cartItems[index].quantity++;
                                    calculateAmount(cartItems);
                                    cartItems.add(cartItems[index]);
                                  });
                                },
                                remove: (){
                                  setState(() {
                                    if(state is InitStoreState){
                                      state.cart.productItems.removeAt(index);
                                      BlocProvider.of<StoreBloc>(context)..add(DeleteFromCartEvent(
                                        cartItem: state.cart.productItems
                                      ));
                                      calculateAmount(cartItems);
                                    }
                                    else if(state is AddedToCartState){
                                      state.cartItem.removeAt(index);
                                      BlocProvider.of<StoreBloc>(context)..add(DeleteFromCartEvent(
                                          cartItem: state.cartItem
                                      ));
                                      calculateAmount(cartItems);
                                    }
                                    else if(state is DeleteFromCartState){
                                      state.cartItem.removeAt(index);
                                      BlocProvider.of<StoreBloc>(context)..add(DeleteFromCartEvent(
                                          cartItem: state.cartItem
                                      ));
                                      calculateAmount(cartItems);
                                    }
                                  });
                                },
                              );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },

                        ),
                      ),
                      SizedBox(height: 30,),

                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            Text('Total:' + '₦' + total.toString()),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/');
                              },
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  gradient: AppColors.DROPURPLEGRA,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15,),
                                child:
                                Center(
                                  child: Text('CHECKOUT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ]),

              ),
            ));
      }
    );
  }
}
class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String form;
  final String price;
  final int quantity;
  final Function add;
  final Function remove;

  const CartItem({Key key, this.image, this.name, this.form, this.price, this.quantity,this.add, this.remove}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 150,
      child: Row(
        children: [
          Container(
            height: 100,
              width: 100,
              child: Image.network(image, height: 100, width: 100,)),
          SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),),
                SizedBox(height: 5,),
                Text(form,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),
                SizedBox(height: 5,),
                Text('₦'+price,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),),
              ]),
          Spacer(),
          Column(
            children: [
              Container(
                height: 40,
                width: 80,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    Text(quantity.toString()),
                    SizedBox(width: 5,),
                    IconButton(icon: Icon(Icons.keyboard_arrow_down,size: 20,),
                    onPressed: (){add();},),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  remove();
                },
                child: Row(
                  children: [
                    Image.asset('assets/images/bin.png', height: 20, width: 15, color: AppColors.DROPURPLE,),
                    SizedBox(width: 10,),
                  Text(' Delete',
                  style: TextStyle(fontSize: 10,
                  color: AppColors.DROPURPLE),),
                  ],
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}