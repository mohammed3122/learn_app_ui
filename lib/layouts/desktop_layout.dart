import 'package:flutter/material.dart';
import 'package:learn_app_ui/widgets/item_details.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  dynamic detailsNum = 'No Number now';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: GridView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              final int numIndex = index + 1;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    detailsNum = numIndex;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green,
                    height: 20,
                    child: Center(
                      child: Text(
                        numIndex.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: ListTileDetails(number: detailsNum, isItem: false),
          ),
        ),

        // ListTileDetails(number: ),
      ],
    );
  }
}
