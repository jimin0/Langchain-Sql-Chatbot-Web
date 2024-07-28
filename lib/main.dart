import 'package:flutter/material.dart';
import 'pages/chat_screen.dart';
import 'pages/main_page.dart';
import 'pages/setting_page.dart';

// main.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Langchain Chatbot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/setting' : (context) => SettingsPage(),
        '/chat' : (context) => ChatScreen(),
      },
    );
  }
}