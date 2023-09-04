import 'package:flutter/material.dart';

class addProjectScreen extends StatefulWidget {
  const addProjectScreen({super.key});

  @override
  State<addProjectScreen> createState() => _addProjectScreenState();
}

class _addProjectScreenState extends State<addProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
         title : const Text(
                  'Add Task',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
         actions: const [
          Icon(Icons.add, size: 30),
              SizedBox(width: 14,)
         ],     
         elevation: 0,  
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
           [
            const Text('Task Name',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),

            const SizedBox(height: 12,),

            Container(
              width: MediaQuery.of(context).size.width * 100,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 15.0 , horizontal:  14),
                child: Text('Mobile Application Development',style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w800),)),
              ),
              const SizedBox(height: 20,),
              Text('Team Members',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),

            const SizedBox(height: 12,),

            const Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(backgroundColor: Colors.black,),
                     Text('Jenny',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.black54),),
                  ],
                ),
                SizedBox(width: 8,),

                 Column(
                  children: [
                    CircleAvatar(backgroundColor: Colors.pink,),
                     Text('Mehrin',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.black54),),
                  ],
                ),
                SizedBox(width: 8,),

                 Column(
                  children: [
                    CircleAvatar(backgroundColor: Colors.yellow,),
                     Text('Avishek',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.black54),),
                  ],
                ),
                SizedBox(width: 8,),

                 Column(
                  children: [
                    CircleAvatar(backgroundColor: Colors.green,),
                     Text('Jafer',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.black54),),
                  ],
                ),
                SizedBox(width: 8,),

                Column(
                  children: [
                    CircleAvatar(
                      
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.add ,),),
                     Text('Add',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.black54),),
                  ],
                ),
            ],
            ),
            const SizedBox(height: 18,),
            Text('Date',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),

            const SizedBox(height: 12,),

            Container(
              width: MediaQuery.of(context).size.width * 100,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 15.0 , horizontal:  14),
                child:  Text('November 01,2023',style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w800),),
              ),),
              SizedBox(height: 18,),

               
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('Start Time',
                   style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),

            SizedBox(height: 12,),

            Container(
              width: MediaQuery.of(context).size.width * .40,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 15 , horizontal:  12),
                child: Text('9:30 am',style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w800),)),
              ),
                  ],
                ),

                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('End Time',
                   style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),

            const SizedBox(height: 12,),

            Container(
              width: MediaQuery.of(context).size.width * .40,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 15 , horizontal:  12),
                child: Text('3:30 pm',style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w800),)),
              ),
                  ],
                ),

               ],),
                const SizedBox(height: 18,),

                Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Board',
                   style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: Colors.black54),),
                  const SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       Container(
              width: MediaQuery.of(context).size.width * .28,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 10 , horizontal:  12),
                child: Center(child: Text('Urgent',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w700),))),
              ),

               Container(
              width: MediaQuery.of(context).size.width * .28,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 10 , horizontal:  12),
                child: Center(child: Text('Running',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w700),))),
              ),

               Container(
              width: MediaQuery.of(context).size.width * .28,
              decoration:  BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(12),
                            
                          ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical : 10 , horizontal:  6),
                child: Center(child: Text('Ongoing',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w700),))),
              ), ],
                  ),
                  const SizedBox(height: 22,),
                  
                  ],
                ),
                 ElevatedButton( onPressed: (){
                      
                    }  ,
                     style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 34, 116, 183)),// Background color
                     child: const Center(
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Save',  style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.w700),),
                       ),
                     ), ),


               
            
            

          ],),
        ),
    
    );
  }
}