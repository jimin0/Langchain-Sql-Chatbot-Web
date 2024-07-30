import 'package:flutter/material.dart';

class UserChatBubble extends StatefulWidget {
  final String message;
  final String userName;

  UserChatBubble({
    required this.message,
    required this.userName,
  });

  @override
  _UserChatBubbleState createState() => _UserChatBubbleState();
}

class _UserChatBubbleState extends State<UserChatBubble> {
  late TextEditingController _controller;
  bool _isEditing = false;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.message);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Icon(Icons.person, size: 20.0),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: _isEditing
                      ? TextField(
                          controller: _controller,
                          onSubmitted: (newValue) {
                            setState(() => _isEditing = false);
                          },
                        )
                      : Text(
                          _controller.text,
                          style: TextStyle(color: Colors.black),
                        ),
                ),
              ),
            ),
            if (_isHovered)
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 15.0),
                child: GestureDetector(
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
                      Icons.edit_outlined,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}