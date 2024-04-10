import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';
import 'package:provider/provider.dart';

import 'package:myapp/presentation/providers/chat_provider.dart';
import 'package:myapp/presentation/screens/chat/widgets/chat/other_message_bubble.dart';
import 'package:myapp/presentation/screens/chat/widgets/chat/my_message_bubble.dart';
import 'package:myapp/presentation/screens/chat/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://chinchillacare.org/wp-content/uploads/2010/12/chinchilla-52.jpg'),
            )),
        title: const Text('My Baby <3'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      controller: chatProvider.chatScrollController,
                      itemCount: chatProvider.messageList.length,
                      itemBuilder: (context, index) {
                        final message = chatProvider.messageList[index];
                        return (message.fromWho == FromWho.other)
                            ? OtherMessageBubble(message: message)
                            : MyMessageBubble(message: message);
                      })),

              // Message field box
              MessageFieldBox(onValue: chatProvider.sendMessage),
            ])));
  }
}
