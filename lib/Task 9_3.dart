import 'package:flutter/material.dart';


class ListsAndCardsScreen extends StatefulWidget {
  @override
  _ListsAndCardsScreenState createState() => _ListsAndCardsScreenState();
}

class _ListsAndCardsScreenState extends State<ListsAndCardsScreen> {
  bool isGridView = false;

  final List<Map<String, String>> items = [
    {"title": "Apple", "color": "red"},
    {"title": "Banana", "color": "yellow"},
    {"title": "Orange", "color": "orange"},
    {"title": "Mango", "color": "green"},
    {"title": "Grapes", "color": "purple"},
    {"title": "Strawberry", "color": "pink"},
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            items[index]["title"] ?? '',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: _getColor(items[index]['color']),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          items[index]["title"] ?? '',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                      ),
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
        return Colors.red.shade400;
      case 'yellow':
        return Colors.yellow.shade400;
      case 'orange':
        return Colors.orange.shade400;
      case 'green':
        return Colors.green.shade400;
      case 'purple':
        return Colors.purple.shade400;
      case 'pink':
        return Colors.pink.shade400;
      default:
        return Colors.white;
    }
  }
}