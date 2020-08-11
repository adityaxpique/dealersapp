import 'package:flutter/material.dart';
import 'package:dealersapp/Screens/login.dart';
import 'package:dealersapp/Screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Screens/DealerScreen.dart';
import 'Screens/Distributor.dart';
import 'Screens/DivisionHeadScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    divisionheadScreen.tag:(context)=>divisionheadScreen(),
    distributorScreen.tag:(context)=>distributorScreen(),
    dealerScreen.tag:(context)=>dealerScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Axact Studios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}