import 'package:flutter/material.dart';
import 'package:flutter_espacoeleva_app/helpers/utils.dart';
import 'package:flutter_espacoeleva_app/view/image_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ImageSplashScreen(),
      title: appName,
      navigatorKey: applicationNavKey,
      routes: <String, WidgetBuilder>{
        '/ImageSplashScreen': (context) => const ImageSplashScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.brown,
        ),
        fontFamily: 'Poppins',
      ),
    );
  }
}
