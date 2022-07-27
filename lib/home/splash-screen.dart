import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_app/providers/product-provider.dart';
import 'package:furniture_app/template.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isInit = true;
  @override
  void initState() {
    // TODO: implement initState

    getInit();

    super.initState();
  }

  getInit() async{
    await Provider.of<ProductProvider>(context, listen: false).getProduct();
    Navigator.pushNamed(context, '/login-page');
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Center(
            child: Image.asset(
              'assets/img/img_login.png',
              width: 210,
              height: 75,
            ),
          ),
        ),
    );
  }
}