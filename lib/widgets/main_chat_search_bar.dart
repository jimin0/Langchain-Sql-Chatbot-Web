import 'package:flutter/material.dart';

// 검색바 
class MainChatSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: '메시지 SQL Chat',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: Icon(Icons.send),
      ),
    );
  }
}
