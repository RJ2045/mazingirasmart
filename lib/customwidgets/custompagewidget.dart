import 'package:flutter/material.dart';

class CustomPageWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final double height;
  final String? greetingText;
  final IconData? titleIcon;
  final VoidCallback? titleButtonAction;

  const CustomPageWidget({
    super.key,
    required this.title,
    required this.child,
    this.height = 200.0,
    this.greetingText,
    this.titleIcon,
    this.titleButtonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopContainer(context),
          Expanded(child: child),
          _buildBottomNavigationBar(context),
        ],
      ),
    );
  }

  Widget _buildTopContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xFF006633),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16,),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (greetingText != null) ...[
              Text(
                greetingText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            const SizedBox(
              height: 10,
            ),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (titleIcon != null) ...[
                    Icon(
                      titleIcon,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8.0),
                  ],
                  Flexible(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  if (titleButtonAction != null) ...[
                    ElevatedButton(
                      onPressed: titleButtonAction,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Schedule Now',
                        style: TextStyle(color: Color(0xFF006633), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_shipping),
          label: 'schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo),
          label: 'Report',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      backgroundColor: const Color(0xFF006633),
      selectedItemColor: Colors.black, // Change the color to your desired color
      unselectedItemColor: const Color(0xFF006633),
      currentIndex: 0, // Change the index to the desired default index
      onTap: (index) {
        // Handle navigation to different screens based on the index
        // You can use a navigation package like 'flutter_bloc' or 'provider' for better navigation management
      },
    );
  }
}
