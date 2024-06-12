// ignore_for_file: file_names, must_be_immutable

import 'package:first_test/models/Conversation.dart';
import 'package:first_test/models/Message.dart';
import 'package:first_test/models/User.dart';
import 'package:first_test/services/data/dummyData.dart';
import 'package:first_test/services/database-manager.dart';
import 'package:first_test/services/message-provider.dart';
import 'package:first_test/services/user-provider.dart';
import 'package:first_test/widgets/message-box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConversationPage extends StatefulWidget {
  late Conversation conversation;
  ConversationPage({Key? key, required this.conversation}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  late List<Message> messages;
  late User localUser;
  UserProvider? userProvider;
  MessageProvider? messageProvider;
  DatabaseManager? databaseManager;

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context);
    messageProvider = Provider.of<MessageProvider>(context);
    databaseManager = DatabaseManager();
    messageProvider!.selectConversation(widget.conversation.id);
    messages = messageProvider!.getMessages();
    localUser = userProvider!.localUser;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.conversation.name ?? "null"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemBuilder: (context, index) =>
                  messageItem(messages[(index - (messages.length - 1)).abs()]),
              itemCount: messages.length,
            ),
          ),
          SizedBox(
            height: 75,
            child: MessageBox(
              textEditingController: messageController,
            ),
          ),
        ],
      ),
    );
  }

  //TODO: aga bura future olduğundan üstteki widget gelmiyor o düzeltilecek
  messageItem(Message message) async {
    User sender = await databaseManager!.getUserWithId(message.senderId ?? "null");
    EdgeInsets padding;
    if (sender.id == localUser.id) {
      padding = const EdgeInsets.only(left: 30);
    } else {
      padding = const EdgeInsets.only(right: 30);
    }
    return Padding(
      padding: padding,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(sender.profilePhoto ??
                "https://api-private.atlassian.com/users/d538b8c8c175eea5823ce7134cb73730/avatar"),
          ),
          title: Text("${sender.name!} ${sender.surname!}"),
          subtitle: Text(message.text ?? "null"),
          trailing: Text(message.time ?? "null"),
        ),
      ),
    );
  }
}
