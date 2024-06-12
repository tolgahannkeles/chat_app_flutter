import 'package:first_test/models/User.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  final User _localUser = User(
    id: "user1",
    name: "Tolga",
    surname: "Keleş",
    profilePhoto:
        "https://images.pexels.com/photos/5506141/pexels-photo-5506141.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    friends: ["user2", "user3"],
  );

  User get localUser => _localUser;
}
