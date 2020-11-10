import 'package:flutter/material.dart';

class ButtonWidget {
  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.black,
    child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text(
        "Select",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
