import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'History Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 65,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Text(
                          'Scan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Text(
                          'Create',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10), // Adds some space around the container
              padding: EdgeInsets.all(10), // Adds inner padding
              height: 300, // Adjust height as needed
              width: double.infinity, // Full width
              decoration: BoxDecoration(
                color: Colors.black26, // Black background
                borderRadius: BorderRadius.circular(5), // Rounded edges for better UI
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Adds a shadow for depth
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ListView.builder(
                itemCount: 5, // Number of ListTiles
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // Space between items
                    decoration: BoxDecoration(
                      color: Colors.black54, // Slightly different shade for each item
                      borderRadius: BorderRadius.circular(5), // Rounded edges
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.qr_code_2,
                        color: Colors.orange,
                        size: 40,
                      ),
                      title: Text(
                        'http://itunes.com',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      subtitle: Text(
                        'Data',
                        style: TextStyle(color: Colors.white, fontSize: 7),
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.delete_forever,
                            color: Colors.orange,
                            size: 25,
                          ),
                          Text(
                            '16 Dec 2022, 9:30 min',
                            style: TextStyle(color: Colors.white, fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}