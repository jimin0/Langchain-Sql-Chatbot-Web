import 'package:flutter/material.dart';
import '../components/chat_aichatbubble.dart';
import '../components/chat_userchatbubble.dart';
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
      backgroundColor: Colors.white,
      body: Row(
        children: [
          MainSidebar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainChatHeader(),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        UserChatBubble(
                          message: "안녕하세용 !",
                          userName: "User",
                        ),
                        AIChatBubble(
                          message: "안녕하세요 ai입니다.",
                        ),
                        UserChatBubble(
                          message: "제주도 가고싶어용",
                          userName: "User",
                        ),
                        AIChatBubble(
                          message: "제주도에 대해 알려드리겠습니다.",
                        ),
                        UserChatBubble(
                          message: "너가 말한 첫번째 장소에 대해 말해봐",
                          userName: "User",
                        ),
                        AIChatBubble(
                          message: "한라산은~~~~~~~~~~~.",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  MainChatRecoButtons(),
                  SizedBox(height: 20),
                  MainChatSearchBar(),
                  SizedBox(height: 20),
                  Expanded(child: MainChatRecentView()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}