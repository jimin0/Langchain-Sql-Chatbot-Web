import 'package:flutter/material.dart';

// 추천 질문 버튼
class MainChatRecoButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row( // 수평 정렬
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 동일 간격
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          // 임시 추천 질문 
          child: Text('매출 변동이 큰 제품은?'),
        ),
        ElevatedButton(
          onPressed: () {},
          // 임시 추천 질문 
          child: Text('오늘 매출에 대해 알려주세요.'),
        ),
        ElevatedButton(
          onPressed: () {},
          // 임시 추천 질문
          child: Text('현재 직원 조회'),
        ),
      ],
    );
  }
}
