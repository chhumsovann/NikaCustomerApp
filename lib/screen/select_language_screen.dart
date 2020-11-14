import 'package:flutter/material.dart';
import 'package:nikabooking/screen/introduction_screen.dart';

enum SingingCharacter { Khmer, English }

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  SingingCharacter language = SingingCharacter.Khmer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              height: 240,
              width: 380,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Select Language',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Khmer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              trailing: Radio(
                                activeColor: Colors.black,
                                value: SingingCharacter.Khmer,
                                groupValue: language,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    language = value;
                                  });
                                },
                              ),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                'English',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              trailing: Radio(
                                activeColor: Colors.black,
                                value: SingingCharacter.English,
                                groupValue: language,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    language = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'Select',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreen(),
                    ),
                  );
                },
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 145,
            ),
            Container(
              height: 5,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
