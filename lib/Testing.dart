import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';

class CountDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularCountdown Example'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TimeCircularCountdown(
              unit: CountdownUnit.second,
              countdownTotal: 30,
              diameter: 250,
              strokeWidth: 45,
              countdownCurrentColor: Colors.yellowAccent,
              countdownRemainingColor: Colors.green,
              countdownTotalColor: Colors.red,
              textStyle: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            CircularCountdown(
              countdownTotal: 10,
              countdownRemaining: 7,
            ),
          ],
        ),
      ),
    );
  }
}
