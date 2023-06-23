import 'package:flutter/material.dart';
import 'package:mazingirasmart/customwidgets/custombutton.dart';
import 'package:mazingirasmart/customwidgets/customtextfield.dart';
import 'package:mazingirasmart/customwidgets/samplepage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: " ",
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lets continue making our environments clean.',
            style: TextStyle(
                color: Color(0xFF006633),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Text("Sign In",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF006633),
              )),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            lebeltext: "Email Address",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            lebeltext: "Password",
          ),
          const SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Myhomepage');
            },
            child: const CustomButton(
              title: "Sign In",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
