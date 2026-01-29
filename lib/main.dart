import 'package:flutter/material.dart';
import 'package:learn_app_ui/helper/adaptive_layout.dart';
import 'package:learn_app_ui/layouts/desktop_layout.dart';
import 'package:learn_app_ui/layouts/mobile_layout.dart';
import 'package:learn_app_ui/layouts/tablet_layout.dart';

void main() {
  runApp(LearnLayoutBuilder());
}

// yuyuy
class LearnLayoutBuilder extends StatelessWidget {
  const LearnLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdaptiveLayout(
        mobileLayout: (BuildContext context) => MobileLayout(),
        tabletLayout: (BuildContext context) => TabletLayout(),
        desktopLayout: (BuildContext context) => DeskTopLayout(),
      ),
    );
  }
}
