import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.numIndex});

  final int numIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green,
        height: 20,
        child: Center(
          child: Text(
            numIndex.toString(),
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
