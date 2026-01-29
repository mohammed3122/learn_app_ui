import 'package:flutter/material.dart';
import 'package:learn_app_ui/views/item_detail_view.dart';
import 'package:learn_app_ui/views/tablet_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tablet Layout',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: TabletView(
        onTap: (index) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ItemDetailView(number: index);
              },
            ),
          );
        },
      ),
    );
  }
}
