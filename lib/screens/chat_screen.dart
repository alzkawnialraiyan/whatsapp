import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage("https://i.pinimg.com/736x/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg"),
          ),
          title: Text("Programmer"),
          subtitle: Text("online"),
        ),
        actions: [
          Icon(Icons.video_call_rounded),
          Icon(Icons.call),
          Icon(Icons.more_vert)
        ],
      ),
      body: Stack(
        children:[ 
          const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
              BubbleSpecialThree(
                text: "Hi, Developer, How are you?",
                  color: Color(0xFFece5dd),
                  tail: true,
                  isSender: false,
              ),
              BubbleSpecialThree(
                  text: "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you are also fine.",
                color: Color(0xFFdcf8c6),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
              ),
            ],
          ),
        ),
        MessageBar(
                onSend: (_) => print(_),
                actions: [
                  InkWell(
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: InkWell(
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.green,
                        size: 24,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
        ]
      ),
    );
  }
}