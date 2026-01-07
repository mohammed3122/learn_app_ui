import 'package:flutter/material.dart';
import 'package:learn_app_ui/layouts/desktop_layout.dart';
import 'package:learn_app_ui/layouts/mobile_layout.dart';
import 'package:learn_app_ui/layouts/tablet_layout.dart';

void main() {
  runApp(LearnLayoutBuilder());
}

class LearnLayoutBuilder extends StatelessWidget {
  const LearnLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 350.0) {
              return MobileLayout();
            } else if (constraints.maxWidth < 650) {
              return TabletLayout();
            } else {
              return DeskTopLayout();
            }
          },
        ),
      ),
    );
  }
}
