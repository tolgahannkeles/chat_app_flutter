import 'package:first_test/models/Conversation.dart';
import 'package:first_test/models/Message.dart';
import 'package:first_test/services/message-provider.dart';
import 'package:first_test/services/user-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessageBox extends StatefulWidget {
  MessageBox({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    MessageProvider messageProvider = Provider.of<MessageProvider>(context);

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _isFocused = true;
                });
              },
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              controller: widget._textEditingController,
              style: const TextStyle(
                  height: 1.5), // Adjust the height value as needed
              decoration: InputDecoration(
                filled: true,
                hintText: "Message",
                contentPadding: EdgeInsets.zero,
                prefixIcon: IconButton(
                  icon: const Icon(Icons.emoji_emotions_rounded),
                  onPressed: () {},
                ),
                prefixIconColor: Colors.white,
                suffixIcon: Row(mainAxisSize: MainAxisSize.min, children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.attach_file_rounded)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.camera_alt))
                ]),
                suffixIconColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0, left: 5),
          child: Center(
            child: Ink(
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(_isFocused ? Icons.mic : Icons.send),
                color: Colors.white,
                onPressed: () {
                  var message = Message(
                    senderId: userProvider.localUser.id,
                    text: widget._textEditingController.text,
                    time: ("${DateTime.now().hour}:${DateTime.now().minute}"),
                  );
                  messageProvider.sendMessage(message);
                  widget._textEditingController.clear();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _isFocused = false;
  }
}
