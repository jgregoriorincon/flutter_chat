import 'package:flutter/material.dart';
import 'package:flutter_chat/config/theme/app_theme.dart';
import 'package:flutter_chat/presentation/providers/chat_provider.dart';
import 'package:flutter_chat/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

class FlutterChatApp extends StatelessWidget {
  const FlutterChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        theme: AppTheme(selectedColor: 10).theme(),
        title: 'Material App',
        home: ChatScreen(),
      ),
    );
  }
}
