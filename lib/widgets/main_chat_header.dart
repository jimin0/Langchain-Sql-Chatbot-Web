import 'package:flutter/material.dart';

// pages/chat_screen.dart 에 사용 - > headr 메시지

class MainChatHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '옥돌민님, ',
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '안녕하세요. ',
            style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '오늘은 어떤 도움을 드릴까요?',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
