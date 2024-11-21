import 'package:flutter/material.dart';
import 'package:flutter_project_for_retired_seniors/components/eventcard_descriptionleft.dart';
import 'package:flutter_project_for_retired_seniors/components/bottom_navigation_bar.dart'; // Import the bottom navigation bar component

class DrawingScreen extends StatefulWidget {
  const DrawingScreen({super.key});

  @override
  _DrawingScreenState createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'الرسم',
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8.0),
            Icon(
              Icons.brush,
              color: Colors.red.shade400,
              size: 30.0,
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(234, 235, 248, 1),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.0),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing1.jpeg'),
              title: 'رسم الطبيعة',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing2.jpeg'),
              title: ' الرسم من الخيال',
              date: '14 أكتوبر 2024',
              location: 'الدار البيضاء',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing3.jpeg'),
              title: ' تلوين الرسومات',
              date: '15 أكتوبر 2024',
              location: 'مراكش',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing4.jpeg'),
              title: 'الرسوم الكاريكاتورية',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing5.jpeg'),
              title: ' رسم الخط العربي',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
            EventCardWithDescLeft(
              eventImage: AssetImage('images/drawing6.jpg'),
              title: '  الرسم الرقمي',
              date: '13 أكتوبر 2024',
              location: 'الرباط',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarComponent(
        // Add the BottomNavigationBarComponent here
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
