import 'package:flutter/material.dart';
import 'package:task_management_app/views/addProjectScreen.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text(
            'Projects',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          actions:  [
            
             GestureDetector(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> addProjectScreen()));
              },
              child: Icon(Icons.add, size: 30)),
            SizedBox(
              width: 14,
            )
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
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Search'),
                ),
                const SizedBox(height: 20,),

                Tab(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 8),
                            child: Text('Favourites',
                            style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
                          )),

                          Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 8),
                            child: Text('Recents',
                            style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),),
                          ),

                          Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 15),
                            child: Text('All',
                            style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),),
                          ),

                          Icon(Icons.menu_outlined)

                    
                  ],
                ),),
                



                const SizedBox(height: 26,),
                Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Utility Dashboard',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                     Padding(
                       padding: EdgeInsets.only(top : 5.0),
                       child: InkWell(
                        onTap:  (){},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 4),
                            child: Text('10/20'),
                          ))),
                     ),
                  ],
                ),
                const Text(
                      'Design',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                const SizedBox(height: 6,),
                 const CircleAvatar(
                  backgroundColor:  Colors.blue,)
              ],
            ),
          )),
          const SizedBox(height: 12,),
               Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Instagram Shots',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                     Padding(
                       padding: EdgeInsets.only(top : 5.0),
                       child: InkWell(
                        onTap:  (){},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 4),
                            child: Text('10/20'),
                          ))),
                     ),
                  ],
                ),
                const Text(
                      'Design',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                const SizedBox(height: 6,),
                 const CircleAvatar(
                  backgroundColor:  Colors.red,),
              ],
            ),
          )),
          const SizedBox(height: 12,),
               Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cubbles',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                     Padding(
                       padding: EdgeInsets.only(top : 5.0),
                       child: InkWell(
                        onTap:  (){},
                        child:Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 4),
                            child: Text('10/20'),
                          ))),
                     ),
                  ],
                ),
                const Text(
                      'Design',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                const SizedBox(height: 6,),
                 const CircleAvatar(
                  backgroundColor:  Colors.purple,),
              ],
            ),
          )),
          const SizedBox(height: 12,),
               Card(
            color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
            padding:  EdgeInsets.symmetric( vertical : 12 , horizontal : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ui8 Platform',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                     Padding(
                       padding: EdgeInsets.only(top : 5.0),
                       child: InkWell(
                        onTap:  (){},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12)
                          )
                          ,child : const Padding(
                            padding: EdgeInsets.symmetric(vertical : 2 , horizontal: 4),
                            child: Text('10/20'),
                          ))),
                     ),
                  ],
                ),
                const Text(
                      'Design',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                const SizedBox(height: 6,),
                 const CircleAvatar(
                  backgroundColor:  Colors.yellow,),
              ],
            ),
          )),
              ],
            ),
          ),
        ));
  }
}
