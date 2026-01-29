import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemTitle, required this.isDetail});

  final dynamic itemTitle;
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),

      height: 150,
      width: 150,
      child: Center(
        child: Text(
          textAlign: .center,
          itemTitle.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: isDetail
                ? itemTitle == 'No Number now'
                      ? 30
                      : 100
                : 100,
          ),
        ),
      ),
    );
  }
}
