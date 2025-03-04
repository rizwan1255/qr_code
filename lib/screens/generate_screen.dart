import 'package:flutter/material.dart';
import 'package:qr_code/screens/generate_code_screen.dart';

class GenerateScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"icon": Icons.text_fields, "label": "Text"},
    {"icon": Icons.language, "label": "Website"},
    {"icon": Icons.wifi, "label": "Wi-Fi"},
    {"icon": Icons.event, "label": "Event"},
    {"icon": Icons.contact_phone, "label": "Contact"},
    {"icon": Icons.business, "label": "Business"},
    {"icon": Icons.location_on, "label": "Location"},
    {"icon": Icons.whatshot, "label": "WhatsApp"},
    {"icon": Icons.email, "label": "Email"},
    {"icon": Icons.email, "label": "Twitter"},
    {"icon": Icons.camera_alt, "label": "Instagram"},
    {"icon": Icons.phone, "label": "Telephone"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      appBar: AppBar(
        title: Text('Generate QR Code'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'generate_code') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenerateCodeScreen()),
                );
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'generate_code',
                child: Text('Generate Code'),
              ),
            ],
            icon: Icon(Icons.menu),
          ),
        ],
        backgroundColor: Colors.white,
      ),

      body: Center(
        child: Container(
          width: 320,
          height: 600,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(20),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return buildIconButton(items[index]["icon"], items[index]["label"]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none, // To allow text container to go outside
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5), // Transparent black
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.orange, width: 2), // Orange border
              ),
              child: Center(
                child: Icon(icon, color: Colors.blue, size: 35), // Blue Icon
              ),
            ),
            Positioned(
              bottom: -10, // Stick text below border
              left: 6,
              right: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.orange, // Yellow background for text
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 7,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
