import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1846573060318498817/QXmqOSaW_400x400.jpg',
            ),
          ),
        ),
        title: const Text('Nuestro chat ❤️'),
        centerTitle: false,
      ),
      body: Container(),
    );
  }
}
