import 'package:flutter/material.dart';
import 'package:myapp/presentation/screens/chat/widgets/chat/her_message_bubble.dart';
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
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: <Widget>[
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              })),

              // Message field box
              const MessageFieldBox()
            ])));
  }
}
