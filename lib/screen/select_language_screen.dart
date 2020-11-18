import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikabooking/config/language_config.dart';
import 'package:nikabooking/screen/introduction_screen.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  var change;
  var keep;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageConfig>(
      init: LanguageConfig(),
      builder: (_language) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 320,
                  width: 380,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
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
                            'select_language'.tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 380,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                LanguageConfig().languages.map((language) {
                              return InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Opacity(
                                            child: Image(
                                              width: 60,
                                              fit: BoxFit.contain,
                                              image:
                                                  AssetImage(language.assetUrl),
                                            ),
                                            opacity: _language.defaultLocale ==
                                                    language.code
                                                ? 1
                                                : 0.5,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            language.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Radio(
                                            activeColor: Colors.black,
                                            value: _language.defaultLocale ==
                                                language.code,
                                            onChanged: (value) {
                                              setState(() {
                                                keep = value;
                                                change = value;
                                              });
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  _language.switchLocale(language.code);
                                  keep = change;
                                  if (keep = change) {
                                    print('true');
                                  } else {
                                    print('false');
                                  }
                                },
                              );
                            }).toList(),
                          ),
                        )
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
              ],
            ),
          ),
        );
      },
    );
  }
}
