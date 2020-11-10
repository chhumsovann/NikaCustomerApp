import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(70),
//                      topRight: Radius.circular(70),
//                    ),
//                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Card(
              elevation: 5,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Create an Account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'First Name',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Last Name',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Image.asset(
                                  'assets/images/camflag.png',
                                  width: 1,
                                ),
                              ),
                              labelText: '855+  Your Number',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              labelText: 'Your Email Address',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'I have Referral code (Optional)',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
//                              prefixIcon: Icon(Icons.email_outlined),
                              labelText: 'Enter Referral Code',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Checkbox(
                                    value: checkBoxValue,
                                    activeColor: Colors.black,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        checkBoxValue = newValue;
                                      });
                                    }),
                                Text(
                                  'I agree with the',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
//                          Padding(
//                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//                            child: Container(
//                              alignment: Alignment.center,
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(30),
//                                color: Colors.black,
//                              ),
//                              child: FlatButton(
//                                child: Text(
//                                  'Continue',
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                  ),
//                                ),
//                                onPressed: () {},
//                              ),
//                            ),
//                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                  child: Text(
                                    'Term & Conditions',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black
//                                      fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  '  &  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                  child: Text(
                                    'Privacy & Policy',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black
//                                    fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
