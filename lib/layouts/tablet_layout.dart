import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';
import 'package:learn_app_ui/widgets/item_details.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    log(width.toString());
    return GridView.builder(
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
                  return ListTileDetails(number: numIndex);
                },
              ),
            );
          },
          child: Item(numIndex: numIndex),
        );
      },
    );
  }
}
