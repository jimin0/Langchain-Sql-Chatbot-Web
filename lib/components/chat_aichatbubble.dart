import 'package:flutter/material.dart';
import 'chat_bubble_base.dart';

class AIChatBubble extends StatelessWidget {
  final String message;

  AIChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return ChatBubbleBase(
      message: message,
      isUser: false,
    );
  }
}