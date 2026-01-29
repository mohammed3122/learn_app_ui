import 'package:flutter/material.dart';
import 'package:learn_app_ui/views/desktop_view.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeskTop Layout', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: DesktopView(),
    );
  }
}
