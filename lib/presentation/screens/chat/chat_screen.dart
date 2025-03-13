import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/entities/message.dart';
import 'package:flutter_chat/presentation/providers/chat_provider.dart';
import 'package:flutter_chat/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_chat/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_chat/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.me) ? MyMessageBubble(message: message,) : HerMessageBubble(message: message,);
                },
              ),
            ),
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
