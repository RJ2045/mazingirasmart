import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.lebeltext, this.helptext, super.key});

  final String lebeltext;
  final String? helptext;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: lebeltext,
        labelStyle: const TextStyle(color: Colors.grey),
        helperText: helptext,
        // border: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
          
        // ),
        helperStyle: const TextStyle(color: Color(0xFF006633)), // Change helper text color
        filled: true,
        fillColor: Colors.grey[200], // Change text field background color
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.black12), // Change border color
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.black12), // Change enabled border color
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Color(0xFF006633)), // Change focused border color
        ),
      ),
    );
    
    
    // TextField(
    //   decoration: InputDecoration(
    //       labelText: lebeltext, helperText: helptext),
    // );
  }
}
