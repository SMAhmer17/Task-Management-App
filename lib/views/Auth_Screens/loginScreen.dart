import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/views/Auth_Screens/createAccount.dart';
import 'package:task_management_app/views/homeScreen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}
 bool isloading = false;
class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
            child: const Text(
          'Sign in',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
        )),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Text(
                'Please enter your email address \nand password for Login',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Enter your Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('Enter Email');
                  }
                },
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter your password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('Enter Password');
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )),
              const SizedBox(
                height: 26,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  _auth.signInWithEmailAndPassword(email: emailController.text.toString(),
                       password: passwordController.text.toString()).then((value) {
                             setState(() {
                      isloading = false;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen() ));

                       })
                       .onError((error, stackTrace) {
                        SnackBar( backgroundColor: Colors.red,content: Text(error.toString() , style: TextStyle(color : Colors.white),));
                             setState(() {
                            isloading = false;
                    });
                       });
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 34, 116, 183)), // Background color
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const Center(
                  child: Text(
                'Signing with',
                style: TextStyle(color: Colors.black45, fontSize: 18),
              )),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Image(image: AssetImage('images/apple-logo.png')),
                    ),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Image(image: AssetImage('images/google.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Not Registered yet? ',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
