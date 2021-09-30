

import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class StoreView extends StatefulWidget{
  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:[
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
            child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade300,
                            child: AppBars(
                              title: 'Pharmacy',
                              icon: 'like.png',
                              icon1: 'fast.png',
                              search: true,
                            ),
                          ),

            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              color: Colors.grey.shade300,
                              child: Row(
                                children: [
                                  Image.asset('assets/images/pin.png', height: 15, width: 15,),
                                  SizedBox(width: 5,),
                                  RichText(text: TextSpan(
                                      children: [
                                        TextSpan(text: 'Delivery in ',
                                          style: TextStyle(
                                            fontFamily: 'Proxima Nova thin ',
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

                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
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
                                    itemCount: 6,
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
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
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

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('SUGGESTIONS',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),),
                                    SizedBox(height: 10,),

                                    Container(
                                      height: 600,
                                      child: GridView.builder(
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: 20,
                                        itemBuilder: (BuildContext context, int index) {
                                          return  InkWell(
                                            onTap: (){
                                              Navigator.of(context).pushNamed('/products');
                                            },
                                            child: Card(
                                                      elevation: 2,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                          children:[
                                                            Image.network('https://i1.wp.com/lifebackpharmacy.com/wp-content/uploads/2021/03/MB-Paracetamol-Tablets-8-x12.jpg?fit=225%2C225&ssl=1',width: 100,
                                                              height: 100,),
                                                                    Container(
                                                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                                          children: [
                                                                            Text('Paracetamol'),
                                                                            SizedBox(height: 5,),
                                                                            Text('Tablet * 500mg'),
                                                                            SizedBox(height: 10,),
                                                                            Text('N 350'),],
                                                                        )),
                                                                     ],
                                                                ),


                                              ),
                                          );

                                        },

                                      ),
                                    ),

                                  ],
                                ),],
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
            side: BorderSide(color:Colors.white,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30)),

          ),
          child:  Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: AppColors.DROREDLEFT.withOpacity(1.0), blurRadius: 10,spreadRadius: 0,offset: Offset(0,7)),
                  BoxShadow(color: AppColors.DROREDLEFT.withOpacity(1.0),blurRadius: 10,spreadRadius: 0,offset: Offset(7,0)),
                ],
                shape: BoxShape.rectangle,
                gradient: AppColors.DROREDGRA,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Text('Checkout',
              style:TextStyle(
                color: Colors.white,
              )),
              Image.asset('assets/images/shopping-cart.png', height:20, width: 20,color: Colors.white),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 color: Colors.orange,
                ),
            child: Text('2',
            textAlign: TextAlign.center,),
              )
            ]
          )
        )
      ),
  onTap: () {
    Navigator.of(context).pushNamed('/cart');
  },

),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}