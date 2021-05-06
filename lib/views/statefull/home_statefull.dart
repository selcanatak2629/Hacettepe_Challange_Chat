import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje10/core/components/opacity/image_opacity.dart';
import 'package:proje10/core/enum/duration_enum.dart';
import 'package:proje10/core/image_manager.dart';

class HomeViewStatefull extends StatefulWidget {
  @override
  _HomeViewStatefullState createState() => _HomeViewStatefullState();
}

class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isloading = true;
  late final ImageManager imageManager;
  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.NORMAL.time());
    setState(() {
      _isloading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isloading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
        ],
      ),
    );
  }
}

/*
class _HomeViewStatefullState extends State<HomeViewStatefull> {
 
 @override
  void initState() {
   //ilk calısısan (contracter)istek atma olayları
    super.initState();
  }

  @override
  void dispose() {
   // widegetin cıktıgı anda bır seyler yapar
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
*/
