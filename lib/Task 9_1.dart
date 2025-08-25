import 'package:flutter/material.dart';
import 'package:test/Task%209_2.dart';
import 'package:test/Task%209_4.dart';
import 'package:test/Task%209_5.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Components"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DemoCard(
              icon: Icons.list,
              title: "Lists & Cards Demo",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListsAndCardsScreen()));
              },
            ),
            SizedBox(height: 20),
            DemoCard(
              icon: Icons.touch_app,
              title: "Gestures Demo",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GesturesDemoScreen()));
              },
            ),
            SizedBox(height: 20),
            DemoCard(
              icon: Icons.widgets,
              title: "Layout Widgets Demo",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutWidgetsScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DemoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  DemoCard({required this.icon, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: Colors.purple),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: onPressed,
              child: Text("Go to $title"),
            ),
          ],
        ),
      ),
    );
  }
}