import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikabooking/screen/home_screen.dart';
import 'package:nikabooking/widget/inputBorderCode.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Verify Mobile Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                        child: Text(
                          'OTP has been sent to your +855 0963197586 Please enter it',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InputBorderCode(),
                    SizedBox(
                      width: 20,
                    ),
                    InputBorderCode(),
                    SizedBox(
                      width: 20,
                    ),
                    InputBorderCode(),
                    SizedBox(
                      width: 20,
                    ),
                    InputBorderCode(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Resend OTP in ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 60.0, end: 0),
                    duration: Duration(seconds: 60),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
//                  Container(
//                    decoration: BoxDecoration(
//                      shape: BoxShape.circle,
//                      color: Colors.black,
//                    ),
//                    child: FlatButton(
//                      child: Icon(
//                        Icons.arrow_forward,
//                        size: 32,
//                        color: Colors.white,
//                      ),
//                      onPressed: () {},
//                    ),
//                  ),
                  Container(
                    child: RaisedButton(
                      color: Colors.black,
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 32,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
