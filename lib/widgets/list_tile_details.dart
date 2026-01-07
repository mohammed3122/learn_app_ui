import 'package:flutter/material.dart';

class ListTileDetails extends StatelessWidget {
  const ListTileDetails({super.key, required this.number});
  final dynamic number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn Layout Builder',
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
