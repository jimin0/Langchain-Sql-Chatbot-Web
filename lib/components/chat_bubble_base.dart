import 'package:flutter/material.dart';

class ChatBubbleBase extends StatelessWidget {
  final String message;
  final bool isUser;
  final Widget? editWidget;

  ChatBubbleBase({
    required this.message, // 메시지
    required this.isUser, // 유저 or ai 
    this.editWidget,  // 수정 여부 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) // AI 인 경우
            CircleAvatar(
              radius: 20.0,
              child: Icon(Icons.support_agent, size: 20.0),
            ),
          if (!isUser) SizedBox(width: 10.0),
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isUser ? Colors.white : Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  message,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          if (isUser) SizedBox(width: 10.0),
          if (isUser)
            CircleAvatar(
              radius: 20.0,
              child: Icon(Icons.person, size: 20.0),
            ),
          if (editWidget != null) editWidget!,
        ],
      ),
    );
  }
}