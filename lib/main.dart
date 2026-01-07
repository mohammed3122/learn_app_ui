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
            if (constranis.maxWidth <= 350.0) {
              return MobileLayout();
            } else if (350.0 < constranis.maxWidth &&
                constranis.maxWidth <= 650) {
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
