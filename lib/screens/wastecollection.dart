import 'package:flutter/material.dart';
import 'package:mazingirasmart/customwidgets/custompagewidget.dart';
import 'package:mazingirasmart/customwidgets/customtextfield.dart';

import '../customwidgets/custombutton.dart';

class WasteCollection extends StatefulWidget {
  const WasteCollection({Key? key});

  @override
  _WasteCollectionState createState() => _WasteCollectionState();
}

class _WasteCollectionState extends State<WasteCollection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isRecurring = false;

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      title: 'Request waste collection service',
      titleIcon: Icons.local_shipping,
      height: 200.0,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(
                      'assets/images/trashtruck.png',
                      fit: BoxFit.cover, // Make the image fill the container
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                const CustomTextField(
                  lebeltext: "Full Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  lebeltext: "Phone number",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  lebeltext: "Physical Address",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        lebeltext: "Date",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomTextField(
                        lebeltext: "Time",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const CustomTextField(
                  lebeltext: "Description",
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text('Recurring Schedule'),
                    const SizedBox(width: 8.0),
                    Switch(
                      value: _isRecurring,
                      onChanged: (value) {
                        setState(() {
                          _isRecurring = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    CustomButton(title: "Submit"),
                    // Expanded(
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       if (_formKey.currentState!.validate()) {
                    //         // Perform form submission logic here
                    //       }
                    //     },
                    //     child: const Text('Submit'),
                    //   ),
                    // ),
                    SizedBox(width: 16.0),
                    CustomButton(title: "Reset", outline: true,),
                    // Expanded(
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       _formKey.currentState!.reset();
                    //     },
                    //     child: const Text('Reset'),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
