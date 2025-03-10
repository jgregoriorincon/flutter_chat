import 'package:flutter/material.dart';

class FlutterChatApp extends StatelessWidget {
  const FlutterChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
