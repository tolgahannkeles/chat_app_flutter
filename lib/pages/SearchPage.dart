import 'package:first_test/models/User.dart';
import 'package:first_test/services/data/dummyData.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<User> foundedUsers = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
              child: TextField(
                onChanged: (value) {
                  foundedUsers = dummyUsers
                      .where((element) =>
                          (element.name!.toLowerCase().contains(value.toLowerCase())))
                      .toList();
                  setState(() {});
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade900)),
                    prefix: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                        ))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => _foundedItem(foundedUsers[index]),
                itemCount: foundedUsers.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _foundedItem(User user) {
  return Card(
    child: ListTile(
      title: Text(user.name ?? "null"),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.profilePhoto ??
            "https://api-private.atlassian.com/users/d538b8c8c175eea5823ce7134cb73730/avatar"),
      ),
    ),
  );
}
