class User {
  String? id;
  String? name;
  String? surname;
  String? profilePhoto;
  List<String>? friends;
  User(
      {required this.id,
      required this.name,
      required this.surname,
      required this.profilePhoto,
      required this.friends});
}
