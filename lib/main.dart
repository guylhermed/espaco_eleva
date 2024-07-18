import 'package:flutter/material.dart';
import 'package:flutter_espacoeleva_app/helpers/utils.dart';
import 'package:flutter_espacoeleva_app/view/image_splash_screen.dart';
import 'package:flutter_espacoeleva_app/view/login_supabase.dart';
import 'package:flutter_espacoeleva_app/view/perfil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://inirrbbjiynfwyltrppl.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImluaXJyYmJqaXluZnd5bHRycHBsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc1MjEzNTksImV4cCI6MjAzMzA5NzM1OX0.jb_WMP8nE1SDZ0zVrXi-A-MXcnXjP5cNLTbICVyXoSs',
  );

  runApp(MyApp());
}

final supabase = Supabase.instance.client;

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

// EXEMPLO SUPABASE
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Supabase Flutter',
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Colors.green,
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             foregroundColor: Colors.green,
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.white,
//             backgroundColor: Colors.green,
//           ),
//         ),
//       ),
//       initialRoute: '/',
//       routes: <String, WidgetBuilder>{
//         '/': (_) => const ImageSplashScreen(),
//         '/login': (_) => const LoginPage(),
//         '/account': (_) => const AccountPage(),
//       },
//     );
//   }
// }
