import 'package:flutter/material.dart';
import '../widgets/main_chat_header.dart';
import '../widgets/main_chat_recent_view.dart';
import '../widgets/main_chat_reco_buttons.dart';
import '../widgets/main_chat_search_bar.dart';
import '../widgets/main_sidebar.dart';

// 메인화면이자 채팅화면

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: Row(
        children: <Widget>[
          MainSidebar(), // 사이드바
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MainChatHeader(), // 채팅화면 헤더
                  SizedBox(height: 100), 
                  MainChatRecoButtons(), // 추천 질문 버튼
                  SizedBox(height: 20),
                  MainChatSearchBar(),  // 검색바
                  SizedBox(height: 80),
                  Expanded(child: MainChatRecentView()), // 최근 조회 콘텐츠(대화) 목록
            
            
                  // 다른 UI 요소 추가예정
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
