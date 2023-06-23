import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.title, this.outline, super.key,});
  final String title;
  final bool? outline;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 70,
      decoration: outline == true? BoxDecoration(
        border: Border.all(color: const Color(0xFF006633),),
        borderRadius: BorderRadius.circular(30),
      ):
      BoxDecoration(
        color: const Color(0xFF006633),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 20, color: outline == true? const Color(0xFF006633): Colors.white)),
          Icon(Icons.arrow_forward_outlined, color: outline == true? const Color(0xFF006633): Colors.white)
        ],
      ),
    );
  }
}
