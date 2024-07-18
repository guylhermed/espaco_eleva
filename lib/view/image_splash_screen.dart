import 'package:flutter/material.dart';

import 'package:flutter_espacoeleva_app/helpers/utils.dart';

import '../main.dart';
import 'home.dart';
import 'login.dart';

class ImageSplashScreen extends StatefulWidget {
  const ImageSplashScreen({Key? key}) : super(key: key);

  @override
  _ImageSplashScreenState createState() => _ImageSplashScreenState();
}

class _ImageSplashScreenState extends State<ImageSplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkSession();
  }

  _checkSession() async {
    final session = supabase.auth.currentSession;

    if (session != null) {
      _navigateToHome();
    } else {
      _navigateToLogin();
    }
  }

  _navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  _navigateToLogin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rosaPrimario,
      body: Center(child: Image.asset('assets/splash_image.png', width: MediaQuery.of(context).size.width * 0.6)),
    );
  }
}