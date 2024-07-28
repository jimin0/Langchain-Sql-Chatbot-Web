import 'package:flutter/material.dart';

// 검색바 
class MainChatSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0, // 검색창의 높이를 설정
      child: TextField(
        decoration: InputDecoration(
          labelText: '메시지 SQL Chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: GestureDetector(
            onTap: () {
              print("첨부파일 아이콘 클릭됨");
            },
            child: Icon(Icons.attach_file),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                print("전송 아이콘 클릭됨");
              },
              child: Container(
                width: 40.0, // 전송 버튼의 너비
                height: 40.0, // 전송 버튼의 높이
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.send, color: Colors.white),
              ),
            ),
          ),
        ),
        onSubmitted: (String text) {
          print("입력한 텍스트: $text");
        },
      ),
    );
  }
}
