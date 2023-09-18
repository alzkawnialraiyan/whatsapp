import 'package:flutter/material.dart';
import 'package:whatsapp/components/setting_details.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  List<SettingDetails> details = [
    SettingDetails(
      icon: Icon(Icons.key),
      title: "Account",
      subtitle: "Privacy,security. change number"
    ),
    SettingDetails(
      icon: Icon(Icons.message),
      title: "Chats",
      subtitle: "Theme,wallpapers,chat history"
    ),
    SettingDetails(
      icon: Icon(Icons.notifications),
      title: "Notification",
      subtitle: "Message,group & call tones"
    ),
    SettingDetails(
      icon: Icon(Icons.circle_outlined),
      title: "Storage and Data",
      subtitle: "Network usage,auto-downlad"
    ),
    SettingDetails(
      icon: Icon(Icons.help_outline),
      title: "Help",
      subtitle: "Help centere,contact us, privacy policy"
    ),
    SettingDetails(
      icon: Icon(Icons.people_alt_rounded),
      title: "Invite a Friend",
      subtitle: ""
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          const ListTile(
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage("https://i.pinimg.com/736x/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg"),
          ),
          title: Text("Programmer"),
          subtitle: Text("Hey there, I am using WhatsApp."),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height*0.6,
          child: ListView.builder(
            itemCount: details.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: details[index].icon!,
                title: Text(details[index].title!),
                subtitle: Text(details[index].subtitle!),
              );
            },),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text("from"),
        ),
        Container(
          child: Text("Facebook",style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        )
        ],
      )
    );
  }
}