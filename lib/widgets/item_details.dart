import 'package:flutter/material.dart';

class ListTileDetails extends StatelessWidget {
  const ListTileDetails({
    super.key,
    required this.number,
    required this.isItem,
  });
  final dynamic number;
  final bool isItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isItem ? 'Learn Layout Builder' : 'DeskTop Layout ',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 130,
          width: 100,
          color: Colors.green,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              number.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: number == 'No Number now' ? 20 : 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
