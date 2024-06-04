import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_espacoeleva_app/helpers/utils.dart';

import 'home.dart';

class ImageSplashScreen extends StatefulWidget {
  const ImageSplashScreen({Key? key}) : super(key: key);

  @override
  _ImageSplashScreenState createState() => _ImageSplashScreenState();
}

class _ImageSplashScreenState extends State<ImageSplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rosaPrimario,
      body: Center(child: Image.asset('assets/splash_image.png', width: MediaQuery.of(context).size.width * 0.6)),
    );
  }
}
