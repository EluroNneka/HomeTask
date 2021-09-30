import 'package:drohometask/styles/colors.dart';
import 'package:drohometask/ui/views/storeview.dart';
import 'package:drohometask/ui/widget/appbar.dart';
import 'package:drohometask/ui/widget/customnavbar.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget{

  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {

  int _selectedIndex = 2;

  List _widgetOptions = [
    StoreView(),
    StoreView(),
    StoreView(),
    StoreView(),
    StoreView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),

      bottomNavigationBar: CustomBottomNavigationBar(
      currentIndex: _selectedIndex,
      onChange: (index) => _onItemTapped(index),
      backgroundColor: Colors.white10,
      children: [
        CustomBottomNavigationItem(
          icon: 'home.png',
          label: 'Home',
        ),
        CustomBottomNavigationItem(
          icon: 'user.png',
          label: 'Doctors',
        ),
        CustomBottomNavigationItem(
          icon: 'add-to-shopping-cart.png',
          label: 'Pharmacy',
        ),
        CustomBottomNavigationItem(icon: 'chat.png', label: 'Community'),
        CustomBottomNavigationItem(icon: 'user-2.png', label: 'Profile'),
      ],
    ),

    );
  }
}