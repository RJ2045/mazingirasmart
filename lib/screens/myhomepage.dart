import 'package:flutter/material.dart';
import 'package:mazingirasmart/customwidgets/custompagewidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      greetingText: 'Hi Joe \nwhat waste do you want to sort today?',
      title: 'Waste collection service',
      titleButtonAction: () {
        
                  Navigator.pushNamed(context, '/Wastecollection');
        // Handle button press
      },
      height: 280.0,
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2, // 2 columns
          childAspectRatio: 1.2, // Square ratio for each item
          padding: const EdgeInsets.all(16.0),
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Wastecollection');
                },
                child:
                    _buildMenuItem(Icons.local_shipping, 'Waste collection')),
            _buildMenuItem(Icons.restore_from_trash, 'Locate Recycling centre'),
            _buildMenuItem(Icons.add_a_photo, 'Report an issue'),
            _buildMenuItem(Icons.book, 'Education resources'),
            _buildMenuItem(Icons.card_giftcard, 'Incentives and rewards'),
            _buildMenuItem(Icons.support_agent, 'Help and support'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData iconData, String caption) {
    return Card(
      elevation: 4, // Add elevation for drop shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 50.0,
            color: const Color(0xFF006633),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding:
                const EdgeInsets.all(8.0), // Add padding to the caption text
            child: Text(
              caption,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center align the caption text
            ),
          ),
        ],
      ),
    );
  }
}
