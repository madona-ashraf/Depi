import 'package:flutter/material.dart';


class GesturesDemoScreen extends StatefulWidget {
  @override
  _GesturesDemoScreenState createState() => _GesturesDemoScreenState();
}

class _GesturesDemoScreenState extends State<GesturesDemoScreen> {
  bool isTapMode = true;

  // To track the size of the icon
  double iconSize = 100.0;

  // Switch mode between Tap and Drag
  void toggleMode() {
    setState(() {
      isTapMode = !isTapMode;
      iconSize = 100.0; // Reset icon size when toggling
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Mode Toggle
            Align(
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: toggleMode,
                child: Text(isTapMode ? 'TAP MODE' : 'DRAG MODE'),
              ),
            ),
            SizedBox(height: 20),
            // Gesture Interaction Instructions
            Text(
              'Try gestures!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            // Gesture Action Area
            GestureDetector(
              onTap: isTapMode
                  ? () {
                      // Action for Tap
                      print("Tapped!");
                    }
                  : null,
              onPanUpdate: isTapMode
                  ? null
                  : (details) {
                      setState(() {
                        iconSize = iconSize + details.localPosition.dy / 5;
                      });
                    },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: iconSize,
                width: iconSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(
                  isTapMode ? Icons.touch_app : Icons.star,
                  size: iconSize / 2,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 40),
            // Other circle icon (for demonstration)
            GestureDetector(
              onTap: () {
                print("Star icon tapped!");
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}