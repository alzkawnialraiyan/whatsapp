import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_screen.dart';
import 'package:whatsapp/screens/camera_screen.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/home_screen.dart';
import 'package:whatsapp/screens/settings.dart';
import 'package:whatsapp/screens/status_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    HomeScreen(),
    SettingScreen(),
    StatusScreen(),
    ChatsScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return ["Setting"].map((e){
                return PopupMenuItem(child: Text(e),
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => SettingScreen(),));
                   setState(() {});
                },);
              }).toList();
            },)
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded)
            ),
            Tab(child: Row(
              children: [
                Text("CHATS"),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Text("10",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black
                  ),),
                )
              ],
            ),),
            // text: "CHATS"
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ]),
        ),
        body: const TabBarView(children: 
        [
          CameraScreen(),
          HomeScreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}