import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Chats> chatsUser =[
    Chats(
      image: "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://wallpapers.com/images/hd/cute-girl-vector-art-profile-picture-jhbu3wt713zj2bti.jpg",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://i.pinimg.com/736x/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),
    Chats(
      image: "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "Programmer",
      message: "Hi, Programmer, How are you?"
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.message_rounded,),
          backgroundColor: Colors.teal.shade900,),
      body: ListView.builder(
          itemCount: chatsUser.length,
          itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(chatsUser[index].image!),
              radius: 30,),
              title: Text(chatsUser[index].name!, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              subtitle: Text("Hi, Programmer, How are you?"),
              trailing: Column(
                children: [
                  Text("12:15", style: TextStyle(
                    color: Colors.green,
                    fontSize: 10
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 15,
                    child: Text("2"),
                  ),
                ],
              ),
            ),
          );
        },),
    );
  }
}