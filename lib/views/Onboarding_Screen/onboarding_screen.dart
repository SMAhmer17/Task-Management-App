
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_management_app/views/Auth_Screens/loginScreen.dart';


class introScreen extends StatefulWidget {
  const introScreen({super.key});

  @override
  State<introScreen> createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
       
       pages:  [
        PageViewModel(
          title: "Task Management" ,   
          body:
              "Let's create a \nspace for your \nworkflows.",
          image: Image.asset('images/intro1.png'),
          
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.asset('images/intro2.png'),
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.asset('images/intro3.png'),
        ),
        ],
  showSkipButton: true,
  skip: const Icon(Icons.skip_next),
  next: const Text("Next"),
  done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
  onDone: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => loginScreen()),);
    // On Done button pressed
  },
  onSkip: () {
    // On Skip button pressed
  },
  dotsDecorator: DotsDecorator(
    size: const Size.square(10.0),
    activeSize: const Size(20.0, 10.0),
    activeColor: Theme.of(context).colorScheme.secondary,
    color: Colors.black26,
    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0)
    ),
  ),
    ) ;
    
    
    
  }
}