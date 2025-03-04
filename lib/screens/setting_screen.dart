import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // First List Item
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.vibration),
              title: Text('Vibration', style: TextStyle(color: Colors.white)),
              subtitle: Text('Vibration once scan is done', style: TextStyle(color: Colors.white)),
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
          ),

          // Second List Item
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.add_alert),
              title: Text('Sound', style: TextStyle(color: Colors.white)),
              subtitle: Text('Play a sound when scan is done', style: TextStyle(color: Colors.white)),
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
          ),

          // **Text between lists**
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Other Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          // Third List Item (New Section)
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Dark Mode', style: TextStyle(color: Colors.white)),
              subtitle: Text('Enable dark mode', style: TextStyle(color: Colors.white)),
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
          ),
        ],
      ),
    );
  }
}
