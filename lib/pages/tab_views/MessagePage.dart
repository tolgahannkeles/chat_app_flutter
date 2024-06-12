// ignore_for_file: file_names

import 'package:first_test/models/Conversation.dart';
import 'package:first_test/services/data/dummyData.dart';
import 'package:first_test/pages/ConversationPage.dart';
import 'package:first_test/pages/SearchPage.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Conversation> conversations = dummyConservations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ));
              },
              icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: ListView.builder(
        itemCount: dummyConservations.length,
        itemBuilder: (context, index) => _conservationCard(conversations[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message_rounded),
      ),
    );
  }

  Widget _conservationCard(Conversation conversation) {
    return InkWell(
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(conversation.conversationPhoto ??
                "https://api-private.atlassian.com/users/d538b8c8c175eea5823ce7134cb73730/avatar"),
          ),
          title: Text(conversation.name ?? "null"),
          subtitle: Text(conversation.lastMessage?.text ?? "null"),
          trailing: Text(conversation.lastMessage?.time ?? "null"),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return ConversationPage(
              conversation: conversation,
            );
          },
        ));
      },
    );
  }
}
