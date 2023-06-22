import 'package:flutter/material.dart';
import 'package:mazingirasmart/customwidgets/custombutton.dart';
import 'package:mazingirasmart/customwidgets/customtextfield.dart';
import 'package:mazingirasmart/customwidgets/samplepage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              'Lets continue making our environments clean.',
              style: TextStyle(color: Color(0xFF006633), fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text("Sign In", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF006633),)),
            SizedBox(height: 30,),
            CustomTextField(lebeltext: "Email Address",),
            SizedBox(height: 20,),
            CustomTextField(lebeltext: "Password",),
            SizedBox(height: 100,),
            CustomButton(title: "Sign In"),
            SizedBox(height: 20,),


        ],
      ),
      );
  }
}
