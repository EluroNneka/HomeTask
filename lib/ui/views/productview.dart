

import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
         // height: 1300,

          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: AppBars(
                  lead: Icons.arrow_back_ios,
                  title: 'Pharmacy',
                  icon: 'shopping-cart.png',
                  search: false,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 1100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network('https://pharmacy.marvicanihealth.com/wp-content/uploads/2020/09/emzor-paracetamol-tablets-247x250.jpg',
                        height: 250, width: 200, fit: BoxFit.contain,)
                      ,),
                    SizedBox(height: 20,),
                    Center(
                      child: Text('Emzor Paracetamol',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black ,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: Text('Tablet - 500 mg',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),),
                    ),
                    SizedBox(height: 20),
                    Row( //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                            ),
                            child: Image.network('https://www.emzorpharma.com/wp-content/uploads/2021/03/Emzor-Logo-HIRES-1.jpg',
                              height:15, width:25,fit: BoxFit.contain,)),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text('SOLD BY',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey ,
                                ),
                              textAlign: TextAlign.center,),
                              Text('Emzor Pharmaceuticals',style: TextStyle(
                                fontSize: 12,
                                color: Colors.blueGrey ,
                              ),
                              textAlign: TextAlign.center,),
                            ]
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 30,
                          padding: EdgeInsets.all(5),
                          child: Image.asset('assets/images/like.png', height: 15, width: 15, color: AppColors.DROPURPLE,),
                          decoration: BoxDecoration(
                            color: AppColors.DROPURPLE.withOpacity(0.1),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            shape: BoxShape.rectangle,
                          ),
                        )
                      ],
                    ),
SizedBox(height: 20,),
                    Row( //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 40,
                            width: 100,
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
                                Icon(Icons.horizontal_rule_sharp,size: 20,),
                                SizedBox(width: 15,),
                                Text('1'),
                                SizedBox(width: 15,),
                                Icon(Icons.add,size: 20,),
                              ],
                            ),
                        ),
                              SizedBox(width: 10,),
                              Text('Pack(s)',
                              style:TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              )),

                        Spacer(),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(text: 'N ',
                                style: TextStyle(
                                  fontFamily: 'Proxima Nova thin ',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(text: '600.',
                                style: TextStyle(
                                  fontFamily: 'Proxima_Nova_Alt_Bold',
                                  fontSize: 18,
                                  color: Colors.black,
                                ),),
                              TextSpan(text: '00',
                                style: TextStyle(
                                  fontFamily: 'Proxima_Nova_Alt_Bold',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),),
                            ]
                        ))
                      ],
                    ),

                    SizedBox(
                      height:30,
                    ),

                    Text('PRODUCT DETAILS',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey ,
                      ),
                    textAlign: TextAlign.start,),
                    SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                DetailItem(
                                  image: 'assets/images/pills.png',
                                  text: 'PACK SIZE',
                                  text2: '8 X 12 tablets(96)',
                                ),
                               SizedBox(height: 20),

                                DetailItem(
                                  image: 'assets/images/pill.png',
                                  text: 'CONSTITUENTS',
                                  text2: 'Paracetamol',
                                ),],
                               ),
                            SizedBox(width: 70,),
                            Column(
                              children: [
                                DetailItem(
                                  image: 'assets/images/qr-code.png',
                                  text: 'PRODUCT ID',
                                  text2: 'PRO26548856',
                                ),
                                SizedBox(height: 20,),
                                DetailItem(
                                  image: 'assets/images/paper-cup.png',
                                  text: 'DISPENSED IN',
                                  text2: 'Packs',
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(width: 20,),

                    SizedBox(height: 30,),
                    Text('1 pack of Emzor Paracetamol(500mg) contains 8 units of 12 tablets',
                      style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),),

                    SizedBox(height: 30,),
                    Text('Similar Products',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45 ,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return
                            Row(
                              children: [
                                Container(
                                  height: 180,
                                  width: 150,
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
                                ),
                                SizedBox(width: 10,),
                              ],
                            );

                        },

                      ),
                      ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        showModalBottomSheet(context: context,
                            shape: RoundedRectangleBorder(borderRadius: 
                            BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                            builder: (context){
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10,),

                                Text('Emzor Paracetamol has been successfully added to cart!',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 30,),
                                InkWell(
                                  onTap:(){
                                    Navigator.of(context).pushNamed('/cart');
                              },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      gradient: AppColors.DROPURPLEGRA,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 15,),
                                    child:
                                        Center(
                                          child: Text('VIEW CART',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap:(){
                                    Navigator.of(context).pushNamed('/');
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppColors.DROPURPLE,width: 2)
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 15, ),
                                    child:
                                    Center(
                                      child: Text('CONTINUE SHOPPING',
                                        style: TextStyle(
                                          color: AppColors.DROPURPLE,
                                          fontSize: 14,
                                        ),),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          );
                            });
                      },
                      child: Container(
                        height: 50,
                          width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: AppColors.DROPURPLEGRA,
                          borderRadius: BorderRadius.circular(10),
                            ),
                        padding: EdgeInsets.symmetric(vertical: 5,),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/shopping-cart.png',height: 30, width: 40, color: Colors.white,),
                              SizedBox(width: 20,),
                              Text('Add to cart',
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                            ],
                          ),
                      ),
                    ),

                  ],
                ),
              ),



            ],
          ),
        ),
      ),

    );
  }


}
class DetailItem extends StatelessWidget {
  final String? image;
  final String? text;
  final String? text2;

  const DetailItem({Key? key, this.image, this.text, this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(image!, height: 25, width: 25, color: AppColors.DROPURPLE,),
          SizedBox(width: 10),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text!,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blueGrey,
                ),),
                SizedBox(height: 5,),
                Text(text2!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),),
              ]),

        ],
      ),
    );
  }
}