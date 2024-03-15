
import 'package:chat_app/features/home/pages/home_page.dart';
import 'package:chat_app/features/login/login.dart';
import 'package:chat_app/features/signup/signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
