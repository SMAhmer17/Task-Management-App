
import 'package:flutter/material.dart';
import 'package:task_management_app/views/Profile/profile_screen.dart';
import 'package:task_management_app/views/addProjectScreen.dart';
import 'package:task_management_app/views/project.dart';

import 'chatScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       
        // leading: InkWell(
        //           onTap: (){
        //             drawer : Drawer(
        //               child: Title(color: Colors.white, child: Text('Hello')),
        //               backgroundColor: Colors.blue.shade400,);
        //           },
        //           child:const Icon(
        //             Icons.menu,
        //             size: 30,
        //           ),
        //         ) ,
        centerTitle: true,
         title : const Text(
                  'Friday, 26',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
         actions: const [
          Icon(Icons.notification_add, size: 30),
              SizedBox(width: 14,)
         ],     
         elevation: 0,  
        ),
    
        drawer:  Drawer(child: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            children: [
              Title(color: Colors.blue, child: Text('Task Management App'))
            ],
          ),
        )),
        body: SingleChildScrollView(
            child: Padding(
      // padding: const EdgeInsets.only(bot15),
      padding: const EdgeInsets.only(bottom : 15.0 ,left: 18.0 , right:13.0 ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Let's make a \nhabbits together 🙌 ",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
              const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [ Card(
                color: Colors.blue.shade400,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical : 18.0 , horizontal: 22),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Application Design',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('UI Design kit',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Positioned(
                                child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                            )),
                        
                          ],
                        )
                      ]),
                ),
              ),
              Card(
                color: Colors.blue.shade400,
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Application Design',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('UI Design kit',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Positioned(
                                child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                            )),
                        
                          ],
                        )
                      ]),
                ),
              ),
            ],),
            ),
           
              const SizedBox(
              height: 20,
            ),
             const Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "In Progress",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward , size : 28),],
            ),
               const Column(
                 children: [
                   Card(
                        child : Padding(
                          padding: EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Productivity Mobile App' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 15),),
                                  Text('Create Detail Booking' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                                  Text('2 min ago' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14),),
                                  ],),

                                  Icon(Icons.incomplete_circle)
                            ],
                          ),
                        )),
                
                            Card(
                        child : Padding(
                          padding: EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Banking Mobile App' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 15),),
                                  Text('Revision Home Page' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                                  Text('5 min ago' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14),),
                                  ],),

                                  Icon(Icons.incomplete_circle)
                            ],
                          ),
                        )),
               
                           Card(
                        child : Padding(
                          padding: EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Crypto Mobile App' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 15),),
                                  Text('Create Dashboard' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                                  Text('6 min ago' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14),),
                                  ],),

                                  Icon(Icons.incomplete_circle)
                            ],
                          ),
                        )),
               
                           Card(
                        child : Padding(
                          padding: EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Online Course' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 15),),
                                  Text('Working of Landing page' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                                  Text('7 min ago' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14),),
                                  ],),

                                  Icon(Icons.incomplete_circle)
                            ],
                          ),
                        )),
               
                 ],
               
             )

          
          ]),



    ),
    ),

  bottomNavigationBar: _bottomNaviagtion(context),
    
    );
   
  }
    static Widget _bottomNaviagtion(BuildContext context){
     return Padding(
       padding: const EdgeInsets.all(15.0),
       child: Row
       (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:

        [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen() ));
            },
            child: Icon(Icons.home , size: 25,) , focusColor: Colors.blue.shade400 ,),
     
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ProjectScreen() ));
            },
            child: Icon(Icons.folder, size: 25,) , focusColor: Colors.blue.shade400 ,),
     
            InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => const addProjectScreen() ));
            },
            child: Icon(Icons.add, size: 50,) , focusColor: Colors.blue.shade400 ,),
     
            InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ChatScreen() ));
            },
            child: Icon(Icons.message, size: 25,) , focusColor: Colors.blue.shade400 ,),
     
            InkWell(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen() ));
            },
            child: Icon(Icons.person, size: 25,) , focusColor: Colors.blue.shade400 ,),
       ],),
     );         
    }
}
