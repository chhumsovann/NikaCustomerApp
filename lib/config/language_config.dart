import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nikabooking/model/language_model.dart';

class LanguageConfig extends GetxController {
  final GetStorage _box = GetStorage();
  String defaultLocale = 'en';

  @override
  void onInit() {
    super.onInit();
    if (_box.read('defaultLocale') != null) {
      defaultLocale = _box.read('defaultLocale');
    }
  }

  void switchLocale(String locale) {
    defaultLocale = locale;
    Get.updateLocale(Locale(locale));
    _box.write('defaultLocale', locale);
    update();
  }

  List<LanguageModel> languages = [
    LanguageModel(
      code: 'en',
      name: 'English',
      assetUrl: 'assets/images/flag/english.jpg',
    ),
    LanguageModel(
      code: 'kh',
      name: 'Khmer',
      assetUrl: 'assets/images/flag/khmer.jpg',
    ),
  ];
}
