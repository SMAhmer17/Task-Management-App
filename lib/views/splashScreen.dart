import 'package:flutter/material.dart';

import 'Onboarding_Screen/onboarding_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            child: Image(image: AssetImage('images/cover.png')),),
      
        Container(
          color: Colors.white,
          
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height: 25,),
                const Text('Taskey' , style: TextStyle(fontSize: 50 , color: Colors.blue , fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text('Building Better \n \t\t Workplaces',  style: TextStyle(fontSize: 30 , color: Colors.black , fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Center(child: Text('Create a unique emotional story that \n\t\t\t\tdescribes better than words' ,  style: TextStyle(fontSize: 20 , color: Colors.black87 , fontWeight: FontWeight.w400),)),
                 const SizedBox(height: 20,),
                 
                ElevatedButton( onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => introScreen() ));
                }  ,
                 style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 34, 116, 183)),// Background color
                 child: const Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Get Started',  style: TextStyle(fontSize: 25 , color: Colors.white , fontWeight: FontWeight.bold),),
                 ), )
              ],
            
          )
          ),
  ]),
        
        
      );
  
        
        }
    
    
  }

