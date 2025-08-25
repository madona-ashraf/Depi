import 'package:flutter/material.dart';

class ListsAndCardsScreen extends StatefulWidget {
  @override
  _ListsAndCardsScreenState createState() => _ListsAndCardsScreenState();
}

class _ListsAndCardsScreenState extends State<ListsAndCardsScreen> {
  bool isGridView = false;

  final List<Map<String, String>> items = [
    {"title": "Apple", "description": "This is Apple description", "color": "red"},
    {"title": "Banana", "description": "This is Banana description", "color": "yellow"},
    {"title": "Orange", "description": "This is Orange description", "color": "orange"},
    {"title": "Mango", "description": "This is Mango description", "color": "green"},
    {"title": "Grapes", "description": "This is Grapes description", "color": "purple"},
    {"title": "Strawberry", "description": "This is Strawberry description", "color": "pink"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists & Cards'),
        actions: [
          Switch(
            value: isGridView,
            onChanged: (value) {
              setState(() {
                isGridView = value;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isGridView
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: _getColor(items[index]['color']),
                    child: ListTile(
                      title: Text('${index + 1}. ${items[index]["title"]}'),
                      subtitle: Text(items[index]["description"] ?? ''),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
              )
            : ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: _getColor(items[index]['color']),
                    child: ListTile(
                      title: Text('${index + 1}. ${items[index]["title"]}'),
                      subtitle: Text(items[index]["description"] ?? ''),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Color _getColor(String? colorName) {
    switch (colorName) {
      case 'red':
        return Colors.red.shade300;
      case 'yellow':
        return Colors.yellow.shade300;
      case 'orange':
        return Colors.orange.shade300;
      case 'green':
        return Colors.green.shade300;
      case 'purple':
        return Colors.purple.shade300;
      case 'pink':
        return Colors.pink.shade300;
      default:
        return Colors.white;
    }
  }
}