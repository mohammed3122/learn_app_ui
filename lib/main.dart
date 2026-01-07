import 'package:flutter/material.dart';
import 'package:learn_app_ui/layouts/desktop_layout.dart';
import 'package:learn_app_ui/layouts/mobile_layout.dart';
import 'package:learn_app_ui/layouts/tablet_layout.dart';

void main() {
  runApp(LeanrLayoutBuilder());
}

class LeanrLayoutBuilder extends StatelessWidget {
  const LeanrLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constranis) {
            if (constranis.maxWidth <= 370.0) {
              return MobileLayout();
            } else if (645.0 > constranis.maxWidth &&
                constranis.maxWidth >= 370.0) {
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
