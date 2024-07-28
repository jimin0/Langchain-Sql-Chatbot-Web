import 'package:flutter/material.dart';

// 최근 조회 콘텐츠(대화) 목록
class MainChatRecentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '최근 조회 목록입니다!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 한 줄에 두 개의 항목을 배치
              childAspectRatio: 3 / 2, // 항목의 가로 세로 비율 설정
              crossAxisSpacing: 10, // 항목 간 가로 간격
              mainAxisSpacing: 10, // 항목 간 세로 간격
            ),
            itemCount: 6, // 항목 수
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey[300], // 배경색 설정
                child: Center(
                  child: Text('Query $index'), // 임시 텍스트
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
