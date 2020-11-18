class LanguageModel {
  final String code;
  final String name;
  final String assetUrl;

  LanguageModel({
    this.code,
    this.name,
    this.assetUrl,
  });
}

class TimeModel {
  final String value;
  final String text;

  TimeModel(
    this.value,
    this.text,
  );
}
