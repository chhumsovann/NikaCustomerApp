import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikabooking/config/language_config.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageConfig>(
      init: LanguageConfig(),
      builder: (_language) {
        return Scaffold(
          appBar: AppBar(
            title: Text('language'.tr),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'select_language'.tr,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: LanguageConfig().languages.map((language) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Opacity(
                              child: Image(
                                width: 60,
                                fit: BoxFit.contain,
                                image: AssetImage(language.assetUrl),
                              ),
                              opacity: _language.defaultLocale == language.code
                                  ? 1
                                  : 0.5,
                            ),
                            SizedBox(height: 5),
                            Text(
                              language.name,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        _language.switchLocale(language.code);
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
