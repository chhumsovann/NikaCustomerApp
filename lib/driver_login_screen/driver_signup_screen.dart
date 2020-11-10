import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DriverSignUpScreen extends StatefulWidget {
  @override
  _DriverSignUpScreenState createState() => _DriverSignUpScreenState();
}

class _DriverSignUpScreenState extends State<DriverSignUpScreen> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final ValueChanged _onChanged = (val) => print(val);
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Personal Verification',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Please upload required documents.',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Get verified to start Riding',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.person_pin_rounded,
                                  size: 80,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FormBuilderTextField(
                              attribute: "FirstName",
                              decoration: InputDecoration(
                                labelText: "First Name",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
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
                            Row(
                              children: <Widget>[
                                Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                    Image.asset('assets/images/id-card.png'),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Upload from of NRIC',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                    Image.asset('assets/images/id-card.png'),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Upload Back of NRIC',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
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
