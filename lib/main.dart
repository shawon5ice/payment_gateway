import 'package:flutter/material.dart';
import 'pages/cards.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STRIPE CHECKOUT', //app title
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //initial route
      initialRoute: '/home',
      routes: {
        //home and existing cards routes
        '/home': (context) => HomePage(),
        '/cards': (context) => ExistingCardsPage()},
    );
  }
}