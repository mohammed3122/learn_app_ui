import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';
import 'package:learn_app_ui/widgets/item_details.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taplet Layout', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          final int numIndex = index + 1;
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ListTileDetails(number: numIndex, isItem: true);
                  },
                ),
              );
            },
            child: Item(numIndex: numIndex),
          );
        },
      ),
    );
  }
}
