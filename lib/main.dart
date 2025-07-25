import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notesfinalapp/firebase_options.dart';
import 'package:notesfinalapp/pages/alt_home_page.dart';
import 'package:notesfinalapp/pages/home_page.dart';
//import 'package:notesfinalapp/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AltHomePage(),
    );
    
  }
}