import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'main_page.dart';
import 'setting_page.dart';

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