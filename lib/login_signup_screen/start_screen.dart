import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nikabooking/login_signup_screen/signup_screenNew.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final ValueChanged _onChanged = (val) => print(val);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 340,
                  height: 480,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                        child: Text(
                          'Fantastic, are you ready to get fetched?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Please enter your number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: FormBuilderPhoneField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          attribute: 'phone_number',
                          initialValue: '+25443534543567',
                          // defaultSelectedCountryIsoCode: 'KE',
                          cursorColor: Colors.black,
                          // style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onChanged: _onChanged,
                          priorityListByIsoCode: ['US'],
                          validators: [
                            FormBuilderValidators.required(
                                errorText: 'This field required')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          height: 40,
                          width: 100,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Done',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 50, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "You don't have a account?",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreenNew(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
