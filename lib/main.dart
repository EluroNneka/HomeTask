
import 'package:drohometask/storeBloc/storebloc.dart';
import 'package:drohometask/ui/views/cartview.dart';
import 'package:drohometask/ui/views/dashboardview.dart';
import 'package:drohometask/ui/views/productview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (BuildContext context) => StoreBloc(),
        child: DashBoardView(),
      ),
      initialRoute: '/',
    );
  }
}