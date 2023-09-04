import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/views/Auth_Screens/loginScreen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  bool isloading = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

    FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose(){
    super.dispose();

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 3,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title:Center(child: const Text('Sign in',  style: TextStyle(fontSize: 25 , color: Colors.black , fontWeight: FontWeight.w500),)),
       automaticallyImplyLeading: false,
        ),
        
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding:  EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  const Text('Create Account',
                  style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w600 ,color: Colors.black ),),
            
                  const Text('Please enter your information\ncreate your account',
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400 ,color: Colors.black87 ),),
                  const SizedBox(height: 50,),
                    TextFormField(
                      controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)    
                      ),
                    hintText: 'Enter Name'
                    ),
                        validator: (value){
                      if(value!.isEmpty){
                        return ('Enter Name');
                      }
                    },
                  ),
                  SizedBox(height: 32,),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)    
                      ),
                    hintText: 'Enter your Email'
                    ),
                        validator: (value){
                      if(value!.isEmpty){
                        return ('Enter Email');
                      }
                    },
                  ),
                  SizedBox(height: 32,),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)    
                      ),
                    hintText: 'Enter your password'
                    ),
                        validator: (value){
                      if(value!.isEmpty){
                        return ('Enter Password');
                      }
                    },
                  ),
                  const SizedBox(height: 22,),
                  ElevatedButton( onPressed: (){
                    setState(() {
                      isloading = true;
                    });
                        if(_formKey.currentState!.validate()){
                      _auth.createUserWithEmailAndPassword(email: emailController.text.toString(),
                       password: passwordController.text.toString()).then((value) {
                             setState(() {
                      isloading = false;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_) => loginScreen() ));

                       })
                       .onError((error, stackTrace) {
                        SnackBar( backgroundColor: Colors.red,content: Text(error.toString() , style: TextStyle(color : Colors.white),));
                             setState(() {
                            isloading = false;
                    });
                       });
                    }
                        
                      }  ,
                       style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 34, 116, 183)),// Background color
                       child: const Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Sign up',  style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.w700),),
                       ), ),
                       const SizedBox(height: 17,),
                      const Center(child: Text('Signup with' ,
                      style: TextStyle(color: Colors.black45 , fontSize: 18),)),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){} ,
                            child: Container(
                             height: 40,
                              width: 40,
                             child: Image(image:  AssetImage('images/apple-logo.png')),
                            ),
                          ),
                          SizedBox(width: 55,),
                          InkWell(
                             onTap: (){} ,
                            child: Container(
                              height: 40,
                              width: 40,
                             child: Image(image:  AssetImage('images/google.png')),
                            ),
                          ),
                        ],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Have an Account? ' , style: TextStyle(fontSize: 16 , color: Colors.black54),),
                           InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> loginScreen()));},
                            child: Text('Sign in' , style:  TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),))],)
                      ]),
                    
                 
              ),
          ),
        ),
        );

    
  }
}