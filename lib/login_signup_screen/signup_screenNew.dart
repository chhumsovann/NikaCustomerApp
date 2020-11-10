import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nikabooking/login_signup_screen/verification_screen.dart';

class SignUpScreenNew extends StatefulWidget {
  @override
  _SignUpScreenNewState createState() => _SignUpScreenNewState();
}

class _SignUpScreenNewState extends State<SignUpScreenNew> {
  final ValueChanged _onChanged = (val) => print(val);
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
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
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Card(
              elevation: 5,
              child: ListView(
                children: <Widget>[
                  FormBuilder(
                    key: _fbKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
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
                            FormBuilderTextField(
                              attribute: "FirstName",
                              decoration: InputDecoration(
                                labelText: "First Name",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(),
                              ),
                              validators: [
                                FormBuilderValidators.numeric(
                                    errorText: "errorText"),
                                FormBuilderValidators.max(70),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FormBuilderTextField(
                              attribute: "LastName",
                              decoration: InputDecoration(
                                labelText: "Last Name",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(),
                              ),
                              validators: [
                                FormBuilderValidators.numeric(
                                    errorText: "errorText"),
                                FormBuilderValidators.max(70),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FormBuilderPhoneField(
                              attribute: 'phone_number',
                              initialValue: '+25443534543567',
                              // defaultSelectedCountryIsoCode: 'KE',
                              cursorColor: Colors.black,
                              // style: TextStyle(color: Colors.black, fontSize: 18),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone Number',
                              ),
                              onChanged: _onChanged,
                              priorityListByIsoCode: ['US'],
                              validators: [
                                FormBuilderValidators.required(
                                    errorText: 'This field required')
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FormBuilderTextField(
                              attribute: "Email",
                              decoration: InputDecoration(
                                labelText: "Your Emial",
                                prefixIcon: Icon(Icons.email_outlined),
                                border: OutlineInputBorder(),
                              ),
                              validators: [
                                FormBuilderValidators.numeric(
                                    errorText: "errorText"),
                                FormBuilderValidators.max(70),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'I have Referral code (Optional)',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            FormBuilderTextField(
                              attribute: "Code",
                              decoration: InputDecoration(
                                labelText: "Enter Referral Code",
                                border: OutlineInputBorder(),
                              ),
                              validators: [
                                FormBuilderValidators.numeric(
                                    errorText: "errorText"),
                                FormBuilderValidators.max(70),
                              ],
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
                            Container(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          VerificationScreen(),
                                    ),
                                  );
                                },
                                color: Colors.black,
                              ),
                            ),
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
