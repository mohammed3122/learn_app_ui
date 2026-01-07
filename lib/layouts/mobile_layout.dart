import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_details.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        final int numIndex = index + 1;
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ListTileDetails(number: numIndex);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              height: 70,
              child: Center(
                child: Text(
                  numIndex.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
