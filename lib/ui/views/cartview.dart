

import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,

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
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return
                         CartItem(
                           image: 'https://pharmacy.marvicanihealth.com/wp-content/uploads/2020/09/emzor-paracetamol-tablets-247x250.jpg',
                           name: 'Paracetamol',
                           form: 'Tablet 500mg',
                           price:'N 1500.00',
                         );

                    }, separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                  },

                  ),
                ),
                SizedBox(height: 30,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    children: [
                      Text('Total: 4500.00'),
                      Spacer(),
                      InkWell(
                        onTap:(){
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: AppColors.DROPURPLEGRA,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15, ),
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


}
class CartItem extends StatelessWidget {
  final String? image;
  final String? name;
  final String? form;
  final String? price;

  const CartItem({Key? key, this.image, this.name, this.form, this.price,}) : super(key: key);



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
              child: Image.network(image!, height: 100, width: 100,)),
          SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),),
                SizedBox(height: 5,),
                Text(form!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),
                SizedBox(height: 5,),
                Text(price!,
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
                width: 70,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('1'),
                    SizedBox(width: 15,),
                    Icon(Icons.keyboard_arrow_down,size: 20,),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Image.asset('assets/images/bin.png', height: 20, width: 15, color: AppColors.DROPURPLE,),
                  SizedBox(width: 10,),
                Text(' Delete',
                style: TextStyle(fontSize: 10,
                color: AppColors.DROPURPLE),),
                ],
              ),

            ],
          )

        ],
      ),
    );
  }
}