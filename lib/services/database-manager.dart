import 'package:first_test/models/User.dart';
import 'package:first_test/services/data/dummyData.dart';

class DatabaseManager {
  Future<User> getUserWithId(String id) async {
    await Future.delayed(const Duration(seconds: 2));
    return dummyUsers.where((element) => (element.id ?? "null") == id).toList().first;
  }
}
