import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final data;
  const TopBar({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.asset(
              data,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
