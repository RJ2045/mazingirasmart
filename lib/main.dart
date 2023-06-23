import 'package:flutter/material.dart';
import 'package:mazingirasmart/screens/myhomepage.dart';
import 'package:mazingirasmart/screens/signin.dart';
import 'package:mazingirasmart/screens/signup.dart';
import 'customwidgets/custombutton.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'firebase_options.dart';

// Future<void> main() async {
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(
              0xFFEFFCED), // Replace with your desired hexadecimal color value
        ),
        home: const HomePage(),
        routes: {
          '/Signin': (context) => const SignIn(),
          '/Signup': (context) => const SignUp(),
           '/Myhomepage': (context) => const MyHomePage(),
          
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 20,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/mazingiralogo.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 120),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        color: Color(0xFF006633),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 150),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Signup');
                    },
                    child: const CustomButton(
                      title: 'Sign up',
                      outline: false,
                    ),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Signin');
                    },
                    child: const CustomButton(
                      title: 'Sign in',
                      outline: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
