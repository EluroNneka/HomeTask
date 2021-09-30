import 'package:drohometask/ui/views/cartview.dart';
import 'package:drohometask/ui/views/dashboardview.dart';
import 'package:drohometask/ui/views/productview.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => DashBoardView(),
        '/products':(BuildContext context) => ProductDetailView(),
        '/cart': (BuildContext context) => CartView(),
      },
    );
  }
}