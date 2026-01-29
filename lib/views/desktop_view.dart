import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_widget.dart';
import 'package:learn_app_ui/views/tablet_view.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  dynamic detailsNum = 'No Number now';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: TabletView(
            onTap: (index) {
              setState(() {
                detailsNum = index;
              });
            },
          ),
        ),
        Expanded(
          // child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Item(itemTitle: detailsNum, isDetail: true),
        ),
        // ),
      ],
    );
  }
}
