import 'package:flutter/material.dart';
import '../widgets/main_chat_header.dart';
import '../widgets/main_chat_recent_view.dart';
import '../widgets/main_chat_reco_buttons.dart';
import '../widgets/main_chat_search_bar.dart';
import '../widgets/main_sidebar.dart';
import '../components/chat_bubble_base.dart'; // 채팅 버블 위젯 임포트

// 메인화면이자 채팅화면
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      backgroundColor: Colors.white,
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
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        ChatBubbleBase(
                          message: "안녕하세용 !",
                          isUser: true,
                        ),
                        ChatBubbleBase(
                          message: "안녕하세요 ai입니다.",
                          isUser: false,
                        ),
                        ChatBubbleBase(
                          message: "제주도 가고싶어용",
                          isUser: true,
                        ),
                        ChatBubbleBase(
                          message: "제주도에 대해 알려드리겠습니다.",
                          isUser: false,
                        ),
                        ChatBubbleBase(
                          message: "너가 말한 첫번째 장소에 대해 말해봐",
                          isUser: true,
                        ),
                        ChatBubbleBase(
                          message: "한라산은~~~~~~~~~~~.",
                          isUser: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  MainChatRecoButtons(), // 추천 질문 버튼
                  SizedBox(height: 20),
                  MainChatSearchBar(),  // 검색바
                  SizedBox(height: 20),
                  Expanded(child: MainChatRecentView()), // 최근 조회 콘텐츠(대화) 목록
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
