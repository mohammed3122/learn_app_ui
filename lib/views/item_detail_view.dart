import 'package:flutter/material.dart';
import 'package:learn_app_ui/views/review_ui_view.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView({super.key, required this.number});
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
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ReviewUiView();
                },
              ),
            );
          },
          child: Item(itemTitle: number, isDetail: true),
        ),
      ),
    );
  }
}
