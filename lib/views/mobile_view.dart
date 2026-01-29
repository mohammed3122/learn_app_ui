import 'package:flutter/material.dart';
import 'package:learn_app_ui/views/item_detail_view.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

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
                  return ItemDetailView(number: numIndex);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Item(itemTitle: numIndex, isDetail: false),
          ),
        );
      },
    );
  }
}
