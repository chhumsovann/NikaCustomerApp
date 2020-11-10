import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nikabooking/login_signup_screen/start_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/phone.png'),
        title: 'Request Ride',
        body: 'Request Ride get picked up by a nearby community driver.',
        footer: Text(''),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.grey, fontSize: 16),
          imageFlex: 1,
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/images/taxicap.png'),
        title: 'Confirm Your Driver',
        body:
            'Huge drivers network helps your find comfortable, safe and cheap ride.',
        footer: Text(''),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.grey, fontSize: 16),
          imageFlex: 1,
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/images/location.png'),
        title: 'Track your Ride',
        body:
            'Know your driver in advance and be able to view current location in real time on the map.',
        footer: Text(''),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.grey, fontSize: 16),
          imageFlex: 1,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        next: const Icon(
          Icons.arrow_right,
          size: 38,
        ),
        done: const Text(
          "Get Started",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StartScreen(),
              ));
        },
        pages: getPages(),
      ),
    );
  }
}
