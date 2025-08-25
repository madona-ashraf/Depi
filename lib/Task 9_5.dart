import 'package:flutter/material.dart';


class LayoutWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Column Example
            Text('Column Example:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                  child: Icon(Icons.wb_sunny, color: Colors.white),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Icon(Icons.wb_sunny, color: Colors.white),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 30,
                  child: Icon(Icons.nights_stay, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Container Examples
            Text('Container Examples:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Gradient Container',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Bordered Container with padding'),
            ),
            SizedBox(height: 30),

            // Additional UI Widgets
            Text('Additional UI Widgets:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.purple)),
                IconButton(onPressed: () {}, icon: Icon(Icons.location_on, color: Colors.blue)),
                IconButton(onPressed: () {}, icon: Icon(Icons.directions_car, color: Colors.green)),
              ],
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(value: 0.6),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 30),

            // Notification Badge
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Notification Badge',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}