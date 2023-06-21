import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.lebeltext, required this.helptext, super.key});

  final String lebeltext;
  final String helptext;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: lebeltext, helperText: helptext),
    );
  }
}
