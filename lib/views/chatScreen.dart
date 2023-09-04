

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
         title : const Text(
                  'Chat',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
         actions: const [
          Icon(Icons.add, size: 30),
              SizedBox(width: 14,)
         ],     
         elevation: 0,  
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                   TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)    
                        ),
                      hintText: 'Enter your Email'
                      ),
                    ),
                    SizedBox(height: 14,),
                    for(int i = 0 ; i <= 10 ; i++)
                     const ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.black,),
                          title: Text('Ahmer'),
                          subtitle: Text("It's Finished!."),
                          trailing: Icon(Icons.camera_alt),
                        ),
                    
                    // ListView.builder(
                    //   itemCount: 10,
                    //   itemBuilder: (context , index){
                    //     return
                    //   })
            ]),
          ),
        ),
    
    );
  }
}