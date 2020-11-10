import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputBorderCode extends StatelessWidget {
  const InputBorderCode({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 22,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
