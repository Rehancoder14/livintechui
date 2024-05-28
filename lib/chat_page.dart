import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purpulish,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
            ),
            Text('   Kitty Party')
          ],
        ),
      ),
    );
  }
}
