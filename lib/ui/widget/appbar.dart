import 'package:drohometask/styles/colors.dart';
import 'package:flutter/material.dart';


class AppBars extends StatelessWidget{
  final String title;
  final String? icon;
  final String? icon1;
  final String? icon2;
  final IconData? lead;
  final bool? search;

  AppBars({required this.title, this.icon, this.icon1, this.lead, this.search, this.icon2});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24,),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        gradient: AppColors.DROPURPLEGRA,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
      ),
     height:  search == true ? 200 : 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),

          Row(

            children: [
              lead != null ? InkWell(

                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Icon(lead,color: Colors.white,) ,
              ): Container(),
            lead != null ? SizedBox(width: 10,) :Container(),
              icon2 != null ? Image.asset('assets/images/$icon2',height: 25, width: 25, color: Colors.white,): Container(),
              icon2 != null ? SizedBox(width: 10,) :Container(),
            Text(title,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Proxima Nova Bold',
                color: Colors.white,
            ),),
                 Spacer(),
              Stack(
                alignment: Alignment.topRight,
            children:[
              Image.asset('assets/images/$icon', height: 25, width: 25, color: Colors.white,),
    Container(
    height: 7,
    width: 7,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.orange,
    ),
    ),
    ]
    ),
              SizedBox(width: 20,),
            icon1 != null?  Stack(alignment: Alignment.centerRight,
                  children:[
                Image.asset('assets/images/$icon1', height: 50, width: 35, color: Colors.white,),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
              ]):Container(),
            ],
          ),

         search != null ? SizedBox(height: 10,): Container(),

          search == true ?  Container(
            height: 40,
            width: 350,
            child: TextField(
              textAlign: TextAlign.left,
              textAlignVertical: TextAlignVertical.bottom,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white,
                fontSize: 16,
                ),
                prefixIcon: Icon(Icons.search_rounded,color: Colors.white,),
                filled: true,
                fillColor: Colors.white24,
              ),
            ),
          ): Container(),
        ],
      ),
    );
  }


}