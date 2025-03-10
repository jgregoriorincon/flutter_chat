import 'package:flutter/material.dart';
import 'package:flutter_chat/config/theme/app_theme.dart';
import 'package:flutter_chat/presentation/chat/chat_screen.dart';

class FlutterChatApp extends StatelessWidget {
  const FlutterChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: AppTheme(selectedColor: 7).theme(),
      title: 'Material App',
      home: ChatScreen(),
    );
  }
}
