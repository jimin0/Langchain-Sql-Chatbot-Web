import 'package:flutter/material.dart';
import 'chat_bubble_base.dart';

// UserChatBubble 클래스는 사용자 이름과 메시지를 받아서 사용자 채팅 버블을 생성하는 StatefulWidget입니다.
class UserChatBubble extends StatefulWidget {
  final String message; // 메시지 텍스트
  final String userName; // 사용자 이름

  UserChatBubble({
    required this.message,
    required this.userName,
  });

  @override
  _UserChatBubbleState createState() => _UserChatBubbleState();
}

// _UserChatBubbleState 클래스는 UserChatBubble의 상태를 관리합니다.
class _UserChatBubbleState extends State<UserChatBubble> {
  late TextEditingController _controller; // 메시지 텍스트를 제어하는 컨트롤러
  bool _isEditing = false; // 현재 편집 모드 여부
  bool _isHovered = false; // 현재 마우스 호버 상태

  // 위젯이 처음 생성될 때 호출됩니다.
  @override
  void initState() {
    super.initState();
    // 메시지를 기본 텍스트로 설정하여 TextEditingController 초기화
    _controller = TextEditingController(text: widget.message);
  }

  // 위젯이 제거될 때 호출됩니다.
  @override
  void dispose() {
    // 메모리 누수를 방지하기 위해 컨트롤러 해제
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // 마우스가 위젯 위에 있을 때와 없을 때의 이벤트를 처리합니다.
      onEnter: (_) => setState(() => _isHovered = true), // 호버 상태로 설정
      onExit: (_) => setState(() => _isHovered = false), // 호버 상태 해제

      child: _isEditing // 편집 모드일 때
          ? Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (newValue) {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    setState(() {
                      _isEditing = false;
                    });
                  },
                ),
              ],
            )
          : ChatBubbleBase(
              message: _controller.text, // 현재 메시지 텍스트 설정
              isUser: true, // 사용자 메시지로 설정
              // 마우스가 호버 상태일 때만 편집 아이콘을 표시합니다.
              editWidget: _isHovered
                  ? Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 15.0),
                      child: GestureDetector(
                        // 편집 아이콘을 클릭하면 편집 모드로 전환합니다.
                        onTap: () => setState(() => _isEditing = true),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.edit_outlined, // 편집 아이콘
                            size: 16.0,
                          ),
                        ),
                      ),
                    )
                  : null, // 호버 상태가 아닐 때는 편집 아이콘을 표시하지 않습니다.
            ),
    );
  }
}
