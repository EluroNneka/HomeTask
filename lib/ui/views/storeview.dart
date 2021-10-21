
import 'package:drohometask/models/categories.dart';
import 'package:drohometask/models/products.dart';
import 'package:drohometask/storeBloc/storebloc.dart';
import 'package:drohometask/storeBloc/storeevent.dart';
import 'package:drohometask/storeBloc/storestate.dart';
import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/searchutil/searchdelegate.dart';
import 'package:drohometask/ui/views/productview.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cartview.dart';

class StoreView extends StatefulWidget{
  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  List<ProductItem> productItem;
  List<ProductItem> cartItem = [];
  List<CategoryItem> categoryItem;
  bool loadingStore = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreBloc, StoreState>(
      listener: (context,state){
        if (state is InitialStoreState){
          loadingStore = true;
        }
        if (state is InitStoreState){
          productItem = state.product.productItems;
          cartItem = state.cart.productItems;
          categoryItem = state.category.categoryItem;
          loadingStore = false;
        }
        if (state is AddedToCartState){
          cartItem = state.cartItem;
        }
        if (state is DeleteFromCartState){
          cartItem = state.cartItem;
        }

      },
      child: BlocBuilder<StoreBloc, StoreState>(
        builder: (context, state) {
          return
            Scaffold(

              body: Stack(
                  children: [
                    SingleChildScrollView(
                      //physics: NeverScrollableScrollPhysics(),
                      child: Container(

                        height: 1300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              child: AppBars(
                                title: 'Pharmacy',
                                icon: 'like.png',
                                icon1: 'fast.png',
                                search: true,
                                tap: (){
                                  showSearch(context: context, delegate: StoreSearchDelegate(productItem));
                                },
                              ),
                            ),

                            Container(
                                height: 50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                color: Colors.grey.shade300,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/pin.png', height: 15,
                                      width: 15,),
                                    SizedBox(width: 5,),
                                    RichText(text: TextSpan(
                                        children: [
                                          TextSpan(text: 'Delivery in ',
                                            style: TextStyle(
                                              fontFamily: 'ProximaNova thin ',
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),),
                                          TextSpan(text: 'Lagos, NG',
                                            style: TextStyle(
                                              fontFamily: 'Proxima_Nova_Alt_Bold',
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),),
                                        ]
                                    ))
                                  ],
                                )),

                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 900,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(

                                      children: [
                                        Text('CATEGORIES',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),),
                                        Spacer(),
                                        Text('View All',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.DROPURPLE,
                                          ),),
                                      ]),
                                  SizedBox(height: 10,),

                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: categoryItem == null ? 0 : categoryItem.length,
                                      itemBuilder: (context, index) {
                                        return
                                          Row(
                                            children: [
                                              Container(
                                                height: 100,
                                                width: 120,
                                                child: Card(
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .all(
                                                        Radius.circular(5)),
                                                  ),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Container(
                                                        height: 100,
                                                        width: 120,
                                                        child:
                                                          Image.network(categoryItem[index].image,fit: BoxFit.fill,),
                                                      ),
                                                     Text(categoryItem[index].name,
                                                     style: TextStyle(
                                                       color: Colors.white,
                                                       fontSize: 14,
                                                     ),),
                                                     // Text(categoryItem![index].name),
                                                    ],
                                                  ),

                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                            ],
                                          );
                                      },

                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  Text('SUGGESTIONS',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),),
                                  SizedBox(height: 10,),

                                  Container(
                                    height: 500,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GridView.builder(
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 15,
                                                mainAxisSpacing: 15,
                                                mainAxisExtent: 200 ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: productItem == null ? 0 : productItem.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(builder: (_) =>
                                                        BlocProvider.value(value: BlocProvider.of<StoreBloc>(
                                                          context),
                                                        child: ProductDetailView(productItem: productItem[index]),))
                                                      );
                                                },
                                                child: Container(
                                                  height: 500,
                                                  width: 250,
                                                  child: Card(
                                                    elevation: 2,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(10)),
                                                    ),
                                                    child: Column(
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            width: 250,
                                                            height: 200,
                                                            child: Image.network(productItem[index].productImage,
                                                              fit: BoxFit.fill,),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('${productItem[index].productName}'),
                                                              SizedBox(
                                                                height: 5,),
                                                              Text('${productItem[index].form}' +" * "+ '${productItem[index].weight}'),
                                                              SizedBox(
                                                                height: 10,),
                                                              Text('₦'+'${productItem[index].price}'),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),


                                                  ),
                                                ),
                                              );
                                            },

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ]),
              floatingActionButton: InkWell(
                child:
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(30)),

                    ),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.DROREDLEFT.withOpacity(1.0),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(0, 7)),
                            BoxShadow(
                                color: AppColors.DROREDLEFT.withOpacity(1.0),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(7, 0)),
                          ],
                          shape: BoxShape.rectangle,
                          gradient: AppColors.DROREDGRA,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Checkout',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              Image.asset(
                                  'assets/images/shopping-cart.png', height: 20,
                                  width: 20,
                                  color: Colors.white),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                                child: Text(cartItem == null ? '0': cartItem.length.toString(),
                                  textAlign: TextAlign.center,),
                              )
                            ]
                        )
                    )
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) =>
                  BlocProvider.value(value: BlocProvider.of<StoreBloc>(context)
                    ..add(AddedToCartEvent(cartItem: cartItem)),
                      child: CartView(),
                  ),),);
                  },
      ),
              floatingActionButtonLocation: FloatingActionButtonLocation
                  .endFloat,
            );
        })
    );
  }
}