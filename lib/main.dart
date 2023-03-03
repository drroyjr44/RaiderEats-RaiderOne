import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splashScreen/splash_screen.dart';


Future <void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();


  runApp(const MyApp());



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sellers App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
    );
  }
}

