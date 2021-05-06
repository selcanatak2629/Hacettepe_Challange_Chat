import 'package:flutter/material.dart';
import 'package:proje10/views/statefull/home_statefull.dart';

 //materapp
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      home: HomeViewStatefull(),
    );
  }
}