import 'package:flutter/material.dart';
import 'package:mazingirasmart/customwidgets/custombutton.dart';
import 'package:mazingirasmart/customwidgets/customtextfield.dart';
import 'package:mazingirasmart/customwidgets/samplepage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SamplePage(
      title: " ",
      child: Column(
        children: [
          SizedBox(
              height: 20,
            ),
            Text(
              'Join us today \nto make our environments clean.',
              style: TextStyle(color: Color(0xFF006633), fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text("Sign Up", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF006633),)),
            SizedBox(height: 30),
            CustomTextField(lebeltext: "Full Name",),
            SizedBox(height: 20,),
            CustomTextField(lebeltext: "Email Address",),
            SizedBox(height: 20,),
            CustomTextField(lebeltext: "Password",),
            SizedBox(height: 100,),
            CustomButton(title: "Sign Up"),
            SizedBox(height: 10,),


        ],
      ),
      );
  }
}
