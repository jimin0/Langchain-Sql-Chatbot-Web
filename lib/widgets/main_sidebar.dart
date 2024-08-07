import 'package:flutter/material.dart';

class MainSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // 사이드바의 너비를 설정
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color.fromARGB(173, 191, 179, 179), // 사이드바의 오른쪽 테두리 색상
            width: 1.0, // 사이드바의 오른쪽 테두리 두께
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // 위쪽 정렬
        children: <Widget>[
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.home), // home (채팅 메인)
                onPressed: () {},
              ),
              Text('홈')
            ],
          ),
          SizedBox(height: 20), // Column 사이의 간격
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.dashboard), // dashboard (대시보드)
                onPressed: () {},
              ),
              Text('대시보드')
            ],
          ),
          SizedBox(height: 20), // Column 사이의 간격
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.settings), // 설정 
                onPressed: () {},
              ),
              Text('설정')
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.account_circle), // 마이페이지
                onPressed: () {},
              ),
              Text('마이페이지')
            ],
          ),
        ],
      ),
    );
  }
}
