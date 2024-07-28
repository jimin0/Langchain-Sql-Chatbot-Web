import 'package:flutter/material.dart';

// 메인화면이자 채팅 화면 

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
      ),
      body: Center(
        child: Text('채팅 화면'),
      ),
    );
  }
}