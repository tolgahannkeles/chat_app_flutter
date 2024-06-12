import 'package:first_test/models/Message.dart';
import 'package:first_test/services/data/dummyData.dart';
import 'package:flutter/material.dart';

class MessageProvider with ChangeNotifier {
  String? _selectedConversationId;
  String? get selectedConversationId => _selectedConversationId;
  void selectConversation(String? id) {
    if (id != null) {
      _selectedConversationId = id;
      //notifyListeners();
    }
  }

  void sendMessage(Message message) {
    if (_selectedConversationId != null) {
      getMessages().add(message);
      notifyListeners();
    }
  }

  List<Message> getMessages() {
    switch (_selectedConversationId) {
      case "1":
        return dummyMessages1;
      case '2':
        return dummyMessages2;
      case '3':
        return dummyMessages3;
      case '4':
        return dummyMessages4;
      default:
        return [];
    }
  }

  List<Message> dummyMessages1 = [
    Message(senderId: "user1", text: "Selam", time: "12.41"),
    Message(senderId: "user2", text: "Merhaba", time: "12.42"),
    Message(senderId: "user3", text: "Nasılsın?", time: "12.45"),
    Message(senderId: "user1", text: "İyi misin?", time: "12.50"),
    Message(senderId: "user2", text: "Evet, sen?", time: "12.52"),
    Message(senderId: "user3", text: "Teşekkür ederim, iyiyim", time: "12.55"),
    Message(senderId: "user1", text: "Ne yapıyorsun?", time: "13.00"),
    Message(senderId: "user2", text: "Kitap okuyorum", time: "13.05"),
    Message(senderId: "user3", text: "Ben de film izliyorum", time: "13.10"),
    Message(senderId: "user1", text: "Hangi film?", time: "13.15"),
    Message(senderId: "user2", text: "Bilim kurgu", time: "13.20"),
    Message(senderId: "user3", text: "Güzel bir seçim", time: "13.25"),
    Message(senderId: "user1", text: "Teşekkür ederim", time: "13.30"),
    Message(senderId: "user2", text: "Rica ederim", time: "13.35"),
    Message(senderId: "user3", text: "Nerede yaşıyorsun?", time: "13.40"),
    Message(senderId: "user1", text: "İstanbul'da", time: "13.45"),
    Message(senderId: "user2", text: "Ankara'da", time: "13.50"),
    Message(senderId: "user3", text: "Farklı şehirlerdeyiz", time: "13.55"),
    Message(senderId: "user1", text: "Evet, uzak mesafeler", time: "14.00"),
    Message(senderId: "user2", text: "Ama teknoloji var", time: "14.05"),
    Message(senderId: "user3", text: "Evet, doğru", time: "14.10"),
  ];

  List<Message> dummyMessages2 = [
    Message(senderId: "user1", text: "Selam", time: "12.41"),
    Message(senderId: "user2", text: "Merhaba", time: "12.42"),
    Message(senderId: "user1", text: "Nasılsın?", time: "12.45"),
    Message(senderId: "user2", text: "İyi misin?", time: "12.50"),
    Message(senderId: "user1", text: "Evet, sen?", time: "12.52"),
    Message(senderId: "user2", text: "Teşekkür ederim, iyiyim", time: "12.55"),
    Message(senderId: "user1", text: "Ne yapıyorsun?", time: "13.00"),
    Message(senderId: "user2", text: "Kitap okuyorum", time: "13.05"),
    Message(senderId: "user1", text: "Ben de film izliyorum", time: "13.10"),
    Message(senderId: "user2", text: "Hangi film?", time: "13.15"),
    Message(senderId: "user1", text: "Bilim kurgu", time: "13.20"),
    Message(senderId: "user2", text: "Güzel bir seçim", time: "13.25"),
    Message(senderId: "user1", text: "Teşekkür ederim", time: "13.30"),
    Message(senderId: "user2", text: "Rica ederim", time: "13.35"),
    Message(senderId: "user1", text: "Nerede yaşıyorsun?", time: "13.40"),
    Message(senderId: "user2", text: "İstanbul'da", time: "13.45"),
    Message(senderId: "user1", text: "Ankara'da", time: "13.50"),
    Message(senderId: "user2", text: "Farklı şehirlerdeyiz", time: "13.55"),
    Message(senderId: "user1", text: "Evet, uzak mesafeler", time: "14.00"),
    Message(senderId: "user2", text: "Ama teknoloji var", time: "14.05"),
    Message(senderId: "user1", text: "Evet, doğru", time: "14.10"),
  ];

  List<Message> dummyMessages3 = [
    Message(senderId: "user3", text: "Selam", time: "12.41"),
    Message(senderId: "user2", text: "Merhaba", time: "12.42"),
    Message(senderId: "user3", text: "Nasılsın?", time: "12.45"),
    Message(senderId: "user2", text: "İyi misin?", time: "12.50"),
    Message(senderId: "user3", text: "Evet, sen?", time: "12.52"),
    Message(senderId: "user2", text: "Teşekkür ederim, iyiyim", time: "12.55"),
    Message(senderId: "user3", text: "Ne yapıyorsun?", time: "13.00"),
    Message(senderId: "user2", text: "Kitap okuyorum", time: "13.05"),
    Message(senderId: "user3", text: "Ben de film izliyorum", time: "13.10"),
    Message(senderId: "user2", text: "Hangi film?", time: "13.15"),
    Message(senderId: "user3", text: "Bilim kurgu", time: "13.20"),
    Message(senderId: "user2", text: "Güzel bir seçim", time: "13.25"),
    Message(senderId: "user3", text: "Teşekkür ederim", time: "13.30"),
    Message(senderId: "user2", text: "Rica ederim", time: "13.35"),
    Message(senderId: "user3", text: "Nerede yaşıyorsun?", time: "13.40"),
    Message(senderId: "user2", text: "İstanbul'da", time: "13.45"),
    Message(senderId: "user3", text: "Ankara'da", time: "13.50"),
    Message(senderId: "user2", text: "Farklı şehirlerdeyiz", time: "13.55"),
    Message(senderId: "user3", text: "Evet, uzak mesafeler", time: "14.00"),
    Message(senderId: "user2", text: "Ama teknoloji var", time: "14.05"),
    Message(senderId: "user3", text: "Evet, doğru", time: "14.10"),
  ];

  List<Message> dummyMessages4 = [
    Message(senderId: "user3", text: "Merhaba", time: "12.41"),
    Message(senderId: "user1", text: "Selam, nasılsın?", time: "12.42"),
    Message(senderId: "user3", text: "İyi günler", time: "12.45"),
    Message(
        senderId: "user1", text: "Teşekkür ederim, senden nasıl haber?", time: "12.50"),
    Message(senderId: "user3", text: "Ben de iyiyim, teşekkür ederim", time: "12.52"),
    Message(senderId: "user1", text: "Ne yapıyorsun?", time: "12.55"),
    Message(senderId: "user3", text: "Şu an bir kitap okuyorum", time: "13.00"),
    Message(senderId: "user1", text: "Hangi kitap?", time: "13.05"),
    Message(senderId: "user3", text: "Bilim kurgu romanı", time: "13.10"),
    Message(
        senderId: "user1",
        text: "Güzel bir seçim, ben de bir film izliyorum",
        time: "13.15"),
    Message(senderId: "user3", text: "Hangi film?", time: "13.20"),
    Message(senderId: "user1", text: "Aksiyon türünde bir film", time: "13.25"),
    Message(
        senderId: "user3", text: "Harika, umarım keyifli bir film olur", time: "13.30"),
    Message(
        senderId: "user1",
        text: "Teşekkür ederim, senden haber almak güzel",
        time: "13.35"),
    Message(
        senderId: "user3",
        text: "Rica ederim, seninle sohbet etmek de güzel",
        time: "13.40"),
    Message(senderId: "user1", text: "Nerede yaşıyorsun?", time: "13.45"),
    Message(senderId: "user3", text: "Ankara'da yaşıyorum", time: "13.50"),
    Message(senderId: "user1", text: "Ben de İstanbul'da", time: "13.55"),
    Message(
        senderId: "user3",
        text: "Güzel bir şehir, ziyaret etmeyi düşünüyor musun?",
        time: "14.00"),
    Message(
        senderId: "user1",
        text: "Evet, bir gün ziyaret etmeyi planlıyorum",
        time: "14.05"),
  ];
}
