import 'package:flutter/material.dart';

import '../components/chat_UserChatBubble.dart';

// 연결 페이지 (임시) 
// API KEY 입력화면, Chatbot 메인화면으로 이동

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage(연결페이지 (임시))'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              child: Text('API Key 입력 화면으로 이동'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: Text('Chatbot 메인 화면으로 이동'),
            ),
            SizedBox(height: 20),
            Text(
              'User Chat Bubble Example:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            UserChatBubble(
              message: "Hello, this is a chat bubble!",
              userName: "User",
            ),
          ],
        ),
      ),
    );
  }
}