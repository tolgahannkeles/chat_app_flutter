// ignore_for_file: file_names
import 'package:first_test/models/Message.dart';

class Conversation {
  String? id;
  String? name;
  List<String>? userIds;
  String? conversationPhoto;
  Message? lastMessage;
  String? messagesId;
  Conversation(
      {required this.id,
      required this.name,
      required this.userIds,
      required this.conversationPhoto,
      required this.lastMessage,
      required this.messagesId});
}
