import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
         title : const Text(
                  'Profile',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
         elevation: 0,  
        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          const Text(
            'Alvart Ainstain',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          const Text(
            '@albert_ainstain',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black54),
          ),
          TextButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.symmetric(),
                        borderRadius: BorderRadius.circular(12)),
                    child: Text('Edit', style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black ) )),
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.lock_clock_rounded),
                  Text(
                    '5',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  Text(
                    'On Going',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.check_box),
                  Text(
                    '25',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  Text(
                    'Total Complete',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
        
           Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Projects',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                 Padding(
                   padding: EdgeInsets.only(top : 5.0),
                   child: InkWell(
                    onTap:  (){},
                    child: Icon(Icons.arrow_forward , size : 20 )),
                 ),
              ],
            ),
          )),
          const SizedBox(height: 8,),
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding: EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Join a team',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                 Padding(
                   padding: EdgeInsets.only(top : 5.0),
                   child: InkWell(
                    onTap:  (){},
                    child: Icon(Icons.arrow_forward , size : 20 )),
                 ),
              ],
            ),
          )),
            const SizedBox(height: 8,),
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                 Padding(
                   padding: EdgeInsets.only(top : 5.0),
                   child: InkWell(
                    onTap:  (){},
                    child: Icon(Icons.arrow_forward , size : 20 )),
                 ),
              ],
            ),
          )),
            const SizedBox(height: 8,),
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Task',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                 Padding(
                   padding: EdgeInsets.only(top : 5.0),
                   child: InkWell(
                    onTap:  (){},
                    child: Icon(Icons.arrow_forward , size : 20 )),
                 ),
              ],
            ),
          )),


          
        ]),
      ),
      // bottomNavigationBar: _bottomNaviagtion(),
    );

  }
}
