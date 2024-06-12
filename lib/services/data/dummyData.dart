import 'package:first_test/models/Conversation.dart';
import 'package:first_test/models/Message.dart';
import 'package:first_test/models/User.dart';

List<Conversation> dummyConservations = [
  Conversation(
    id: "1",
    name: "Agalar",
    userIds: ["user1", "user2", "user3"],
    conversationPhoto:
        "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
    lastMessage: Message(senderId: "user2", text: "Gruptayız la", time: "12:35"),
    messagesId: 'messages1',
  ),
  Conversation(
    id: "2",
    name: "At avrat",
    userIds: ["user1", "user2"],
    conversationPhoto:
        "https://image.milimaj.com/i/milliyet/75/1100x570/61762a4945d2a0a1041b6763.jpg",
    lastMessage: Message(senderId: "user1", text: "Tank mı", time: "12:41"),
    messagesId: 'messages2',
  ),
  Conversation(
    id: "3",
    name: "Yer miyiz",
    userIds: ["user2", "user3"],
    conversationPhoto: "https://erolokutucu.com/wp-content/uploads/2011/03/At-Hobi-2.jpg",
    lastMessage: Message(senderId: "user2", text: "Aloooooooooo", time: "21:41"),
    messagesId: 'messages3',
  ),
  Conversation(
    id: "4",
    name: "Tankım nerde",
    userIds: ["user1", "user3"],
    conversationPhoto:
        "https://www.sarsilmaz.com/public/storage/images/b5207c09-2cf3-45a5-2609-ef1634b65a00.jpg/",
    lastMessage: Message(senderId: "user3", text: "Tak tak", time: "21:41"),
    messagesId: 'messages4',
  ),
];

List<User> dummyUsers = [
  User(
    id: "user1",
    name: "Tolga",
    surname: "Keleş",
    profilePhoto:
        "https://images.pexels.com/photos/5506141/pexels-photo-5506141.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    friends: ["user2", "user3"],
  ),
  User(
    id: "user2",
    name: "Sude",
    surname: "Keleş",
    profilePhoto: "https://fotolifeakademi.com/uploads/2021/01/insan-fotograflari.webp",
    friends: ["user1"],
  ),
  User(
    id: "user3",
    name: "Hakan",
    surname: "Keleş",
    profilePhoto:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    friends: ["user1"],
  ),
];
