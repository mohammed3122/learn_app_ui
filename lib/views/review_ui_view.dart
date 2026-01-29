import 'dart:developer';

import 'package:flutter/material.dart';

class ReviewUiView extends StatelessWidget {
  const ReviewUiView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    log(screenHeight.toString());
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: .center,
          children: [
            Container(height: screenHeight * 0.2, color: Colors.green),
            Container(height: screenHeight * 0.2, color: Colors.blue),
            Container(height: screenHeight * 0.2, color: Colors.purple),
            Container(height: screenHeight * 0.2, color: Colors.orange),
            Container(height: screenHeight * 0.2, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
