import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            VerticalDivider(
              color: Colors.black,
              thickness: 2,
              width: 20,
              indent: 200,
              endIndent: 200,
            ),
          ],
        ),
      ),
    );
  }
}
