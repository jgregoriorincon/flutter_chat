import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola, ¿cómo estás?', fromWho: FromWho.me),
    Message(text: 'Hola, bien y tú?', fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar el envío de mensajes
  }
}
