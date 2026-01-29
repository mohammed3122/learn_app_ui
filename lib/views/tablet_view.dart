import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';

typedef OnTap = void Function(int index);

class TabletView extends StatelessWidget {
  const TabletView({super.key, required this.onTap});
  final OnTap onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        final numIndex = index + 1;
        return GestureDetector(
          onTap: () => onTap(numIndex),
          child: Item(itemTitle: numIndex, isDetail: false),
        );
      },
    );
  }
}
